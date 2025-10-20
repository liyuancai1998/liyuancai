#include "global.h"
#include "frontier_util.h"
#include "battle_setup.h"
#include "berry.h"
#include "clock.h"
#include "coins.h"
#include "contest.h"
#include "contest_util.h"
#include "contest_painting.h"
#include "data.h"
#include "decoration.h"
#include "decoration_inventory.h"
#include "event_data.h"
#include "field_door.h"
#include "field_effect.h"
#include "event_object_lock.h"
#include "event_object_movement.h"
#include "field_message_box.h"
#include "field_player_avatar.h"
#include "field_screen_effect.h"
#include "field_specials.h"
#include "field_tasks.h"
#include "field_weather.h"
#include "fieldmap.h"
#include "item.h"
#include "lilycove_lady.h"
#include "main.h"
#include "menu.h"
#include "money.h"
#include "mystery_event_script.h"
#include "palette.h"
#include "party_menu.h"
#include "pokemon_storage_system.h"
#include "random.h"
#include "overworld.h"
#include "rotating_tile_puzzle.h"
#include "rtc.h"
#include "script.h"
#include "script_menu.h"
#include "script_movement.h"
#include "script_pokemon_util.h"
#include "shop.h"
#include "slot_machine.h"
#include "sound.h"
#include "string_util.h"
#include "text.h"
#include "text_window.h"
#include "trainer_see.h"
#include "tv.h"
#include "window.h"
#include "list_menu.h"
#include "malloc.h"
#include "gpu_regs.h"
#include "decompress.h"
#include "scanline_effect.h"
#include "sound.h"
#include "sprite.h"
#include "trainer_pokemon_sprites.h"
#include "constants/event_objects.h"

typedef u16 (*SpecialFunc)(void);
typedef void (*NativeFunc)(struct ScriptContext *ctx);

EWRAM_DATA const u8 *gRamScriptRetAddr = NULL;
static EWRAM_DATA u32 sAddressOffset = 0; // For relative addressing in vgoto etc., used by saved scripts (e.g. Mystery Event)
static EWRAM_DATA u16 sPauseCounter = 0;
static EWRAM_DATA u16 sMovingNpcId = 0;
static EWRAM_DATA u16 sMovingNpcMapGroup = 0;
static EWRAM_DATA u16 sMovingNpcMapNum = 0;
static EWRAM_DATA u16 sFieldEffectScriptId = 0;

static u8 sBrailleWindowId;
static bool8 sIsScriptedWildDouble;

extern const SpecialFunc gSpecials[];
extern const u8 *gStdScripts[];
extern const u8 *gStdScripts_End[];

static void CloseBrailleWindow(void);
static void DynamicMultichoiceSortList(struct ListMenuItem *items, u32 count);

// This is defined in here so the optimizer can't see its value when compiling
// script.c.
void * const gNullScriptPtr = NULL;

static const u8 sScriptConditionTable[6][3] =
{
//  <  =  >
    {1, 0, 0}, // <
    {0, 1, 0}, // =
    {0, 0, 1}, // >
    {1, 1, 0}, // <=
    {0, 1, 1}, // >=
    {1, 0, 1}, // !=
};

static u8 *const sScriptStringVars[] =
{
    gStringVar1,
    gStringVar2,
    gStringVar3,
};

bool8 ScrCmd_nop(struct ScriptContext *ctx)
{
    return FALSE;
}

bool8 ScrCmd_nop1(struct ScriptContext *ctx)
{
    return FALSE;
}

bool8 ScrCmd_end(struct ScriptContext *ctx)
{
    StopScript(ctx);
    return FALSE;
}

bool8 ScrCmd_gotonative(struct ScriptContext *ctx)
{
    bool8 (*addr)(void) = (bool8 (*)(void))ScriptReadWord(ctx);

    SetupNativeScript(ctx, addr);
    return TRUE;
}

bool8 ScrCmd_special(struct ScriptContext *ctx)
{
    u16 index = ScriptReadHalfword(ctx);

    gSpecials[index]();
    return FALSE;
}

bool8 ScrCmd_specialvar(struct ScriptContext *ctx)
{
    u16 *var = GetVarPointer(ScriptReadHalfword(ctx));

    *var = gSpecials[ScriptReadHalfword(ctx)]();
    return FALSE;
}

bool8 ScrCmd_callnative(struct ScriptContext *ctx)
{
    NativeFunc func = (NativeFunc)ScriptReadWord(ctx);

    func(ctx);
    return FALSE;
}

bool8 ScrCmd_waitstate(struct ScriptContext *ctx)
{
    ScriptContext_Stop();
    return TRUE;
}

bool8 ScrCmd_goto(struct ScriptContext *ctx)
{
    const u8 *ptr = (const u8 *)ScriptReadWord(ctx);

    ScriptJump(ctx, ptr);
    return FALSE;
}

bool8 ScrCmd_return(struct ScriptContext *ctx)
{
    ScriptReturn(ctx);
    return FALSE;
}

bool8 ScrCmd_call(struct ScriptContext *ctx)
{
    const u8 *ptr = (const u8 *)ScriptReadWord(ctx);

    ScriptCall(ctx, ptr);
    return FALSE;
}

bool8 ScrCmd_goto_if(struct ScriptContext *ctx)
{
    u8 condition = ScriptReadByte(ctx);
    const u8 *ptr = (const u8 *)ScriptReadWord(ctx);

    if (sScriptConditionTable[condition][ctx->comparisonResult] == 1)
        ScriptJump(ctx, ptr);
    return FALSE;
}

bool8 ScrCmd_call_if(struct ScriptContext *ctx)
{
    u8 condition = ScriptReadByte(ctx);
    const u8 *ptr = (const u8 *)ScriptReadWord(ctx);

    if (sScriptConditionTable[condition][ctx->comparisonResult] == 1)
        ScriptCall(ctx, ptr);
    return FALSE;
}

bool8 ScrCmd_setvaddress(struct ScriptContext *ctx)
{
    u32 addr1 = (u32)ctx->scriptPtr - 1;
    u32 addr2 = ScriptReadWord(ctx);

    sAddressOffset = addr2 - addr1;
    return FALSE;
}

bool8 ScrCmd_vgoto(struct ScriptContext *ctx)
{
    u32 addr = ScriptReadWord(ctx);

    ScriptJump(ctx, (u8 *)(addr - sAddressOffset));
    return FALSE;
}

bool8 ScrCmd_vcall(struct ScriptContext *ctx)
{
    u32 addr = ScriptReadWord(ctx);

    ScriptCall(ctx, (u8 *)(addr - sAddressOffset));
    return FALSE;
}

bool8 ScrCmd_vgoto_if(struct ScriptContext *ctx)
{
    u8 condition = ScriptReadByte(ctx);
    const u8 *ptr = (const u8 *)(ScriptReadWord(ctx) - sAddressOffset);

    if (sScriptConditionTable[condition][ctx->comparisonResult] == 1)
        ScriptJump(ctx, ptr);
    return FALSE;
}

bool8 ScrCmd_vcall_if(struct ScriptContext *ctx)
{
    u8 condition = ScriptReadByte(ctx);
    const u8 *ptr = (const u8 *)(ScriptReadWord(ctx) - sAddressOffset);

    if (sScriptConditionTable[condition][ctx->comparisonResult] == 1)
        ScriptCall(ctx, ptr);
    return FALSE;
}

bool8 ScrCmd_gotostd(struct ScriptContext *ctx)
{
    u8 index = ScriptReadByte(ctx);
    const u8 **ptr = &gStdScripts[index];

    if (ptr < gStdScripts_End)
        ScriptJump(ctx, *ptr);
    return FALSE;
}

bool8 ScrCmd_callstd(struct ScriptContext *ctx)
{
    u8 index = ScriptReadByte(ctx);
    const u8 **ptr = &gStdScripts[index];

    if (ptr < gStdScripts_End)
        ScriptCall(ctx, *ptr);
    return FALSE;
}

bool8 ScrCmd_gotostd_if(struct ScriptContext *ctx)
{
    u8 condition = ScriptReadByte(ctx);
    u8 index = ScriptReadByte(ctx);

    if (sScriptConditionTable[condition][ctx->comparisonResult] == 1)
    {
        const u8 **ptr = &gStdScripts[index];
        if (ptr < gStdScripts_End)
            ScriptJump(ctx, *ptr);
    }
    return FALSE;
}

bool8 ScrCmd_callstd_if(struct ScriptContext *ctx)
{
    u8 condition = ScriptReadByte(ctx);
    u8 index = ScriptReadByte(ctx);

    if (sScriptConditionTable[condition][ctx->comparisonResult] == 1)
    {
        const u8 **ptr = &gStdScripts[index];
        if (ptr < gStdScripts_End)
            ScriptCall(ctx, *ptr);
    }
    return FALSE;
}

bool8 ScrCmd_returnram(struct ScriptContext *ctx)
{
    ScriptJump(ctx, gRamScriptRetAddr);
    return FALSE;
}

bool8 ScrCmd_endram(struct ScriptContext *ctx)
{
    ClearRamScript();
    StopScript(ctx);
    return TRUE;
}

bool8 ScrCmd_setmysteryeventstatus(struct ScriptContext *ctx)
{
    u8 status = ScriptReadByte(ctx);

    SetMysteryEventScriptStatus(status);
    return FALSE;
}

bool8 ScrCmd_loadword(struct ScriptContext *ctx)
{
    u8 index = ScriptReadByte(ctx);

    ctx->data[index] = ScriptReadWord(ctx);
    return FALSE;
}

bool8 ScrCmd_loadbytefromptr(struct ScriptContext *ctx)
{
    u8 index = ScriptReadByte(ctx);

    ctx->data[index] = *(const u8 *)ScriptReadWord(ctx);
    return FALSE;
}

bool8 ScrCmd_setptr(struct ScriptContext *ctx)
{
    u8 value = ScriptReadByte(ctx);

    *(u8 *)ScriptReadWord(ctx) = value;
    return FALSE;
}

bool8 ScrCmd_loadbyte(struct ScriptContext *ctx)
{
    u8 index = ScriptReadByte(ctx);

    ctx->data[index] = ScriptReadByte(ctx);
    return FALSE;
}

bool8 ScrCmd_setptrbyte(struct ScriptContext *ctx)
{
    u8 index = ScriptReadByte(ctx);

    *(u8 *)ScriptReadWord(ctx) = ctx->data[index];
    return FALSE;
}

bool8 ScrCmd_copylocal(struct ScriptContext *ctx)
{
    u8 destIndex = ScriptReadByte(ctx);
    u8 srcIndex = ScriptReadByte(ctx);

    ctx->data[destIndex] = ctx->data[srcIndex];
    return FALSE;
}

bool8 ScrCmd_copybyte(struct ScriptContext *ctx)
{
    u8 *ptr = (u8 *)ScriptReadWord(ctx);
    *ptr = *(const u8 *)ScriptReadWord(ctx);
    return FALSE;
}

bool8 ScrCmd_setvar(struct ScriptContext *ctx)
{
    u16 *ptr = GetVarPointer(ScriptReadHalfword(ctx));
    *ptr = ScriptReadHalfword(ctx);
    return FALSE;
}

bool8 ScrCmd_copyvar(struct ScriptContext *ctx)
{
    u16 *ptr = GetVarPointer(ScriptReadHalfword(ctx));
    *ptr = *GetVarPointer(ScriptReadHalfword(ctx));
    return FALSE;
}

bool8 ScrCmd_setorcopyvar(struct ScriptContext *ctx)
{
    u16 *ptr = GetVarPointer(ScriptReadHalfword(ctx));
    *ptr = VarGet(ScriptReadHalfword(ctx));
    return FALSE;
}

u8 Compare(u16 a, u16 b)
{
    if (a < b)
        return 0;
    if (a == b)
        return 1;
    return 2;
}

bool8 ScrCmd_compare_local_to_local(struct ScriptContext *ctx)
{
    const u8 value1 = ctx->data[ScriptReadByte(ctx)];
    const u8 value2 = ctx->data[ScriptReadByte(ctx)];

    ctx->comparisonResult = Compare(value1, value2);
    return FALSE;
}

bool8 ScrCmd_compare_local_to_value(struct ScriptContext *ctx)
{
    const u8 value1 = ctx->data[ScriptReadByte(ctx)];
    const u8 value2 = ScriptReadByte(ctx);

    ctx->comparisonResult = Compare(value1, value2);
    return FALSE;
}

bool8 ScrCmd_compare_local_to_ptr(struct ScriptContext *ctx)
{
    const u8 value1 = ctx->data[ScriptReadByte(ctx)];
    const u8 value2 = *(const u8 *)ScriptReadWord(ctx);

    ctx->comparisonResult = Compare(value1, value2);
    return FALSE;
}

bool8 ScrCmd_compare_ptr_to_local(struct ScriptContext *ctx)
{
    const u8 value1 = *(const u8 *)ScriptReadWord(ctx);
    const u8 value2 = ctx->data[ScriptReadByte(ctx)];

    ctx->comparisonResult = Compare(value1, value2);
    return FALSE;
}

bool8 ScrCmd_compare_ptr_to_value(struct ScriptContext *ctx)
{
    const u8 value1 = *(const u8 *)ScriptReadWord(ctx);
    const u8 value2 = ScriptReadByte(ctx);

    ctx->comparisonResult = Compare(value1, value2);
    return FALSE;
}

bool8 ScrCmd_compare_ptr_to_ptr(struct ScriptContext *ctx)
{
    const u8 value1 = *(const u8 *)ScriptReadWord(ctx);
    const u8 value2 = *(const u8 *)ScriptReadWord(ctx);

    ctx->comparisonResult = Compare(value1, value2);
    return FALSE;
}

bool8 ScrCmd_compare_var_to_value(struct ScriptContext *ctx)
{
    const u16 value1 = *GetVarPointer(ScriptReadHalfword(ctx));
    const u16 value2 = ScriptReadHalfword(ctx);

    ctx->comparisonResult = Compare(value1, value2);
    return FALSE;
}

bool8 ScrCmd_compare_var_to_var(struct ScriptContext *ctx)
{
    const u16 *ptr1 = GetVarPointer(ScriptReadHalfword(ctx));
    const u16 *ptr2 = GetVarPointer(ScriptReadHalfword(ctx));

    ctx->comparisonResult = Compare(*ptr1, *ptr2);
    return FALSE;
}

// Note: addvar doesn't support adding from a variable in vanilla. If you were to
// add a VarGet() to the above, make sure you change the `addvar VAR_*, -1`
// in the contest scripts to `subvar VAR_*, 1`, else contests will break.
bool8 ScrCmd_addvar(struct ScriptContext *ctx)
{
    u16 *ptr = GetVarPointer(ScriptReadHalfword(ctx));
    *ptr += ScriptReadHalfword(ctx);
    return FALSE;
}

bool8 ScrCmd_subvar(struct ScriptContext *ctx)
{
    u16 *ptr = GetVarPointer(ScriptReadHalfword(ctx));
    *ptr -= VarGet(ScriptReadHalfword(ctx));
    return FALSE;
}

bool8 ScrCmd_random(struct ScriptContext *ctx)
{
    u16 max = VarGet(ScriptReadHalfword(ctx));

    gSpecialVar_Result = Random() % max;
    return FALSE;
}

bool8 ScrCmd_additem(struct ScriptContext *ctx)
{
    u16 itemId = VarGet(ScriptReadHalfword(ctx));
    u32 quantity = VarGet(ScriptReadHalfword(ctx));

    gSpecialVar_Result = AddBagItem(itemId, quantity);
    return FALSE;
}

bool8 ScrCmd_removeitem(struct ScriptContext *ctx)
{
    u16 itemId = VarGet(ScriptReadHalfword(ctx));
    u32 quantity = VarGet(ScriptReadHalfword(ctx));

    gSpecialVar_Result = RemoveBagItem(itemId, quantity);
    return FALSE;
}

bool8 ScrCmd_checkitemspace(struct ScriptContext *ctx)
{
    u16 itemId = VarGet(ScriptReadHalfword(ctx));
    u32 quantity = VarGet(ScriptReadHalfword(ctx));

    gSpecialVar_Result = CheckBagHasSpace(itemId, quantity);
    return FALSE;
}

bool8 ScrCmd_checkitem(struct ScriptContext *ctx)
{
    u16 itemId = VarGet(ScriptReadHalfword(ctx));
    u32 quantity = VarGet(ScriptReadHalfword(ctx));

    gSpecialVar_Result = CheckBagHasItem(itemId, quantity);
    return FALSE;
}

bool8 ScrCmd_checkitemtype(struct ScriptContext *ctx)
{
    u16 itemId = VarGet(ScriptReadHalfword(ctx));

    gSpecialVar_Result = GetPocketByItemId(itemId);
    return FALSE;
}

bool8 ScrCmd_addpcitem(struct ScriptContext *ctx)
{
    u16 itemId = VarGet(ScriptReadHalfword(ctx));
    u16 quantity = VarGet(ScriptReadHalfword(ctx));

    gSpecialVar_Result = AddPCItem(itemId, quantity);
    return FALSE;
}

bool8 ScrCmd_checkpcitem(struct ScriptContext *ctx)
{
    u16 itemId = VarGet(ScriptReadHalfword(ctx));
    u16 quantity = VarGet(ScriptReadHalfword(ctx));

    gSpecialVar_Result = CheckPCHasItem(itemId, quantity);
    return FALSE;
}

bool8 ScrCmd_adddecoration(struct ScriptContext *ctx)
{
    u32 decorId = VarGet(ScriptReadHalfword(ctx));

    gSpecialVar_Result = DecorationAdd(decorId);
    return FALSE;
}

bool8 ScrCmd_removedecoration(struct ScriptContext *ctx)
{
    u32 decorId = VarGet(ScriptReadHalfword(ctx));

    gSpecialVar_Result = DecorationRemove(decorId);
    return FALSE;
}

bool8 ScrCmd_checkdecorspace(struct ScriptContext *ctx)
{
    u32 decorId = VarGet(ScriptReadHalfword(ctx));

    gSpecialVar_Result = DecorationCheckSpace(decorId);
    return FALSE;
}

bool8 ScrCmd_checkdecor(struct ScriptContext *ctx)
{
    u32 decorId = VarGet(ScriptReadHalfword(ctx));

    gSpecialVar_Result = CheckHasDecoration(decorId);
    return FALSE;
}

bool8 ScrCmd_setflag(struct ScriptContext *ctx)
{
    FlagSet(ScriptReadHalfword(ctx));
    return FALSE;
}

bool8 ScrCmd_clearflag(struct ScriptContext *ctx)
{
    FlagClear(ScriptReadHalfword(ctx));
    return FALSE;
}

bool8 ScrCmd_checkflag(struct ScriptContext *ctx)
{
    ctx->comparisonResult = FlagGet(ScriptReadHalfword(ctx));
    return FALSE;
}

bool8 ScrCmd_incrementgamestat(struct ScriptContext *ctx)
{
    IncrementGameStat(ScriptReadByte(ctx));
    return FALSE;
}

bool8 ScrCmd_animateflash(struct ScriptContext *ctx)
{
    AnimateFlash(ScriptReadByte(ctx));
    ScriptContext_Stop();
    return TRUE;
}

bool8 ScrCmd_setflashlevel(struct ScriptContext *ctx)
{
    SetFlashLevel(VarGet(ScriptReadHalfword(ctx)));
    return FALSE;
}

static bool8 IsPaletteNotActive(void)
{
    if (!gPaletteFade.active)
        return TRUE;
    else
        return FALSE;
}

bool8 ScrCmd_fadescreen(struct ScriptContext *ctx)
{
    FadeScreen(ScriptReadByte(ctx), 0);
    SetupNativeScript(ctx, IsPaletteNotActive);
    return TRUE;
}

bool8 ScrCmd_fadescreenspeed(struct ScriptContext *ctx)
{
    u8 mode = ScriptReadByte(ctx);
    u8 speed = ScriptReadByte(ctx);

    FadeScreen(mode, speed);
    SetupNativeScript(ctx, IsPaletteNotActive);
    return TRUE;
}

bool8 ScrCmd_fadescreenswapbuffers(struct ScriptContext *ctx)
{
    u8 mode = ScriptReadByte(ctx);

    switch (mode)
    {
    case FADE_TO_BLACK:
    case FADE_TO_WHITE:
    default:
        CpuCopy32(gPlttBufferUnfaded, gPaletteDecompressionBuffer, PLTT_SIZE);
        FadeScreen(mode, 0);
        break;
    case FADE_FROM_BLACK:
    case FADE_FROM_WHITE:
        CpuCopy32(gPaletteDecompressionBuffer, gPlttBufferUnfaded, PLTT_SIZE);
        FadeScreen(mode, 0);
        break;
    }

    SetupNativeScript(ctx, IsPaletteNotActive);
    return TRUE;
}

static bool8 RunPauseTimer(void)
{
    if (--sPauseCounter == 0)
        return TRUE;
    else
        return FALSE;
}

bool8 ScrCmd_delay(struct ScriptContext *ctx)
{
    sPauseCounter = ScriptReadHalfword(ctx);
    SetupNativeScript(ctx, RunPauseTimer);
    return TRUE;
}

bool8 ScrCmd_initclock(struct ScriptContext *ctx)
{
    u8 hour = VarGet(ScriptReadHalfword(ctx));
    u8 minute = VarGet(ScriptReadHalfword(ctx));

    RtcInitLocalTimeOffset(hour, minute);
    return FALSE;
}

bool8 ScrCmd_dotimebasedevents(struct ScriptContext *ctx)
{
    DoTimeBasedEvents();
    return FALSE;
}

bool8 ScrCmd_gettime(struct ScriptContext *ctx)
{
    RtcCalcLocalTime();
    gSpecialVar_0x8000 = gLocalTime.hours;
    gSpecialVar_0x8001 = gLocalTime.minutes;
    gSpecialVar_0x8002 = gLocalTime.seconds;
    return FALSE;
}

bool8 ScrCmd_setweather(struct ScriptContext *ctx)
{
    u16 weather = VarGet(ScriptReadHalfword(ctx));

    SetSavedWeather(weather);
    return FALSE;
}

bool8 ScrCmd_resetweather(struct ScriptContext *ctx)
{
    SetSavedWeatherFromCurrMapHeader();
    return FALSE;
}

bool8 ScrCmd_doweather(struct ScriptContext *ctx)
{
    DoCurrentWeather();
    return FALSE;
}

bool8 ScrCmd_setstepcallback(struct ScriptContext *ctx)
{
    ActivatePerStepCallback(ScriptReadByte(ctx));
    return FALSE;
}

bool8 ScrCmd_setmaplayoutindex(struct ScriptContext *ctx)
{
    u16 value = VarGet(ScriptReadHalfword(ctx));

    SetCurrentMapLayout(value);
    return FALSE;
}

bool8 ScrCmd_warp(struct ScriptContext *ctx)
{
    u8 mapGroup = ScriptReadByte(ctx);
    u8 mapNum = ScriptReadByte(ctx);
    u8 warpId = ScriptReadByte(ctx);
    u16 x = VarGet(ScriptReadHalfword(ctx));
    u16 y = VarGet(ScriptReadHalfword(ctx));

    SetWarpDestination(mapGroup, mapNum, warpId, x, y);
    DoWarp();
    ResetInitialPlayerAvatarState();
    return TRUE;
}

bool8 ScrCmd_warpsilent(struct ScriptContext *ctx)
{
    u8 mapGroup = ScriptReadByte(ctx);
    u8 mapNum = ScriptReadByte(ctx);
    u8 warpId = ScriptReadByte(ctx);
    u16 x = VarGet(ScriptReadHalfword(ctx));
    u16 y = VarGet(ScriptReadHalfword(ctx));

    SetWarpDestination(mapGroup, mapNum, warpId, x, y);
    DoDiveWarp();
    ResetInitialPlayerAvatarState();
    return TRUE;
}

bool8 ScrCmd_warpdoor(struct ScriptContext *ctx)
{
    u8 mapGroup = ScriptReadByte(ctx);
    u8 mapNum = ScriptReadByte(ctx);
    u8 warpId = ScriptReadByte(ctx);
    u16 x = VarGet(ScriptReadHalfword(ctx));
    u16 y = VarGet(ScriptReadHalfword(ctx));

    SetWarpDestination(mapGroup, mapNum, warpId, x, y);
    DoDoorWarp();
    ResetInitialPlayerAvatarState();
    return TRUE;
}

bool8 ScrCmd_warphole(struct ScriptContext *ctx)
{
    u8 mapGroup = ScriptReadByte(ctx);
    u8 mapNum = ScriptReadByte(ctx);
    s16 x;
    s16 y;

    PlayerGetDestCoords(&x, &y);
    if (mapGroup == MAP_GROUP(UNDEFINED) && mapNum == MAP_NUM(UNDEFINED))
        SetWarpDestinationToFixedHoleWarp(x - MAP_OFFSET, y - MAP_OFFSET);
    else
        SetWarpDestination(mapGroup, mapNum, WARP_ID_NONE, x - MAP_OFFSET, y - MAP_OFFSET);
    DoFallWarp();
    ResetInitialPlayerAvatarState();
    return TRUE;
}

// RS mossdeep gym warp, unused in Emerald
bool8 ScrCmd_warpteleport(struct ScriptContext *ctx)
{
    u8 mapGroup = ScriptReadByte(ctx);
    u8 mapNum = ScriptReadByte(ctx);
    u8 warpId = ScriptReadByte(ctx);
    u16 x = VarGet(ScriptReadHalfword(ctx));
    u16 y = VarGet(ScriptReadHalfword(ctx));

    SetWarpDestination(mapGroup, mapNum, warpId, x, y);
    DoTeleportTileWarp();
    ResetInitialPlayerAvatarState();
    return TRUE;
}

bool8 ScrCmd_warpmossdeepgym(struct ScriptContext *ctx)
{
    u8 mapGroup = ScriptReadByte(ctx);
    u8 mapNum = ScriptReadByte(ctx);
    u8 warpId = ScriptReadByte(ctx);
    u16 x = VarGet(ScriptReadHalfword(ctx));
    u16 y = VarGet(ScriptReadHalfword(ctx));

    SetWarpDestination(mapGroup, mapNum, warpId, x, y);
    DoMossdeepGymWarp();
    ResetInitialPlayerAvatarState();
    return TRUE;
}

bool8 ScrCmd_setwarp(struct ScriptContext *ctx)
{
    u8 mapGroup = ScriptReadByte(ctx);
    u8 mapNum = ScriptReadByte(ctx);
    u8 warpId = ScriptReadByte(ctx);
    u16 x = VarGet(ScriptReadHalfword(ctx));
    u16 y = VarGet(ScriptReadHalfword(ctx));

    SetWarpDestination(mapGroup, mapNum, warpId, x, y);
    return FALSE;
}

bool8 ScrCmd_setdynamicwarp(struct ScriptContext *ctx)
{
    u8 mapGroup = ScriptReadByte(ctx);
    u8 mapNum = ScriptReadByte(ctx);
    u8 warpId = ScriptReadByte(ctx);
    u16 x = VarGet(ScriptReadHalfword(ctx));
    u16 y = VarGet(ScriptReadHalfword(ctx));

    SetDynamicWarpWithCoords(0, mapGroup, mapNum, warpId, x, y);
    return FALSE;
}

bool8 ScrCmd_setdivewarp(struct ScriptContext *ctx)
{
    u8 mapGroup = ScriptReadByte(ctx);
    u8 mapNum = ScriptReadByte(ctx);
    u8 warpId = ScriptReadByte(ctx);
    u16 x = VarGet(ScriptReadHalfword(ctx));
    u16 y = VarGet(ScriptReadHalfword(ctx));

    SetFixedDiveWarp(mapGroup, mapNum, warpId, x, y);
    return FALSE;
}

bool8 ScrCmd_setholewarp(struct ScriptContext *ctx)
{
    u8 mapGroup = ScriptReadByte(ctx);
    u8 mapNum = ScriptReadByte(ctx);
    u8 warpId = ScriptReadByte(ctx);
    u16 x = VarGet(ScriptReadHalfword(ctx));
    u16 y = VarGet(ScriptReadHalfword(ctx));

    SetFixedHoleWarp(mapGroup, mapNum, warpId, x, y);
    return FALSE;
}

bool8 ScrCmd_setescapewarp(struct ScriptContext *ctx)
{
    u8 mapGroup = ScriptReadByte(ctx);
    u8 mapNum = ScriptReadByte(ctx);
    u8 warpId = ScriptReadByte(ctx);
    u16 x = VarGet(ScriptReadHalfword(ctx));
    u16 y = VarGet(ScriptReadHalfword(ctx));

    SetEscapeWarp(mapGroup, mapNum, warpId, x, y);
    return FALSE;
}

bool8 ScrCmd_getplayerxy(struct ScriptContext *ctx)
{
    u16 *pX = GetVarPointer(ScriptReadHalfword(ctx));
    u16 *pY = GetVarPointer(ScriptReadHalfword(ctx));

    *pX = gSaveBlock1Ptr->pos.x;
    *pY = gSaveBlock1Ptr->pos.y;
    return FALSE;
}

bool8 ScrCmd_getpartysize(struct ScriptContext *ctx)
{
    gSpecialVar_Result = CalculatePlayerPartyCount();
    return FALSE;
}

bool8 ScrCmd_playse(struct ScriptContext *ctx)
{
    PlaySE(ScriptReadHalfword(ctx));
    return FALSE;
}

static bool8 WaitForSoundEffectFinish(void)
{
    if (!IsSEPlaying())
        return TRUE;
    else
        return FALSE;
}

bool8 ScrCmd_waitse(struct ScriptContext *ctx)
{
    SetupNativeScript(ctx, WaitForSoundEffectFinish);
    return TRUE;
}

bool8 ScrCmd_playfanfare(struct ScriptContext *ctx)
{
    PlayFanfare(ScriptReadHalfword(ctx));
    return FALSE;
}

static bool8 WaitForFanfareFinish(void)
{
    return IsFanfareTaskInactive();
}

bool8 ScrCmd_waitfanfare(struct ScriptContext *ctx)
{
    SetupNativeScript(ctx, WaitForFanfareFinish);
    return TRUE;
}

bool8 ScrCmd_playbgm(struct ScriptContext *ctx)
{
    u16 songId = ScriptReadHalfword(ctx);
    bool8 save = ScriptReadByte(ctx);

    if (save == TRUE)
        Overworld_SetSavedMusic(songId);
    PlayNewMapMusic(songId);
    return FALSE;
}

bool8 ScrCmd_savebgm(struct ScriptContext *ctx)
{
    Overworld_SetSavedMusic(ScriptReadHalfword(ctx));
    return FALSE;
}

bool8 ScrCmd_fadedefaultbgm(struct ScriptContext *ctx)
{
    Overworld_ChangeMusicToDefault();
    return FALSE;
}

bool8 ScrCmd_fadenewbgm(struct ScriptContext *ctx)
{
    Overworld_ChangeMusicTo(ScriptReadHalfword(ctx));
    return FALSE;
}

bool8 ScrCmd_fadeoutbgm(struct ScriptContext *ctx)
{
    u8 speed = ScriptReadByte(ctx);

    if (speed != 0)
        FadeOutBGMTemporarily(4 * speed);
    else
        FadeOutBGMTemporarily(4);
    SetupNativeScript(ctx, IsBGMPausedOrStopped);
    return TRUE;
}

bool8 ScrCmd_fadeinbgm(struct ScriptContext *ctx)
{
    u8 speed = ScriptReadByte(ctx);

    if (speed != 0)
        FadeInBGM(4 * speed);
    else
        FadeInBGM(4);
    return FALSE;
}

bool8 ScrCmd_applymovement(struct ScriptContext *ctx)
{
    u16 localId = VarGet(ScriptReadHalfword(ctx));
    const void *movementScript = (const void *)ScriptReadWord(ctx);

    ScriptMovement_StartObjectMovementScript(localId, gSaveBlock1Ptr->location.mapNum, gSaveBlock1Ptr->location.mapGroup, movementScript);
    sMovingNpcId = localId;
    return FALSE;
}

bool8 ScrCmd_applymovementat(struct ScriptContext *ctx)
{
    u16 localId = VarGet(ScriptReadHalfword(ctx));
    const void *movementScript = (const void *)ScriptReadWord(ctx);
    u8 mapGroup = ScriptReadByte(ctx);
    u8 mapNum = ScriptReadByte(ctx);

    ScriptMovement_StartObjectMovementScript(localId, mapNum, mapGroup, movementScript);
    sMovingNpcId = localId;
    return FALSE;
}

static bool8 WaitForMovementFinish(void)
{
    return ScriptMovement_IsObjectMovementFinished(sMovingNpcId, sMovingNpcMapNum, sMovingNpcMapGroup);
}

bool8 ScrCmd_waitmovement(struct ScriptContext *ctx)
{
    u16 localId = VarGet(ScriptReadHalfword(ctx));

    if (localId != 0)
        sMovingNpcId = localId;
    sMovingNpcMapGroup = gSaveBlock1Ptr->location.mapGroup;
    sMovingNpcMapNum = gSaveBlock1Ptr->location.mapNum;
    SetupNativeScript(ctx, WaitForMovementFinish);
    return TRUE;
}

bool8 ScrCmd_waitmovementat(struct ScriptContext *ctx)
{
    u16 localId = VarGet(ScriptReadHalfword(ctx));
    u8 mapGroup;
    u8 mapNum;

    if (localId != 0)
        sMovingNpcId = localId;
    mapGroup = ScriptReadByte(ctx);
    mapNum = ScriptReadByte(ctx);
    sMovingNpcMapGroup = mapGroup;
    sMovingNpcMapNum = mapNum;
    SetupNativeScript(ctx, WaitForMovementFinish);
    return TRUE;
}

bool8 ScrCmd_removeobject(struct ScriptContext *ctx)
{
    u16 localId = VarGet(ScriptReadHalfword(ctx));

    RemoveObjectEventByLocalIdAndMap(localId, gSaveBlock1Ptr->location.mapNum, gSaveBlock1Ptr->location.mapGroup);
    return FALSE;
}

bool8 ScrCmd_removeobjectat(struct ScriptContext *ctx)
{
    u16 objectId = VarGet(ScriptReadHalfword(ctx));
    u8 mapGroup = ScriptReadByte(ctx);
    u8 mapNum = ScriptReadByte(ctx);

    RemoveObjectEventByLocalIdAndMap(objectId, mapNum, mapGroup);
    return FALSE;
}

bool8 ScrCmd_addobject(struct ScriptContext *ctx)
{
    u16 objectId = VarGet(ScriptReadHalfword(ctx));

    TrySpawnObjectEvent(objectId, gSaveBlock1Ptr->location.mapNum, gSaveBlock1Ptr->location.mapGroup);
    return FALSE;
}

bool8 ScrCmd_addobjectat(struct ScriptContext *ctx)
{
    u16 objectId = VarGet(ScriptReadHalfword(ctx));
    u8 mapGroup = ScriptReadByte(ctx);
    u8 mapNum = ScriptReadByte(ctx);

    TrySpawnObjectEvent(objectId, mapNum, mapGroup);
    return FALSE;
}

bool8 ScrCmd_setobjectxy(struct ScriptContext *ctx)
{
    u16 localId = VarGet(ScriptReadHalfword(ctx));
    u16 x = VarGet(ScriptReadHalfword(ctx));
    u16 y = VarGet(ScriptReadHalfword(ctx));

    TryMoveObjectEventToMapCoords(localId, gSaveBlock1Ptr->location.mapNum, gSaveBlock1Ptr->location.mapGroup, x, y);
    return FALSE;
}

bool8 ScrCmd_setobjectxyperm(struct ScriptContext *ctx)
{
    u16 localId = VarGet(ScriptReadHalfword(ctx));
    u16 x = VarGet(ScriptReadHalfword(ctx));
    u16 y = VarGet(ScriptReadHalfword(ctx));

    SetObjEventTemplateCoords(localId, x, y);
    return FALSE;
}

bool8 ScrCmd_copyobjectxytoperm(struct ScriptContext *ctx)
{
    u16 localId = VarGet(ScriptReadHalfword(ctx));

    TryOverrideObjectEventTemplateCoords(localId, gSaveBlock1Ptr->location.mapNum, gSaveBlock1Ptr->location.mapGroup);
    return FALSE;
}

bool8 ScrCmd_showobjectat(struct ScriptContext *ctx)
{
    u16 localId = VarGet(ScriptReadHalfword(ctx));
    u8 mapGroup = ScriptReadByte(ctx);
    u8 mapNum = ScriptReadByte(ctx);

    SetObjectInvisibility(localId, mapNum, mapGroup, FALSE);
    return FALSE;
}

bool8 ScrCmd_hideobjectat(struct ScriptContext *ctx)
{
    u16 localId = VarGet(ScriptReadHalfword(ctx));
    u8 mapGroup = ScriptReadByte(ctx);
    u8 mapNum = ScriptReadByte(ctx);

    SetObjectInvisibility(localId, mapNum, mapGroup, TRUE);
    return FALSE;
}

bool8 ScrCmd_setobjectsubpriority(struct ScriptContext *ctx)
{
    u16 localId = VarGet(ScriptReadHalfword(ctx));
    u8 mapGroup = ScriptReadByte(ctx);
    u8 mapNum = ScriptReadByte(ctx);
    u8 priority = ScriptReadByte(ctx);

    SetObjectSubpriority(localId, mapNum, mapGroup, priority + 83);
    return FALSE;
}

bool8 ScrCmd_resetobjectsubpriority(struct ScriptContext *ctx)
{
    u16 localId = VarGet(ScriptReadHalfword(ctx));
    u8 mapGroup = ScriptReadByte(ctx);
    u8 mapNum = ScriptReadByte(ctx);

    ResetObjectSubpriority(localId, mapNum, mapGroup);
    return FALSE;
}

bool8 ScrCmd_faceplayer(struct ScriptContext *ctx)
{
    if (gObjectEvents[gSelectedObjectEvent].active)
        ObjectEventFaceOppositeDirection(&gObjectEvents[gSelectedObjectEvent], GetPlayerFacingDirection());
    return FALSE;
}

bool8 ScrCmd_turnobject(struct ScriptContext *ctx)
{
    u16 localId = VarGet(ScriptReadHalfword(ctx));
    u8 direction = ScriptReadByte(ctx);

    ObjectEventTurnByLocalIdAndMap(localId, gSaveBlock1Ptr->location.mapNum, gSaveBlock1Ptr->location.mapGroup, direction);
    return FALSE;
}

bool8 ScrCmd_setobjectmovementtype(struct ScriptContext *ctx)
{
    u16 localId = VarGet(ScriptReadHalfword(ctx));
    u8 movementType = ScriptReadByte(ctx);

    SetObjEventTemplateMovementType(localId, movementType);
    return FALSE;
}

bool8 ScrCmd_createvobject(struct ScriptContext *ctx)
{
    u8 graphicsId = ScriptReadByte(ctx);
    u8 virtualObjId = ScriptReadByte(ctx);
    u16 x = VarGet(ScriptReadHalfword(ctx));
    u32 y = VarGet(ScriptReadHalfword(ctx));
    u8 elevation = ScriptReadByte(ctx);
    u8 direction = ScriptReadByte(ctx);

    CreateVirtualObject(graphicsId, virtualObjId, x, y, elevation, direction);
    return FALSE;
}

bool8 ScrCmd_turnvobject(struct ScriptContext *ctx)
{
    u8 virtualObjId = ScriptReadByte(ctx);
    u8 direction = ScriptReadByte(ctx);

    TurnVirtualObject(virtualObjId, direction);
    return FALSE;
}

// lockall freezes all object events except the player immediately.
// The player is frozen after waiting for their current movement to finish.
bool8 ScrCmd_lockall(struct ScriptContext *ctx)
{
    if (IsOverworldLinkActive())
    {
        return FALSE;
    }
    else
    {
        FreezeObjects_WaitForPlayer();
        SetupNativeScript(ctx, IsFreezePlayerFinished);
        return TRUE;
    }
}

// lock freezes all object events except the player and the selected object immediately.
// The player and selected object are frozen after waiting for their current movement to finish.
bool8 ScrCmd_lock(struct ScriptContext *ctx)
{
    if (IsOverworldLinkActive())
    {
        return FALSE;
    }
    else
    {
        if (gObjectEvents[gSelectedObjectEvent].active)
        {
            FreezeObjects_WaitForPlayerAndSelected();
            SetupNativeScript(ctx, IsFreezeSelectedObjectAndPlayerFinished);
        }
        else
        {
            FreezeObjects_WaitForPlayer();
            SetupNativeScript(ctx, IsFreezePlayerFinished);
        }
        return TRUE;
    }
}

bool8 ScrCmd_releaseall(struct ScriptContext *ctx)
{
    u8 playerObjectId;

    HideFieldMessageBox();
    playerObjectId = GetObjectEventIdByLocalIdAndMap(OBJ_EVENT_ID_PLAYER, 0, 0);
    ObjectEventClearHeldMovementIfFinished(&gObjectEvents[playerObjectId]);
    ScriptMovement_UnfreezeObjectEvents();
    UnfreezeObjectEvents();
    return FALSE;
}

bool8 ScrCmd_release(struct ScriptContext *ctx)
{
    u8 playerObjectId;

    HideFieldMessageBox();
    if (gObjectEvents[gSelectedObjectEvent].active)
        ObjectEventClearHeldMovementIfFinished(&gObjectEvents[gSelectedObjectEvent]);
    playerObjectId = GetObjectEventIdByLocalIdAndMap(OBJ_EVENT_ID_PLAYER, 0, 0);
    ObjectEventClearHeldMovementIfFinished(&gObjectEvents[playerObjectId]);
    ScriptMovement_UnfreezeObjectEvents();
    UnfreezeObjectEvents();
    return FALSE;
}

bool8 ScrCmd_message(struct ScriptContext *ctx)
{
    const u8 *msg = (const u8 *)ScriptReadWord(ctx);

    if (msg == NULL)
        msg = (const u8 *)ctx->data[0];
    ShowFieldMessage(msg);
    return FALSE;
}

bool8 ScrCmd_pokenavcall(struct ScriptContext *ctx)
{
    const u8 *msg = (const u8 *)ScriptReadWord(ctx);

    if (msg == NULL)
        msg = (const u8 *)ctx->data[0];
    ShowPokenavFieldMessage(msg);
    return FALSE;
}

bool8 ScrCmd_messageautoscroll(struct ScriptContext *ctx)
{
    const u8 *msg = (const u8 *)ScriptReadWord(ctx);

    if (msg == NULL)
        msg = (const u8 *)ctx->data[0];
    gTextFlags.autoScroll = TRUE;
    gTextFlags.forceMidTextSpeed = TRUE;
    ShowFieldAutoScrollMessage(msg);
    return FALSE;
}

// Prints all at once. Skips waiting for player input. Only used by link contests
bool8 ScrCmd_messageinstant(struct ScriptContext *ctx)
{
    const u8 *msg = (const u8 *)ScriptReadWord(ctx);

    if (msg == NULL)
        msg = (const u8 *)ctx->data[0];
    LoadMessageBoxAndBorderGfx();
    DrawDialogueFrame(0, TRUE);
    AddTextPrinterParameterized(0, FONT_NORMAL, msg, 0, 1, 0, NULL);
    return FALSE;
}

bool8 ScrCmd_waitmessage(struct ScriptContext *ctx)
{
    SetupNativeScript(ctx, IsFieldMessageBoxHidden);
    return TRUE;
}

bool8 ScrCmd_closemessage(struct ScriptContext *ctx)
{
    HideFieldMessageBox();
    return FALSE;
}

static bool8 WaitForAorBPress(void)
{
    if (JOY_NEW(A_BUTTON))
        return TRUE;
    if (JOY_NEW(B_BUTTON))
        return TRUE;
    return FALSE;
}

bool8 ScrCmd_waitbuttonpress(struct ScriptContext *ctx)
{
    SetupNativeScript(ctx, WaitForAorBPress);
    return TRUE;
}

bool8 ScrCmd_yesnobox(struct ScriptContext *ctx)
{
    u8 left = ScriptReadByte(ctx);
    u8 top = ScriptReadByte(ctx);

    if (ScriptMenu_YesNo(left, top) == TRUE)
    {
        ScriptContext_Stop();
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

static void DynamicMultichoiceSortList(struct ListMenuItem *items, u32 count)
{
    u32 i,j;
    struct ListMenuItem tmp;
    for (i = 0; i < count - 1; ++i)
    {
        for (j = 0; j < count - i - 1; ++j)
        {
            if (items[j].id > items[j+1].id)
            {
                tmp = items[j];
                items[j] = items[j+1];
                items[j+1] = tmp;
            }
        }
    }
}

#define DYN_MULTICHOICE_DEFAULT_MAX_BEFORE_SCROLL 6

bool8 ScrCmd_dynmultichoice(struct ScriptContext *ctx)
{
    u32 i;
    u32 left = VarGet(ScriptReadHalfword(ctx));
    u32 top = VarGet(ScriptReadHalfword(ctx));
    bool32 ignoreBPress = ScriptReadByte(ctx);
    u32 maxBeforeScroll = ScriptReadByte(ctx);
    bool32 shouldSort = ScriptReadByte(ctx);
    u32 initialSelected = VarGet(ScriptReadHalfword(ctx));
    u32 callbackSet = ScriptReadByte(ctx);
    u32 initialRow = 0;
    // Read vararg
    u32 argc = ScriptReadByte(ctx);
    struct ListMenuItem *items;

    if (argc == 0)
        return FALSE;

    if (maxBeforeScroll == 0xFF)
        maxBeforeScroll = DYN_MULTICHOICE_DEFAULT_MAX_BEFORE_SCROLL;

    if ((const u8*) ScriptPeekWord(ctx) != NULL)
    {
        items = AllocZeroed(sizeof(struct ListMenuItem) * argc);
        for (i = 0; i < argc; ++i)
        {
            u8 *nameBuffer = Alloc(100);
            const u8 *arg = (const u8 *) ScriptReadWord(ctx);
            StringExpandPlaceholders(nameBuffer, arg);
            items[i].name = nameBuffer;
            items[i].id = i;
            if (i == initialSelected)
                initialRow = i;
        }
    }
    else
    {
        argc = MultichoiceDynamic_StackSize();
        items = AllocZeroed(sizeof(struct ListMenuItem) * argc);
        for (i = 0; i < argc; ++i)
        {
            struct ListMenuItem *currentItem = MultichoiceDynamic_PeekElementAt(i);
            items[i] = *currentItem;
            if (currentItem->id == initialSelected)
                initialRow = i;
        }
        if (shouldSort)
            DynamicMultichoiceSortList(items, argc);
        MultichoiceDynamic_DestroyStack();
    }

    if (ScriptMenu_MultichoiceDynamic(left, top, argc, items, ignoreBPress, maxBeforeScroll, initialRow, callbackSet))
    {
        ScriptContext_Stop();
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

bool8 ScrCmd_dynmultipush(struct ScriptContext *ctx)
{
    u8 *nameBuffer = Alloc(100);
    const u8 *name = (const u8*) ScriptReadWord(ctx);
    u32 id = VarGet(ScriptReadHalfword(ctx));
    struct ListMenuItem item;
    StringExpandPlaceholders(nameBuffer, name);
    item.name = nameBuffer;
    item.id = id;
    MultichoiceDynamic_PushElement(item);
    return FALSE;
}

bool8 ScrCmd_multichoice(struct ScriptContext *ctx)
{
    u8 left = ScriptReadByte(ctx);
    u8 top = ScriptReadByte(ctx);
    u8 multichoiceId = ScriptReadByte(ctx);
    bool8 ignoreBPress = ScriptReadByte(ctx);

    if (ScriptMenu_Multichoice(left, top, multichoiceId, ignoreBPress) == TRUE)
    {
        ScriptContext_Stop();
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

bool8 ScrCmd_multichoicedefault(struct ScriptContext *ctx)
{
    u8 left = ScriptReadByte(ctx);
    u8 top = ScriptReadByte(ctx);
    u8 multichoiceId = ScriptReadByte(ctx);
    u8 defaultChoice = ScriptReadByte(ctx);
    bool8 ignoreBPress = ScriptReadByte(ctx);

    if (ScriptMenu_MultichoiceWithDefault(left, top, multichoiceId, ignoreBPress, defaultChoice) == TRUE)
    {
        ScriptContext_Stop();
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

bool8 ScrCmd_drawbox(struct ScriptContext *ctx)
{
    /*u8 left = ScriptReadByte(ctx);
    u8 top = ScriptReadByte(ctx);
    u8 right = ScriptReadByte(ctx);
    u8 bottom = ScriptReadByte(ctx);

    MenuDrawTextWindow(left, top, right, bottom);*/
    return FALSE;
}

bool8 ScrCmd_multichoicegrid(struct ScriptContext *ctx)
{
    u8 left = ScriptReadByte(ctx);
    u8 top = ScriptReadByte(ctx);
    u8 multichoiceId = ScriptReadByte(ctx);
    u8 numColumns = ScriptReadByte(ctx);
    bool8 ignoreBPress = ScriptReadByte(ctx);

    if (ScriptMenu_MultichoiceGrid(left, top, multichoiceId, ignoreBPress, numColumns) == TRUE)
    {
        ScriptContext_Stop();
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

bool8 ScrCmd_erasebox(struct ScriptContext *ctx)
{
    u8 UNUSED left = ScriptReadByte(ctx);
    u8 UNUSED top = ScriptReadByte(ctx);
    u8 UNUSED right = ScriptReadByte(ctx);
    u8 UNUSED bottom = ScriptReadByte(ctx);

    // Menu_EraseWindowRect(left, top, right, bottom);
    return FALSE;
}

bool8 ScrCmd_drawboxtext(struct ScriptContext *ctx)
{
    u8 UNUSED left = ScriptReadByte(ctx);
    u8 UNUSED top = ScriptReadByte(ctx);
    u8 UNUSED multichoiceId = ScriptReadByte(ctx);
    bool8 UNUSED ignoreBPress = ScriptReadByte(ctx);

    /*if (Multichoice(left, top, multichoiceId, ignoreBPress) == TRUE)
    {
        ScriptContext_Stop();
        return TRUE;
    }*/
    return FALSE;
}

bool8 ScrCmd_showmonpic(struct ScriptContext *ctx)
{
    u16 species = VarGet(ScriptReadHalfword(ctx));
    u8 x = ScriptReadByte(ctx);
    u8 y = ScriptReadByte(ctx);

    ScriptMenu_ShowPokemonPic(species, x, y);
    return FALSE;
}

bool8 ScrCmd_hidemonpic(struct ScriptContext *ctx)
{
    // The hide function returns a pointer to a function
    // that returns true once the pic is hidden
    bool8 (*func)(void) = ScriptMenu_HidePokemonPic();

    if (func == NULL)
        return FALSE;
    SetupNativeScript(ctx, func);
    return TRUE;
}

bool8 ScrCmd_showcontestpainting(struct ScriptContext *ctx)
{
    u8 contestWinnerId = ScriptReadByte(ctx);

    // Artist's painting is temporary and already has its data loaded
    if (contestWinnerId != CONTEST_WINNER_ARTIST)
        SetContestWinnerForPainting(contestWinnerId);

    ShowContestPainting();
    ScriptContext_Stop();
    return TRUE;
}

bool8 ScrCmd_braillemessage(struct ScriptContext *ctx)
{
    u8 *ptr = (u8 *)ScriptReadWord(ctx);
    struct WindowTemplate winTemplate;
    s32 i;
    u8 width, height;
    u8 xWindow, yWindow, xText, yText;
    u8 temp;

    // + 6 for the 6 bytes at the start of a braille message (brailleformat macro)
    // In RS these bytes are used to position the text and window, but
    // in Emerald they are unused and position is calculated below instead
    StringExpandPlaceholders(gStringVar4, ptr + 6);

    width = GetStringWidth(FONT_BRAILLE, gStringVar4, -1) / 8u;

    if (width > 28)
        width = 28;

    for (i = 0, height = 4; gStringVar4[i] != EOS;)
    {
        if (gStringVar4[i++] == CHAR_NEWLINE)
            height += 3;
    }

    if (height > 18)
        height = 18;

    temp = width + 2;
    xWindow = (30 - temp) / 2;

    temp = height + 2;
    yText = (20 - temp) / 2;

    xText = xWindow;
    xWindow += 1;

    yWindow = yText;
    yText += 2;

    xText = (xWindow - xText - 1) * 8 + 3;
    yText = (yText - yWindow - 1) * 8;

    winTemplate = CreateWindowTemplate(0, xWindow, yWindow + 1, width, height, 0xF, 0x1);
    sBrailleWindowId = AddWindow(&winTemplate);
    LoadUserWindowBorderGfx(sBrailleWindowId, 0x214, BG_PLTT_ID(14));
    DrawStdWindowFrame(sBrailleWindowId, FALSE);
    PutWindowTilemap(sBrailleWindowId);
    FillWindowPixelBuffer(sBrailleWindowId, PIXEL_FILL(1));
    AddTextPrinterParameterized(sBrailleWindowId, FONT_BRAILLE, gStringVar4, xText, yText, TEXT_SKIP_DRAW, NULL);
    CopyWindowToVram(sBrailleWindowId, COPYWIN_FULL);
    return FALSE;
}

bool8 ScrCmd_closebraillemessage(struct ScriptContext *ctx)
{
    CloseBrailleWindow();
    return FALSE;
}

bool8 ScrCmd_vmessage(struct ScriptContext *ctx)
{
    u32 msg = ScriptReadWord(ctx);

    ShowFieldMessage((u8 *)(msg - sAddressOffset));
    return FALSE;
}

bool8 ScrCmd_bufferspeciesname(struct ScriptContext *ctx)
{
    u8 stringVarIndex = ScriptReadByte(ctx);
    u16 species = VarGet(ScriptReadHalfword(ctx));

    StringCopy(sScriptStringVars[stringVarIndex], GetSpeciesName(species));
    return FALSE;
}

bool8 ScrCmd_bufferleadmonspeciesname(struct ScriptContext *ctx)
{
    u8 stringVarIndex = ScriptReadByte(ctx);

    u8 *dest = sScriptStringVars[stringVarIndex];
    u8 partyIndex = GetLeadMonIndex();
    u32 species = GetMonData(&gPlayerParty[partyIndex], MON_DATA_SPECIES, NULL);
    StringCopy(dest, GetSpeciesName(species));
    return FALSE;
}

bool8 ScrCmd_bufferpartymonnick(struct ScriptContext *ctx)
{
    u8 stringVarIndex = ScriptReadByte(ctx);
    u16 partyIndex = VarGet(ScriptReadHalfword(ctx));

    GetMonData(&gPlayerParty[partyIndex], MON_DATA_NICKNAME, sScriptStringVars[stringVarIndex]);
    StringGet_Nickname(sScriptStringVars[stringVarIndex]);
    return FALSE;
}

bool8 ScrCmd_bufferitemname(struct ScriptContext *ctx)
{
    u8 stringVarIndex = ScriptReadByte(ctx);
    u16 itemId = VarGet(ScriptReadHalfword(ctx));

    CopyItemName(itemId, sScriptStringVars[stringVarIndex]);
    return FALSE;
}

bool8 ScrCmd_bufferitemnameplural(struct ScriptContext *ctx)
{
    u8 stringVarIndex = ScriptReadByte(ctx);
    u16 itemId = VarGet(ScriptReadHalfword(ctx));
    u16 quantity = VarGet(ScriptReadHalfword(ctx));

    CopyItemNameHandlePlural(itemId, sScriptStringVars[stringVarIndex], quantity);
    return FALSE;
}

bool8 ScrCmd_bufferdecorationname(struct ScriptContext *ctx)
{
    u8 stringVarIndex = ScriptReadByte(ctx);
    u16 decorId = VarGet(ScriptReadHalfword(ctx));

    StringCopy(sScriptStringVars[stringVarIndex], gDecorations[decorId].name);
    return FALSE;
}

bool8 ScrCmd_buffermovename(struct ScriptContext *ctx)
{
    u8 stringVarIndex = ScriptReadByte(ctx);
    u16 moveId = VarGet(ScriptReadHalfword(ctx));

    StringCopy(sScriptStringVars[stringVarIndex], GetMoveName(moveId));
    return FALSE;
}

bool8 ScrCmd_buffernumberstring(struct ScriptContext *ctx)
{
    u8 stringVarIndex = ScriptReadByte(ctx);
    u16 num = VarGet(ScriptReadHalfword(ctx));
    u8 numDigits = CountDigits(num);

    ConvertIntToDecimalStringN(sScriptStringVars[stringVarIndex], num, STR_CONV_MODE_LEFT_ALIGN, numDigits);
    return FALSE;
}

bool8 ScrCmd_bufferstdstring(struct ScriptContext *ctx)
{
    u8 stringVarIndex = ScriptReadByte(ctx);
    u16 index = VarGet(ScriptReadHalfword(ctx));

    StringCopy(sScriptStringVars[stringVarIndex], gStdStrings[index]);
    return FALSE;
}

bool8 ScrCmd_buffercontestname(struct ScriptContext *ctx)
{
    u8 stringVarIndex = ScriptReadByte(ctx);
    u16 category = VarGet(ScriptReadHalfword(ctx));

    BufferContestName(sScriptStringVars[stringVarIndex], category);
    return FALSE;
}

bool8 ScrCmd_bufferstring(struct ScriptContext *ctx)
{
    u8 stringVarIndex = ScriptReadByte(ctx);
    const u8 *text = (u8 *)ScriptReadWord(ctx);

    StringCopy(sScriptStringVars[stringVarIndex], text);
    return FALSE;
}

bool8 ScrCmd_vbuffermessage(struct ScriptContext *ctx)
{
    const u8 *ptr = (u8 *)(ScriptReadWord(ctx) - sAddressOffset);

    StringExpandPlaceholders(gStringVar4, ptr);
    return FALSE;
}

bool8 ScrCmd_vbufferstring(struct ScriptContext *ctx)
{
    u8 stringVarIndex = ScriptReadByte(ctx);
    u32 addr = ScriptReadWord(ctx);

    const u8 *src = (u8 *)(addr - sAddressOffset);
    u8 *dest = sScriptStringVars[stringVarIndex];
    StringCopy(dest, src);
    return FALSE;
}

bool8 ScrCmd_bufferboxname(struct ScriptContext *ctx)
{
    u8 stringVarIndex = ScriptReadByte(ctx);
    u16 boxId = VarGet(ScriptReadHalfword(ctx));

    StringCopy(sScriptStringVars[stringVarIndex], GetBoxNamePtr(boxId));
    return FALSE;
}

bool8 ScrCmd_giveegg(struct ScriptContext *ctx)
{
    u16 species = VarGet(ScriptReadHalfword(ctx));

    gSpecialVar_Result = ScriptGiveEgg(species);
    return FALSE;
}

bool8 ScrCmd_setmonmove(struct ScriptContext *ctx)
{
    u8 partyIndex = ScriptReadByte(ctx);
    u8 slot = ScriptReadByte(ctx);
    u16 move = ScriptReadHalfword(ctx);

    ScriptSetMonMoveSlot(partyIndex, move, slot);
    return FALSE;
}

bool8 ScrCmd_checkpartymove(struct ScriptContext *ctx)
{
    u8 i;
    u16 moveId = ScriptReadHalfword(ctx);

    gSpecialVar_Result = PARTY_SIZE;
    for (i = 0; i < PARTY_SIZE; i++)
    {
        u16 species = GetMonData(&gPlayerParty[i], MON_DATA_SPECIES, NULL);
        if (!species)
            break;
        if (!GetMonData(&gPlayerParty[i], MON_DATA_IS_EGG) && MonKnowsMove(&gPlayerParty[i], moveId) == TRUE)
        {
            gSpecialVar_Result = i;
            gSpecialVar_0x8004 = species;
            break;
        }
    }
    return FALSE;
}

bool8 ScrCmd_addmoney(struct ScriptContext *ctx)
{
    u32 amount = ScriptReadWord(ctx);
    u8 ignore = ScriptReadByte(ctx);

    if (!ignore)
        AddMoney(&gSaveBlock1Ptr->money, amount);
    return FALSE;
}

bool8 ScrCmd_removemoney(struct ScriptContext *ctx)
{
    u32 amount = ScriptReadWord(ctx);
    u8 ignore = ScriptReadByte(ctx);

    if (!ignore)
        RemoveMoney(&gSaveBlock1Ptr->money, amount);
    return FALSE;
}

bool8 ScrCmd_checkmoney(struct ScriptContext *ctx)
{
    u32 amount = ScriptReadWord(ctx);
    u8 ignore = ScriptReadByte(ctx);

    if (!ignore)
        gSpecialVar_Result = IsEnoughMoney(&gSaveBlock1Ptr->money, amount);
    return FALSE;
}

bool8 ScrCmd_showmoneybox(struct ScriptContext *ctx)
{
    u8 x = ScriptReadByte(ctx);
    u8 y = ScriptReadByte(ctx);
    u8 ignore = ScriptReadByte(ctx);

    if (!ignore)
        DrawMoneyBox(GetMoney(&gSaveBlock1Ptr->money), x, y);
    return FALSE;
}

bool8 ScrCmd_hidemoneybox(struct ScriptContext *ctx)
{
    /*u8 x = ScriptReadByte(ctx);
    u8 y = ScriptReadByte(ctx);*/

    HideMoneyBox();
    return FALSE;
}

bool8 ScrCmd_updatemoneybox(struct ScriptContext *ctx)
{
    u8 UNUSED x = ScriptReadByte(ctx);
    u8 UNUSED y = ScriptReadByte(ctx);
    u8 ignore = ScriptReadByte(ctx);

    if (!ignore)
        ChangeAmountInMoneyBox(GetMoney(&gSaveBlock1Ptr->money));
    return FALSE;
}

bool8 ScrCmd_showcoinsbox(struct ScriptContext *ctx)
{
    u8 x = ScriptReadByte(ctx);
    u8 y = ScriptReadByte(ctx);

    ShowCoinsWindow(GetCoins(), x, y);
    return FALSE;
}

bool8 ScrCmd_hidecoinsbox(struct ScriptContext *ctx)
{
    u8 UNUSED x = ScriptReadByte(ctx);
    u8 UNUSED y = ScriptReadByte(ctx);

    HideCoinsWindow();
    return FALSE;
}

bool8 ScrCmd_updatecoinsbox(struct ScriptContext *ctx)
{
    u8 UNUSED x = ScriptReadByte(ctx);
    u8 UNUSED y = ScriptReadByte(ctx);

    PrintCoinsString(GetCoins());
    return FALSE;
}

bool8 ScrCmd_trainerbattle(struct ScriptContext *ctx)
{
    ctx->scriptPtr = BattleSetup_ConfigureTrainerBattle(ctx->scriptPtr);
    return FALSE;
}

bool8 ScrCmd_dotrainerbattle(struct ScriptContext *ctx)
{
    BattleSetup_StartTrainerBattle();
    return TRUE;
}

bool8 ScrCmd_gotopostbattlescript(struct ScriptContext *ctx)
{
    ctx->scriptPtr = BattleSetup_GetScriptAddrAfterBattle();
    return FALSE;
}

bool8 ScrCmd_gotobeatenscript(struct ScriptContext *ctx)
{
    ctx->scriptPtr = BattleSetup_GetTrainerPostBattleScript();
    return FALSE;
}

bool8 ScrCmd_checktrainerflag(struct ScriptContext *ctx)
{
    u16 index = VarGet(ScriptReadHalfword(ctx));

    ctx->comparisonResult = HasTrainerBeenFought(index);
    return FALSE;
}

bool8 ScrCmd_settrainerflag(struct ScriptContext *ctx)
{
    u16 index = VarGet(ScriptReadHalfword(ctx));

    SetTrainerFlag(index);
    return FALSE;
}

bool8 ScrCmd_cleartrainerflag(struct ScriptContext *ctx)
{
    u16 index = VarGet(ScriptReadHalfword(ctx));

    ClearTrainerFlag(index);
    return FALSE;
}

bool8 ScrCmd_setwildbattle(struct ScriptContext *ctx)
{
    u16 species = ScriptReadHalfword(ctx);
    u8 level = ScriptReadByte(ctx);
    u16 item = ScriptReadHalfword(ctx);
    u16 species2 = ScriptReadHalfword(ctx);
    u8 level2 = ScriptReadByte(ctx);
    u16 item2 = ScriptReadHalfword(ctx);

    if(species2 == SPECIES_NONE)
    {
        CreateScriptedWildMon(species, level, item);
        sIsScriptedWildDouble = FALSE;
    }
    else
    {
        CreateScriptedDoubleWildMon(species, level, item, species2, level2, item2);
        sIsScriptedWildDouble = TRUE;
    }

    return FALSE;
}

bool8 ScrCmd_dowildbattle(struct ScriptContext *ctx)
{
    if (sIsScriptedWildDouble == FALSE)
        BattleSetup_StartScriptedWildBattle();
    else
        BattleSetup_StartScriptedDoubleWildBattle();

    ScriptContext_Stop();

    return TRUE;
}

bool8 ScrCmd_pokemart(struct ScriptContext *ctx)
{
    const void *ptr = (void *)ScriptReadWord(ctx);

    CreatePokemartMenu(ptr);
    ScriptContext_Stop();
    return TRUE;
}

bool8 ScrCmd_pokemartdecoration(struct ScriptContext *ctx)
{
    const void *ptr = (void *)ScriptReadWord(ctx);

    CreateDecorationShop1Menu(ptr);
    ScriptContext_Stop();
    return TRUE;
}

// Changes clerk dialogue slightly from above. See MART_TYPE_DECOR2
bool8 ScrCmd_pokemartdecoration2(struct ScriptContext *ctx)
{
    const void *ptr = (void *)ScriptReadWord(ctx);

    CreateDecorationShop2Menu(ptr);
    ScriptContext_Stop();
    return TRUE;
}

bool8 ScrCmd_playslotmachine(struct ScriptContext *ctx)
{
    u8 machineId = VarGet(ScriptReadHalfword(ctx));

    PlaySlotMachine(machineId, CB2_ReturnToFieldContinueScriptPlayMapMusic);
    ScriptContext_Stop();
    return TRUE;
}

bool8 ScrCmd_setberrytree(struct ScriptContext *ctx)
{
    u8 treeId = ScriptReadByte(ctx);
    u8 berry = ScriptReadByte(ctx);
    u8 growthStage = ScriptReadByte(ctx);

    if (berry == 0)
        PlantBerryTree(treeId, berry, growthStage, FALSE);
    else
        PlantBerryTree(treeId, berry, growthStage, FALSE);
    return FALSE;
}

bool8 ScrCmd_getpokenewsactive(struct ScriptContext *ctx)
{
    u16 newsKind = VarGet(ScriptReadHalfword(ctx));

    gSpecialVar_Result = IsPokeNewsActive(newsKind);
    return FALSE;
}

bool8 ScrCmd_choosecontestmon(struct ScriptContext *ctx)
{
    ChooseContestMon();
    ScriptContext_Stop();
    return TRUE;
}


bool8 ScrCmd_startcontest(struct ScriptContext *ctx)
{
    StartContest();
    ScriptContext_Stop();
    return TRUE;
}

bool8 ScrCmd_showcontestresults(struct ScriptContext *ctx)
{
    ShowContestResults();
    ScriptContext_Stop();
    return TRUE;
}

bool8 ScrCmd_contestlinktransfer(struct ScriptContext *ctx)
{
    ContestLinkTransfer(gSpecialVar_ContestCategory);
    ScriptContext_Stop();
    return TRUE;
}

bool8 ScrCmd_dofieldeffect(struct ScriptContext *ctx)
{
    u16 effectId = VarGet(ScriptReadHalfword(ctx));

    sFieldEffectScriptId = effectId;
    FieldEffectStart(sFieldEffectScriptId);
    return FALSE;
}

bool8 ScrCmd_setfieldeffectargument(struct ScriptContext *ctx)
{
    u8 argNum = ScriptReadByte(ctx);

    gFieldEffectArguments[argNum] = (s16)VarGet(ScriptReadHalfword(ctx));
    return FALSE;
}

static bool8 WaitForFieldEffectFinish(void)
{
    if (!FieldEffectActiveListContains(sFieldEffectScriptId))
        return TRUE;
    else
        return FALSE;
}

bool8 ScrCmd_waitfieldeffect(struct ScriptContext *ctx)
{
    sFieldEffectScriptId = VarGet(ScriptReadHalfword(ctx));
    SetupNativeScript(ctx, WaitForFieldEffectFinish);
    return TRUE;
}

bool8 ScrCmd_setrespawn(struct ScriptContext *ctx)
{
    u16 healLocationId = VarGet(ScriptReadHalfword(ctx));

    SetLastHealLocationWarp(healLocationId);
    return FALSE;
}

bool8 ScrCmd_checkplayergender(struct ScriptContext *ctx)
{
    gSpecialVar_Result = gSaveBlock2Ptr->playerGender;
    return FALSE;
}

bool8 ScrCmd_playmoncry(struct ScriptContext *ctx)
{
    u16 species = VarGet(ScriptReadHalfword(ctx));
    u16 mode = VarGet(ScriptReadHalfword(ctx));

    PlayCry_Script(species, mode);
    return FALSE;
}

bool8 ScrCmd_waitmoncry(struct ScriptContext *ctx)
{
    SetupNativeScript(ctx, IsCryFinished);
    return TRUE;
}

bool8 ScrCmd_setmetatile(struct ScriptContext *ctx)
{
    u16 x = VarGet(ScriptReadHalfword(ctx));
    u16 y = VarGet(ScriptReadHalfword(ctx));
    u16 metatileId = VarGet(ScriptReadHalfword(ctx));
    bool16 isImpassable = VarGet(ScriptReadHalfword(ctx));

    x += MAP_OFFSET;
    y += MAP_OFFSET;
    if (!isImpassable)
        MapGridSetMetatileIdAt(x, y, metatileId);
    else
        MapGridSetMetatileIdAt(x, y, metatileId | MAPGRID_COLLISION_MASK);
    return FALSE;
}

bool8 ScrCmd_opendoor(struct ScriptContext *ctx)
{
    u16 x = VarGet(ScriptReadHalfword(ctx));
    u16 y = VarGet(ScriptReadHalfword(ctx));

    x += MAP_OFFSET;
    y += MAP_OFFSET;
    PlaySE(GetDoorSoundEffect(x, y));
    FieldAnimateDoorOpen(x, y);
    return FALSE;
}

bool8 ScrCmd_closedoor(struct ScriptContext *ctx)
{
    u16 x = VarGet(ScriptReadHalfword(ctx));
    u16 y = VarGet(ScriptReadHalfword(ctx));

    x += MAP_OFFSET;
    y += MAP_OFFSET;
    FieldAnimateDoorClose(x, y);
    return FALSE;
}

static bool8 IsDoorAnimationStopped(void)
{
    if (!FieldIsDoorAnimationRunning())
        return TRUE;
    else
        return FALSE;
}

bool8 ScrCmd_waitdooranim(struct ScriptContext *ctx)
{
    SetupNativeScript(ctx, IsDoorAnimationStopped);
    return TRUE;
}

bool8 ScrCmd_setdooropen(struct ScriptContext *ctx)
{
    u16 x = VarGet(ScriptReadHalfword(ctx));
    u16 y = VarGet(ScriptReadHalfword(ctx));

    x += MAP_OFFSET;
    y += MAP_OFFSET;
    FieldSetDoorOpened(x, y);
    return FALSE;
}

bool8 ScrCmd_setdoorclosed(struct ScriptContext *ctx)
{
    u16 x = VarGet(ScriptReadHalfword(ctx));
    u16 y = VarGet(ScriptReadHalfword(ctx));

    x += MAP_OFFSET;
    y += MAP_OFFSET;
    FieldSetDoorClosed(x, y);
    return FALSE;
}

// Below two are functions for elevators in RS, do nothing in Emerald
bool8 ScrCmd_addelevmenuitem(struct ScriptContext *ctx)
{
    u8 UNUSED v3 = ScriptReadByte(ctx);
    u16 UNUSED v5 = VarGet(ScriptReadHalfword(ctx));
    u16 UNUSED v7 = VarGet(ScriptReadHalfword(ctx));
    u16 UNUSED v9 = VarGet(ScriptReadHalfword(ctx));

    //ScriptAddElevatorMenuItem(v3, v5, v7, v9);
    return FALSE;
}

bool8 ScrCmd_showelevmenu(struct ScriptContext *ctx)
{
    /*ScriptShowElevatorMenu();
    ScriptContext_Stop();
    return TRUE;*/
    return FALSE;
}

bool8 ScrCmd_checkcoins(struct ScriptContext *ctx)
{
    u16 *ptr = GetVarPointer(ScriptReadHalfword(ctx));
    *ptr = GetCoins();
    return FALSE;
}

bool8 ScrCmd_addcoins(struct ScriptContext *ctx)
{
    u16 coins = VarGet(ScriptReadHalfword(ctx));

    if (AddCoins(coins) == TRUE)
        gSpecialVar_Result = FALSE;
    else
        gSpecialVar_Result = TRUE;
    return FALSE;
}

bool8 ScrCmd_removecoins(struct ScriptContext *ctx)
{
    u16 coins = VarGet(ScriptReadHalfword(ctx));

    if (RemoveCoins(coins) == TRUE)
        gSpecialVar_Result = FALSE;
    else
        gSpecialVar_Result = TRUE;
    return FALSE;
}

bool8 ScrCmd_moverotatingtileobjects(struct ScriptContext *ctx)
{
    u16 puzzleNumber = VarGet(ScriptReadHalfword(ctx));

    sMovingNpcId = MoveRotatingTileObjects(puzzleNumber);
    return FALSE;
}

bool8 ScrCmd_turnrotatingtileobjects(struct ScriptContext *ctx)
{
    TurnRotatingTileObjects();
    return FALSE;
}

bool8 ScrCmd_initrotatingtilepuzzle(struct ScriptContext *ctx)
{
    u16 isTrickHouse = VarGet(ScriptReadHalfword(ctx));

    InitRotatingTilePuzzle(isTrickHouse);
    return FALSE;
}

bool8 ScrCmd_freerotatingtilepuzzle(struct ScriptContext *ctx)
{
    FreeRotatingTilePuzzle();
    return FALSE;
}

bool8 ScrCmd_selectapproachingtrainer(struct ScriptContext *ctx)
{
    gSelectedObjectEvent = GetCurrentApproachingTrainerObjectEventId();
    return FALSE;
}

bool8 ScrCmd_lockfortrainer(struct ScriptContext *ctx)
{
    if (IsOverworldLinkActive())
    {
        return FALSE;
    }
    else
    {
        if (gObjectEvents[gSelectedObjectEvent].active)
        {
            FreezeForApproachingTrainers();
            SetupNativeScript(ctx, IsFreezeObjectAndPlayerFinished);
        }
        return TRUE;
    }
}

// This command will set a Pokémon's modernFatefulEncounter bit; there is no similar command to clear it.
bool8 ScrCmd_setmonmodernfatefulencounter(struct ScriptContext *ctx)
{
    bool8 isModernFatefulEncounter = TRUE;
    u16 partyIndex = VarGet(ScriptReadHalfword(ctx));

    SetMonData(&gPlayerParty[partyIndex], MON_DATA_MODERN_FATEFUL_ENCOUNTER, &isModernFatefulEncounter);
    return FALSE;
}

bool8 ScrCmd_checkmonmodernfatefulencounter(struct ScriptContext *ctx)
{
    u16 partyIndex = VarGet(ScriptReadHalfword(ctx));

    gSpecialVar_Result = GetMonData(&gPlayerParty[partyIndex], MON_DATA_MODERN_FATEFUL_ENCOUNTER, NULL);
    return FALSE;
}

bool8 ScrCmd_trywondercardscript(struct ScriptContext *ctx)
{
    const u8 *script = GetSavedRamScriptIfValid();

    if (script)
    {
        gRamScriptRetAddr = ctx->scriptPtr;
        ScriptJump(ctx, script);
    }
    return FALSE;
}

// This warp is only used by the Union Room.
// For the warp used by the Aqua Hideout, see DoTeleportTileWarp
bool8 ScrCmd_warpspinenter(struct ScriptContext *ctx)
{
    u8 mapGroup = ScriptReadByte(ctx);
    u8 mapNum = ScriptReadByte(ctx);
    u8 warpId = ScriptReadByte(ctx);
    u16 x = VarGet(ScriptReadHalfword(ctx));
    u16 y = VarGet(ScriptReadHalfword(ctx));

    SetWarpDestination(mapGroup, mapNum, warpId, x, y);
    SetSpinStartFacingDir(GetPlayerFacingDirection());
    DoSpinEnterWarp();
    ResetInitialPlayerAvatarState();
    return TRUE;
}

bool8 ScrCmd_setmonmetlocation(struct ScriptContext *ctx)
{
    u16 partyIndex = VarGet(ScriptReadHalfword(ctx));
    u8 location = ScriptReadByte(ctx);

    if (partyIndex < PARTY_SIZE)
        SetMonData(&gPlayerParty[partyIndex], MON_DATA_MET_LOCATION, &location);
    return FALSE;
}

static void CloseBrailleWindow(void)
{
    ClearStdWindowAndFrame(sBrailleWindowId, TRUE);
    RemoveWindow(sBrailleWindowId);
}

bool8 ScrCmd_buffertrainerclassname(struct ScriptContext *ctx)
{
    u8 stringVarIndex = ScriptReadByte(ctx);
    u16 trainerClassId = VarGet(ScriptReadHalfword(ctx));

    StringCopy(sScriptStringVars[stringVarIndex], GetTrainerClassNameFromId(trainerClassId));
    return FALSE;
}

bool8 ScrCmd_buffertrainername(struct ScriptContext *ctx)
{
    u8 stringVarIndex = ScriptReadByte(ctx);
    u16 trainerClassId = VarGet(ScriptReadHalfword(ctx));

    StringCopy(sScriptStringVars[stringVarIndex], GetTrainerNameFromId(trainerClassId));
    return FALSE;
}

void SetMovingNpcId(u16 npcId)
{
    sMovingNpcId = npcId;
}

bool8 ScrCmd_warpwhitefade(struct ScriptContext *ctx)
{
    u8 mapGroup = ScriptReadByte(ctx);
    u8 mapNum = ScriptReadByte(ctx);
    u8 warpId = ScriptReadByte(ctx);
    u16 x = VarGet(ScriptReadHalfword(ctx));
    u16 y = VarGet(ScriptReadHalfword(ctx));

    SetWarpDestination(mapGroup, mapNum, warpId, x, y);
    DoWhiteFadeWarp();
    ResetInitialPlayerAvatarState();
    return TRUE;
}

bool8 ScrCmd_shownpcpic(struct ScriptContext *ctx)
{
    u16 species = VarGet(ScriptReadHalfword(ctx));
    u8 x = ScriptReadByte(ctx);
    u8 y = ScriptReadByte(ctx);

    FlagSet(FLAG_SHOW_NPC_PICTURE);
    ScriptMenu_ShowPokemonPic(species, x, y);
    return FALSE;
}

bool8 ScrCmd_shownpcpic2(struct ScriptContext *ctx)
{
    u16 species = VarGet(ScriptReadHalfword(ctx));
    u8 x = ScriptReadByte(ctx);
    u8 y = ScriptReadByte(ctx);
    u8 isLeft = ScriptReadByte(ctx);

    FlagSet(FLAG_SHOW_NPC_PICTURE);
    ScriptMenu_ShowPokemonPicSlot2(species, x, y, isLeft);
    return FALSE;
}

bool8 ScrCmd_hidenpc2(struct ScriptContext *ctx)
{
    // The hide function returns a pointer to a function
    // that returns true once the pic is hidden
    bool8 (*func)(void) = ScriptMenu_HidePokemonPicSlot2();

    if (func == NULL)
        return FALSE;
    SetupNativeScript(ctx, func);
    return TRUE;
}

#include "bg.h"

bool8 ScrCmd_blacktext(struct ScriptContext *ctx)
{
    u8 x = ScriptReadByte(ctx);
    u8 y = ScriptReadByte(ctx);
    const u8 *msg = (const u8 *)ScriptReadWord(ctx);
    
    FlagSet(FLAG_SHOW_BLACK_TEXT);
    ChangeBgX(0, x << 8, BG_COORD_SET);
    ChangeBgY(0, y << 8, BG_COORD_SET);

    ShowFieldMessage(msg);

    return FALSE;
}

bool8 ScrCmd_closeblacktext(struct ScriptContext *ctx)
{
    LoadMessageBoxAndBorderGfx();
    ChangeBgX(0, 0, BG_COORD_SET);
    ChangeBgY(0, 0, BG_COORD_SET);
    FlagClear(FLAG_SHOW_BLACK_TEXT);
    return FALSE;
}

static const struct BgTemplate sBgTemplates[] =
{
    {
        .bg = 0,
        .charBaseIndex = 3,
        .mapBaseIndex = 31,
        .screenSize = 0,
        .paletteMode = 0,
        .priority = 0,
        .baseTile = 0
    },
    {
        .bg = 2,
        .charBaseIndex = 0,
        .mapBaseIndex = 29,
        .screenSize = 0,
        .paletteMode = 1,
        .priority = 3,
        .baseTile = 0
    },
};

static const struct WindowTemplate sWindowTemplates[] =
{
    {
        .bg = 0,
        .tilemapLeft = 3,
        .tilemapTop = 15,
        .width = 24,
        .height = 4,
        .paletteNum = 15,
        .baseBlock = 0x010
    },
    DUMMY_WIN_TEMPLATE,
};

#define PLAY_CG             (0)
#define PLAY_MESSAGE        (1)
#define WAIT_BUTTON         (2)
#define PLAY_FADE           (3)
#define PLAY_END            (4)

static const u8 sDefaultCG_TileMap[] = INCBIN_U8("graphics/cg/raw.bin.lz");
static const u8 sCGA1_Tiles[] = INCBIN_U8("graphics/cg/A1.8bpp.lz");
static const u8 sCGA1_Pal[] = INCBIN_U8("graphics/cg/A1.gbapal");
static const u8 sCGA2_Tiles[] = INCBIN_U8("graphics/cg/A2.8bpp.lz");
static const u8 sCGA2_Pal[] = INCBIN_U8("graphics/cg/A2.gbapal");
static const u8 sCG1_Tiles[] = INCBIN_U8("graphics/cg/1.8bpp.lz");
static const u8 sCG1_Pal[] = INCBIN_U8("graphics/cg/1.gbapal");
static const u8 sCG2_Tiles[] = INCBIN_U8("graphics/cg/2.8bpp.lz");
static const u8 sCG2_Pal[] = INCBIN_U8("graphics/cg/2.gbapal");
static const u8 sCG3_Tiles[] = INCBIN_U8("graphics/cg/3.8bpp.lz");
static const u8 sCG3_Pal[] = INCBIN_U8("graphics/cg/3.gbapal");
static const u8 sCG4_Tiles[] = INCBIN_U8("graphics/cg/4.8bpp.lz");
static const u8 sCG4_Pal[] = INCBIN_U8("graphics/cg/4.gbapal");
static const u8 sCGS1_Tiles[] = INCBIN_U8("graphics/cg/S1.8bpp.lz");
static const u8 sCGS1_Pal[] = INCBIN_U8("graphics/cg/S1.gbapal");
static const u8 sCGS2_Tiles[] = INCBIN_U8("graphics/cg/S2.8bpp.lz");
static const u8 sCGS2_Pal[] = INCBIN_U8("graphics/cg/S2.gbapal");
static const u8 sCGS3_Tiles[] = INCBIN_U8("graphics/cg/S3.8bpp.lz");
static const u8 sCGS3_Pal[] = INCBIN_U8("graphics/cg/S3.gbapal");
static const u8 sCGS4_Tiles[] = INCBIN_U8("graphics/cg/S4.8bpp.lz");
static const u8 sCGS4_Pal[] = INCBIN_U8("graphics/cg/S4.gbapal");
static const u8 sCGB1_Tiles[] = INCBIN_U8("graphics/cg/B1.8bpp.lz");
static const u8 sCGB1_Pal[] = INCBIN_U8("graphics/cg/B1.gbapal");
static const u8 sCGB2_Tiles[] = INCBIN_U8("graphics/cg/B2.8bpp.lz");
static const u8 sCGB2_Pal[] = INCBIN_U8("graphics/cg/B2.gbapal");
static const u8 sCGB3_Tiles[] = INCBIN_U8("graphics/cg/B3.8bpp.lz");
static const u8 sCGB3_Pal[] = INCBIN_U8("graphics/cg/B3.gbapal");
static const u8 sCGB4_Tiles[] = INCBIN_U8("graphics/cg/B4.8bpp.lz");
static const u8 sCGB4_Pal[] = INCBIN_U8("graphics/cg/B4.gbapal");
static const u8 sCGB5_Tiles[] = INCBIN_U8("graphics/cg/B5.8bpp.lz");
static const u8 sCGB5_Pal[] = INCBIN_U8("graphics/cg/B5.gbapal");
static const u8 sCGB6_Tiles[] = INCBIN_U8("graphics/cg/B6.8bpp.lz");
static const u8 sCGB6_Pal[] = INCBIN_U8("graphics/cg/B6.gbapal");
static const u8 sCGC1_Tiles[] = INCBIN_U8("graphics/cg/C1.8bpp.lz");
static const u8 sCGC1_Pal[] = INCBIN_U8("graphics/cg/C1.gbapal");
static const u8 sCGC2_Tiles[] = INCBIN_U8("graphics/cg/C2.8bpp.lz");
static const u8 sCGC2_Pal[] = INCBIN_U8("graphics/cg/C2.gbapal");
static const u8 sCGC3_Tiles[] = INCBIN_U8("graphics/cg/C3.8bpp.lz");
static const u8 sCGC3_Pal[] = INCBIN_U8("graphics/cg/C3.gbapal");
static const u8 sCGD1_Tiles[] = INCBIN_U8("graphics/cg/D1.8bpp.lz");
static const u8 sCGD1_Pal[] = INCBIN_U8("graphics/cg/D1.gbapal");
static const u8 sCGD2_Tiles[] = INCBIN_U8("graphics/cg/D2.8bpp.lz");
static const u8 sCGD2_Pal[] = INCBIN_U8("graphics/cg/D2.gbapal");
static const u8 sCGD3_Tiles[] = INCBIN_U8("graphics/cg/D3.8bpp.lz");
static const u8 sCGD3_Pal[] = INCBIN_U8("graphics/cg/D3.gbapal");
static const u8 sCGD4_Tiles[] = INCBIN_U8("graphics/cg/D4.8bpp.lz");
static const u8 sCGD4_Pal[] = INCBIN_U8("graphics/cg/D4.gbapal");
static const u8 sCGD5_Tiles[] = INCBIN_U8("graphics/cg/D5.8bpp.lz");
static const u8 sCGD5_Pal[] = INCBIN_U8("graphics/cg/D5.gbapal");
static const u8 sCGE1_Tiles[] = INCBIN_U8("graphics/cg/E1.8bpp.lz");
static const u8 sCGE1_Pal[] = INCBIN_U8("graphics/cg/E1.gbapal");
static const u8 sCGE2_Tiles[] = INCBIN_U8("graphics/cg/E2.8bpp.lz");
static const u8 sCGE2_Pal[] = INCBIN_U8("graphics/cg/E2.gbapal");
static const u8 sCGF1_Tiles[] = INCBIN_U8("graphics/cg/F1.8bpp.lz");
static const u8 sCGF1_Pal[] = INCBIN_U8("graphics/cg/F1.gbapal");
static const u8 sCGG1_Tiles[] = INCBIN_U8("graphics/cg/G1.8bpp.lz");
static const u8 sCGG1_Pal[] = INCBIN_U8("graphics/cg/G1.gbapal");
static const u8 sCGG2_Tiles[] = INCBIN_U8("graphics/cg/G2.8bpp.lz");
static const u8 sCGG2_Pal[] = INCBIN_U8("graphics/cg/G2.gbapal");
static const u8 sCGG3_Tiles[] = INCBIN_U8("graphics/cg/G3.8bpp.lz");
static const u8 sCGG3_Pal[] = INCBIN_U8("graphics/cg/G3.gbapal");
static const u8 sCGH1_Tiles[] = INCBIN_U8("graphics/cg/H1.8bpp.lz");
static const u8 sCGH1_Pal[] = INCBIN_U8("graphics/cg/H1.gbapal");
static const u8 sCGJ1_Tiles[] = INCBIN_U8("graphics/cg/J1.8bpp.lz");
static const u8 sCGJ1_Pal[] = INCBIN_U8("graphics/cg/J1.gbapal");
static const u8 sCGB7_Tiles[] = INCBIN_U8("graphics/cg/B7.8bpp.lz");
static const u8 sCGB7_Pal[] = INCBIN_U8("graphics/cg/B7.gbapal");
static const u8 sCGB8_Tiles[] = INCBIN_U8("graphics/cg/B8.8bpp.lz");
static const u8 sCGB8_Pal[] = INCBIN_U8("graphics/cg/B8.gbapal");
static const u8 sCGK1_Tiles[] = INCBIN_U8("graphics/cg/K1.8bpp.lz");
static const u8 sCGK1_Pal[] = INCBIN_U8("graphics/cg/K1.gbapal");
static const u8 sCGK2_Tiles[] = INCBIN_U8("graphics/cg/K2.8bpp.lz");
static const u8 sCGK2_Pal[] = INCBIN_U8("graphics/cg/K2.gbapal");
static const u8 sCGK3_Tiles[] = INCBIN_U8("graphics/cg/K3.8bpp.lz");
static const u8 sCGK3_Pal[] = INCBIN_U8("graphics/cg/K3.gbapal");
static const u8 sCGZ_Tiles[] = INCBIN_U8("graphics/cg/Z.8bpp.lz");
static const u8 sCGZ_Pal[] = INCBIN_U8("graphics/cg/Z.gbapal");
static const u8 sCGI1_Tiles[] = INCBIN_U8("graphics/cg/I1.8bpp.lz");
static const u8 sCGI1_Pal[] = INCBIN_U8("graphics/cg/I1.gbapal");
static const u8 sCGI2_Tiles[] = INCBIN_U8("graphics/cg/I2.8bpp.lz");
static const u8 sCGI2_Pal[] = INCBIN_U8("graphics/cg/I2.gbapal");
static const u8 sCGI3_Tiles[] = INCBIN_U8("graphics/cg/I3.8bpp.lz");
static const u8 sCGI3_Pal[] = INCBIN_U8("graphics/cg/I3.gbapal");
static const u8 sCGI4_Tiles[] = INCBIN_U8("graphics/cg/I4.8bpp.lz");
static const u8 sCGI4_Pal[] = INCBIN_U8("graphics/cg/I4.gbapal");
static const u8 sCGI5_Tiles[] = INCBIN_U8("graphics/cg/I5.8bpp.lz");
static const u8 sCGI5_Pal[] = INCBIN_U8("graphics/cg/I5.gbapal");

static const u8* sCGTable[][10] = 
{
    [0] = {sCG1_Tiles, sCG1_Pal},
    [1] = {sCG2_Tiles, sCG2_Pal},
    [2] = {sCG3_Tiles, sCG3_Pal},
    [3] = {sCG4_Tiles, sCG4_Pal},
    [4] = {sCGS1_Tiles, sCGS1_Pal},
    [5] = {sCGS2_Tiles, sCGS2_Pal},
    [6] = {sCGS3_Tiles, sCGS3_Pal},
    [7] = {sCGS4_Tiles, sCGS4_Pal},
    [8] = {sCGA1_Tiles, sCGA1_Pal},
    [9] = {sCGA2_Tiles, sCGA2_Pal},
    [10] = {sCGB1_Tiles, sCGB1_Pal},
    [11] = {sCGB2_Tiles, sCGB2_Pal},
    [12] = {sCGB3_Tiles, sCGB3_Pal},
    [13] = {sCGB4_Tiles, sCGB4_Pal},
    [14] = {sCGB5_Tiles, sCGB5_Pal},
    [15] = {sCGB6_Tiles, sCGB6_Pal},
    [16] = {sCGC1_Tiles, sCGC1_Pal},
    [17] = {sCGC2_Tiles, sCGC2_Pal},
    [18] = {sCGC3_Tiles, sCGC3_Pal},
    [19] = {sCGD1_Tiles, sCGD1_Pal},
    [20] = {sCGD2_Tiles, sCGD2_Pal},
    [21] = {sCGD3_Tiles, sCGD3_Pal},
    [22] = {sCGD4_Tiles, sCGD4_Pal},
    [23] = {sCGD5_Tiles, sCGD5_Pal},
    [24] = {sCGE1_Tiles, sCGE1_Pal},
    [25] = {sCGE2_Tiles, sCGE2_Pal},
    [26] = {sCGF1_Tiles, sCGF1_Pal},
    [27] = {sCGG1_Tiles, sCGG1_Pal},
    [28] = {sCGG2_Tiles, sCGG2_Pal},
    [29] = {sCGG3_Tiles, sCGG3_Pal},
    [30] = {sCGH1_Tiles, sCGH1_Pal},
    [31] = {sCGJ1_Tiles, sCGJ1_Pal},
    [32] = {sCGB7_Tiles, sCGB7_Pal},
    [33] = {sCGB8_Tiles, sCGB8_Pal},
    [34] = {sCGK1_Tiles, sCGK1_Pal},
    [35] = {sCGK2_Tiles, sCGK2_Pal},
    [36] = {sCGK3_Tiles, sCGK3_Pal},
    [37] = {sCGZ_Tiles, sCGZ_Pal},
    [38] = {sCGI1_Tiles, sCGI1_Pal},
    [39] = {sCGI2_Tiles, sCGI2_Pal},
    [40] = {sCGI3_Tiles, sCGI3_Pal},
    [41] = {sCGI4_Tiles, sCGI4_Pal},
    [42] = {sCGI5_Tiles, sCGI5_Pal},

};

static const u8* sCGMessage[] = 
{
    [0] = COMPOUND_STRING("?:如果时间能永远\n停留在这个时刻就好了。\p洛汐:是啊。"),
    [1] = COMPOUND_STRING("洛汐:你知道启明星吗？\n就是在太阳升起前，\l最后那颗最亮的星星。\p?:当然知道啊。"),
    [2] = COMPOUND_STRING("洛汐:那……在未来的某一天，\n如果我遇到危机，\l你会像启明星一样，\l将我从黑暗中拯救出来吗？”\p?:嗯，当然会啦。\n你也要当我的启明星公主，\l如果我哪天不小心踏入了黑暗，\l你也要来拯救我哦。"),
    [3] = COMPOUND_STRING("洛汐:那说好了，不许反悔。\p?:嗯，当然。"),
    [4] = COMPOUND_STRING("洛汐:这是哪儿？\n我的名字……\l什么都想不起来……"),
    [5] = COMPOUND_STRING("洛汐:前面是什么地方……"),
    [6] = COMPOUND_STRING("凯伊:我是来跟你谈\n洛汐的事情的……"),
    [7] = COMPOUND_STRING("琰星:明明就是个废物……"),
    [8] = COMPOUND_STRING("凯伊:!!!!!!!!!!!!"),
    [9] = COMPOUND_STRING("………………………………"),
    [10] = COMPOUND_STRING("琰星:(他拿出来他的手机，\n打开了一个视频放在了凯伊眼前。)"),
    [11] = COMPOUND_STRING("凯伊:你这个混蛋！\n你竟然敢对洛汐做这种事！\l你简直是个禽兽！\l我一定要让你付出代价！"),
    [12] = COMPOUND_STRING("琰星:喂……你出够气了吧……\n你知道吗？如果你泄露出去……\l倒霉的可是洛汐啊，\l你不怕我手里的东西泄露出去吗？"),
    [13] = COMPOUND_STRING("琰星:(站起身来，\n从凯伊的口袋里拿出手机)\l哈哈哈哈！！\l而且，你做的这些事情\l可是小偷才会做的啊！\l你居然偷我的手机，还查看我的隐私。\l我知道你喜欢洛汐，\l但是！不管你怎么揍我，\l我都不会和洛汐分手的！\l不管你再怎么喜欢洛汐，\l用暴力手段是无法获得真爱的呀！\p凯伊:(刚刚偷偷把手机\n放我口袋里的吗？\l事到如今，玩这种把戏……)\p洛汐……你还是早点\n和这个人渣分手比较好！\p洛汐:你才是人渣吧？\p围观群众:小偷啊。\n围观群众:暴力狂滚出去，丢人！"),
    [14] = COMPOUND_STRING("凯伊:洛汐！和他在一起\n你没有发现不对劲吗？\l你应该有感觉的吧？\p洛汐:不对劲的是你吧？\n(洛汐眼角凝聚着泪珠)"),
    [15] = COMPOUND_STRING("凯伊:可恶……………………\n怎么会这样……\l(凯伊跪倒在地上，泪流满面)"),
    [16] = COMPOUND_STRING("洛汐:呜呜呜呜……\n不要打了，疼……"),
    [17] = COMPOUND_STRING("洛汐:凯伊……我该怎么办……\n我好害怕……"),
    [18] = COMPOUND_STRING("(洛汐悲伤的啜咽声在屋内环绕)"),
    [19] = COMPOUND_STRING("洛曼:\n反正你也成为祭品要死了……\l(她一边说出这样的话，\l一边对洛汐下了很重的手)"),
    [20] = COMPOUND_STRING("(洛汐倒在地上奄奄一息，\n在拳打脚踢中直到断气……)"),
    [21] = COMPOUND_STRING("(随着回忆仿佛回到了那天一般，\n陷入在暴力中已经感觉不到任何痛觉，\l只是临死的那一刻，\l还在幻想着凯伊会来拯救自己。)"),
    [22] = COMPOUND_STRING("(最后一刻在幻觉中，\n看到了凯伊到身影，\l拉着自己的手。"),
    [23] = COMPOUND_STRING("(飞奔着逃离了这个地方……)"),
    [24] = COMPOUND_STRING("洛汐:这个背影……"),
    [25] = COMPOUND_STRING("洛曼:由你来代替我的话……\n我就不用去死了……"),
    [26] = COMPOUND_STRING("信件:晚上可以到我家附近吗？\n我有点事情想跟你说……\l我经常被我妈殴打，\l我不敢让别人看到身上的伤，\p一直以来都藏的很好，\n但是我感觉已经要忍受到极限了，\l如果我是你的启明星公主，\l你可以来拯救我吗？"),
    [27] = COMPOUND_STRING("晓暄:凯伊……\n我一直……很喜欢你。\l你愿意……和我交往吗？"),
    [28] = COMPOUND_STRING("凯伊:晓暄，谢谢你……\n能被你这样认可。\l但是，对不起……我的心意，\l早已全部交给了洛汐……"),
    [29] = COMPOUND_STRING("洛汐:晓暄也喜欢凯伊么……"),
    [30] = COMPOUND_STRING("洛曼:犯错的孩子……\n需要好好纠正过来才行……"),
    [31] = COMPOUND_STRING("琰星:(掐着屁股往自己胯下按)\n对…就这个弧度…腰再扭得用力点…\l宝贝儿…你可真诱人…\l(喘粗气)比洛汐那死鱼样强十倍\l对，就这样……再贴近我一些……\p???:(指甲抠进他后背)哼……\n我们这样被洛汐知道怎么办？\p琰星:我早就玩腻了。\n她怎么比得上你……\l又软，又润，叫得也好听……\l现在知道怕了？\l(舔她耳垂)\l上次在更衣室扒老子拉链的骚劲呢\p???:(被顶得往前蹿)\n轻点…树枝扎着腿了…\p琰星:明天带你去买黑丝…\n现在给老子夹紧……"),
    [32] = COMPOUND_STRING("琰星:怎么样？心动了没有？\n我今天约好她晚上来我家玩了，\l她一定会来的，你也过来吧，\l我可以让你玩几回哦，\l只要你对我的事情保密的话……"),
    [33] = COMPOUND_STRING("琰星:(哎呀，你刚刚仅仅是\n想象了一下就一定那个了吧？\l如果她不愿意的话，来硬的也……"),
    [34] = COMPOUND_STRING("洛汐:嗯，是我，\n所有的事情我都知道了。\l不要哭，笑起来，\l一定很痛吧。"),
    [35] = COMPOUND_STRING("洛汐:谢谢你还记得\n启明星公主的约定，\l当初要不是晓暄的阻挠，\l或许我们会很要好，\l甚至我们会……\l总之会有无限的可能吧。\l十年了，呆在这个地方一定痛苦吧，\l我们的约定，还有我承诺的那部分，\l我也要将你从黑暗中拯救出来，\l让我们完成十年前未完成的祭祀，\l然后走向往生……\l希望在来生，\l我们可以拥有一个完美的结局……"),
    [36] = COMPOUND_STRING("()"),
    [37] = COMPOUND_STRING("某个早晨，\n偷偷跑出去玩的少女\l在森林里邂逅了少年，\l那是自小就被称为\l恶魔怪物的少年，\l自幼父母双亡，\l独自一人在森林里生活。\l那天，他们玩耍的很开心，\l直到黄昏才回家。\l之后，少女经常跑出来找少年玩。"),
    [38] = COMPOUND_STRING("但是，有一天，\n这件事被国王知道了，\l他下令逮捕了少年，但在少女要挟下，\l国王放男孩回去了。"),
    [39] = COMPOUND_STRING("之后国王秘密逮捕少年\n准备流放到世外之岛。\l这件事被少女知道了，\l连夜从城堡逃出，\l躲到流放之船上。"),
    [40] = COMPOUND_STRING("一个是阿尔法王国国王的傀儡少女，\n一个是从出生就不被允许存在的怪物。\l两个孩子最后的那一段旅程:\l丑陋不堪地挣扎求生，\l疼痛逐步侵染的慢性死亡，\l在绝境中任然挣扎着想要紧握在一起的双手，\l一起浅唱的那首仅存的记忆中的童谣，\l最后遗留的是2人相偎的臂怀。"),
    [41] = COMPOUND_STRING("他们死后，\nGHOST席卷了整个阿尔法大陆。"),
    [42] = COMPOUND_STRING("仪式失败再次导致了\n大范围的灾厄事件……"),
};

static const u8 sCGAnimList[][60] = 
{
    [0] = {
        PLAY_CG, 0,         // 播放CG
        PLAY_MESSAGE, 0,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_CG, 1,         // 播放cg
        PLAY_MESSAGE, 1,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_CG, 2,         // 播放cg
        PLAY_MESSAGE, 2,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_CG, 3,         // 播放cg
        PLAY_MESSAGE, 3,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_END            // 结束
    },
    [1] = {
        PLAY_CG, 8,         // 播放CG
        PLAY_MESSAGE, 4,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_CG, 9,         // 播放CG
        PLAY_MESSAGE, 5,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_END            // 结束
    },
    [2] = {
        PLAY_CG, 4,         // 播放CG
        PLAY_MESSAGE, 6,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_CG, 5,         // 播放cg
        PLAY_MESSAGE, 7,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_CG, 6,         // 播放cg
        PLAY_MESSAGE, 8,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_CG, 7,         // 播放cg
        PLAY_MESSAGE, 9,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_END            // 结束
    },
    [3] = {
        PLAY_CG, 10,         // 播放CG
        PLAY_MESSAGE, 10,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_CG, 32,         // 播放CG
        PLAY_MESSAGE, 32,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_CG, 33,         // 播放CG
        PLAY_MESSAGE, 33,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_CG, 11,         // 播放cg
        PLAY_MESSAGE, 11,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_CG, 12,         // 播放cg
        PLAY_MESSAGE, 12,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_CG, 13,         // 播放cg
        PLAY_MESSAGE, 13,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_CG, 14,         // 播放cg
        PLAY_MESSAGE, 14,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_CG, 15,         // 播放cg
        PLAY_MESSAGE, 15,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_END            // 结束
    },
    [4] = {
        PLAY_CG, 16,         // 播放CG
        PLAY_MESSAGE, 16,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_CG, 18,         // 播放CG
        PLAY_MESSAGE, 18,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_CG, 17,         // 播放CG
        PLAY_MESSAGE, 17,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_END            // 结束
    },
    [5] = {
        PLAY_CG, 19,         // 播放CG
        PLAY_MESSAGE, 19,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_CG, 20,         // 播放cg
        PLAY_MESSAGE, 20,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_CG, 21,         // 播放cg
        PLAY_MESSAGE, 21,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_CG, 22,         // 播放cg
        PLAY_MESSAGE, 22,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_CG, 23,         // 播放cg
        PLAY_MESSAGE, 23,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_END            // 结束
    },
    [6] = {
        PLAY_CG, 24,         // 播放CG
        PLAY_MESSAGE, 24,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_CG, 25,         // 播放CG
        PLAY_MESSAGE, 25,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_END            // 结束
    },
    [7] = {
        PLAY_CG, 26,         // 播放CG
        PLAY_MESSAGE, 26,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_END            // 结束
    },
    [8] = {
        PLAY_CG, 27,         // 播放CG
        PLAY_MESSAGE, 27,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_CG, 28,         // 播放CG
        PLAY_MESSAGE, 28,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_CG, 29,         // 播放CG
        PLAY_MESSAGE, 29,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_END            // 结束
    },
    [9] = {
        PLAY_CG, 30,         // 播放CG
        PLAY_MESSAGE, 30,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_END            // 结束
    },
    [10] = {
        PLAY_CG, 31,         // 播放CG
        PLAY_MESSAGE, 31,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_END            // 结束
    },
    [11] = {
        PLAY_CG, 34,         // 播放CG
        PLAY_MESSAGE, 34,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_CG, 35,         // 播放CG
        PLAY_MESSAGE, 35,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_END            // 结束
    },
    [12] = {
        PLAY_CG, 37,         // 播放CG
        WAIT_BUTTON, 0,     // 等待按钮
    },
    [13] = {
        PLAY_CG, 38,         // 播放CG
        PLAY_MESSAGE, 37,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_CG, 39,         // 播放cg
        PLAY_MESSAGE, 38,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_CG, 40,         // 播放cg
        PLAY_MESSAGE, 39,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_CG, 41,         // 播放cg
        PLAY_MESSAGE, 40,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_CG, 42,         // 播放cg
        PLAY_MESSAGE, 41,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_END            // 结束
    },
    [14] = {
        PLAY_CG, 42,         // 播放CG
        PLAY_MESSAGE, 42,    // 播放对话
        WAIT_BUTTON, 0,     // 等待按钮
        PLAY_CG, 37,         // 播放CG
        WAIT_BUTTON, 0,     // 等待按钮
    },
};

static void Task_ReadCMD(u8 taskId);

static void VblankCB_ShowCG(void)
{
    LoadOam();
    ProcessSpriteCopyRequests();
    TransferPlttBuffer();
}

static void CB2_ShowCGWait(void)
{
    RunTasks();
    DoScheduledBgTilemapCopiesToVram();
    UpdatePaletteFade();
}

static void CB2_ShowCG(void)
{
    SetVBlankCallback(NULL);

    SetGpuReg(REG_OFFSET_DISPCNT, 0);
    SetGpuReg(REG_OFFSET_BG3CNT, 0);
    SetGpuReg(REG_OFFSET_BG2CNT, 0);
    SetGpuReg(REG_OFFSET_BG1CNT, 0);
    SetGpuReg(REG_OFFSET_BG0CNT, 0);

    ChangeBgX(0, 0, BG_COORD_SET);
    ChangeBgY(0, 0, BG_COORD_SET);
    ChangeBgX(1, 0, BG_COORD_SET);
    ChangeBgY(1, 0, BG_COORD_SET);
    ChangeBgX(2, 0, BG_COORD_SET);
    ChangeBgY(2, 0, BG_COORD_SET);
    ChangeBgX(3, 0, BG_COORD_SET);
    ChangeBgY(3, 0, BG_COORD_SET);

    DmaFill16(3, 0, VRAM, VRAM_SIZE);
    DmaFill32(3, 0, OAM, OAM_SIZE);
    DmaFill16(3, 0, PLTT, PLTT_SIZE);

    u8 cgindex = sCGAnimList[gSpecialVar_0x8004][1];

    LZ77UnCompVram((void*)sDefaultCG_TileMap, (void *)(BG_SCREEN_ADDR(29)));
    LZ77UnCompVram((void*)sCGTable[cgindex][0], (void *)(BG_CHAR_ADDR(0)));

    ResetBgsAndClearDma3BusyFlags(0);
    InitBgsFromTemplates(0, sBgTemplates, ARRAY_COUNT(sBgTemplates));

    ScanlineEffect_Stop();
    ResetTasks();
    ResetSpriteData();
    ResetPaletteFade();
    FreeAllSpritePalettes();
    ResetAllPicSprites();

    InitWindows(sWindowTemplates);
    DeactivateAllTextPrinters();

    LoadPalette((void*)sCGTable[cgindex][1], BG_PLTT_ID(0), 15 * 32);
    LoadPalette(GetOverworldTextboxPalettePtr(), BG_PLTT_ID(15), PLTT_SIZE_4BPP);
    BeginNormalPaletteFade(PALETTES_ALL, 0, 0x10, 0, 0);

    EnableInterrupts(DISPSTAT_VBLANK);
    SetVBlankCallback(VblankCB_ShowCG);
    SetMainCallback2(CB2_ShowCGWait);
    u8 taskID = CreateTask(Task_ReadCMD, 0);
    gTasks[taskID].data[0] = 2;

    SetGpuReg(REG_OFFSET_WININ, WININ_WIN0_BG_ALL | WININ_WIN0_OBJ | WININ_WIN0_CLR);
    SetGpuReg(REG_OFFSET_WINOUT, WINOUT_WIN01_BG_ALL | WINOUT_WIN01_OBJ);
    SetGpuReg(REG_OFFSET_WIN0H, WIN_RANGE(10, 230));
    SetGpuReg(REG_OFFSET_WIN0V, WIN_RANGE(115, 155));
    SetGpuReg(REG_OFFSET_DISPCNT, DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_WIN0_ON);
    SetGpuReg(REG_OFFSET_BLDCNT, BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG3 | BLDCNT_EFFECT_DARKEN);
    SetGpuReg(REG_OFFSET_BLDY, 7);

    ShowBg(0);
    ShowBg(2);
}

static void Task_ChangeCG(u8 taskId)
{
    if (!gPaletteFade.active)
    {
        LZ77UnCompVram((void*)sDefaultCG_TileMap, (void *)(BG_SCREEN_ADDR(29)));
        LZ77UnCompVram((void*)sCGTable[gTasks[taskId].data[1]][0], (void *)(BG_CHAR_ADDR(0)));
        LoadPalette((void*)sCGTable[gTasks[taskId].data[1]][1], BG_PLTT_ID(0), 15 * 32);
        BeginNormalPaletteFade(PALETTES_ALL, 0, 0x10, 0, 0);
        gTasks[taskId].func = Task_ReadCMD;
    }
}

static void Task_PlayMessage(u8 taskId)
{
    if (RunTextPrintersAndIsPrinter0Active())
        return;

    if (JOY_NEW(A_BUTTON | B_BUTTON))
    {
        SetGpuReg(REG_OFFSET_BLDCNT, BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG3 | BLDCNT_EFFECT_NONE);
        HideBg(0);
        FillWindowPixelBuffer(0, PIXEL_FILL(0));
        PutWindowTilemap(0);
        CopyWindowToVram(0, COPYWIN_FULL);
        gTasks[taskId].func = Task_ReadCMD;
    }
}

static void Task_WaitFadeAndButton(u8 taskId)
{
    if (JOY_NEW(A_BUTTON | B_BUTTON))
    {
        gTasks[taskId].func = Task_ReadCMD;
    }
}

static const u8 sText_Color[] = {0, 1, 2};

static void Task_ReadCMD(u8 taskId)
{
    if (gPaletteFade.active)
        return;

    u8 animID = sCGAnimList[gSpecialVar_0x8004][gTasks[taskId].data[0]++];
    u8 animParam = sCGAnimList[gSpecialVar_0x8004][gTasks[taskId].data[0]++];

    if (animID == PLAY_END)
    {
        DestroyTask(taskId);
        SetMainCallback2(CB2_ReturnToFieldContinueScriptPlayMapMusic);
    }
    else
    {
        if (animID == PLAY_CG)
        {
            BeginNormalPaletteFade(PALETTES_ALL, 0, 0, 0x10, 0);
            gTasks[taskId].data[1] = animParam;
            gTasks[taskId].func = Task_ChangeCG;
        }
        else if (animID == WAIT_BUTTON)
        {
            gTasks[taskId].func = Task_WaitFadeAndButton;
        }
        else
        {
            FillWindowPixelBuffer(0, PIXEL_FILL(0));
            AddTextPrinterParameterized4(0, FONT_NORMAL, 0, 0, 0, 0, sText_Color, GetPlayerTextSpeedDelay(), sCGMessage[animParam]);
            PutWindowTilemap(0);
            CopyWindowToVram(0, COPYWIN_FULL);
            ScheduleBgCopyTilemapToVram(0);
            SetGpuReg(REG_OFFSET_BLDCNT, BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG3 | BLDCNT_EFFECT_DARKEN);
            ShowBg(0);
            gTasks[taskId].func = Task_PlayMessage;
        }
    }
}

void ShowCG(void)
{
    SetMainCallback2(CB2_ShowCG);
}

// ----------------------------------------------------
///
#include "name_box.h"

bool8 ScrCmd_namebox(struct ScriptContext *ctx)
{
    const u8 *name = (const u8 *)ScriptReadWord(ctx);

    if (name == NULL)
        name = (const u8 *)ctx->data[0];
    DebugPrintf("name");
    ShowFieldName(name);
    return FALSE;
}

bool8 ScrCmd_hidenamebox(struct ScriptContext *ctx)
{
    if (IsNameboxDisplayed())
        ClearNamebox();
    return FALSE;
}