#include "global.h"
#include "menu.h"
#include "string_util.h"
#include "task.h"
#include "text.h"
#include "sprite.h"
#include "decompress.h"
#include "match_call.h"
#include "field_message_box.h"
#include "event_data.h"
#include "palette.h"
#include "bg.h"
#include "gpu_regs.h"
#include "constants/rgb.h"

static EWRAM_DATA u8 sFieldMessageBoxMode = 0;
static EWRAM_DATA u8 sFieldMessageClearBox = 0;

static void ExpandStringAndStartDrawFieldMessage(const u8 *, bool32);
static void StartDrawFieldMessage(void);
static void SpriteCb_ClearBox(struct Sprite* sprite);
static void Task_DrawFieldMessage(u8 taskId);

static const u16 gWhiteMsgBoxPalette[] = 
{
    RGB_BLACK,
    RGB_BLACK,
    RGB(26, 26, 25),
    RGB(12, 12, 12),
    RGB(28, 01, 01),
    RGB_BLACK,
    RGB_BLACK,
    RGB_BLACK,
    RGB_BLACK,
    RGB_BLACK,
    RGB_BLACK,
    RGB_BLACK,
    RGB_BLACK,
    RGB_BLACK,
    RGB_BLACK,
    RGB_BLACK,
};

static const u16 gTransMsgBoxPalette[] = 
{
    RGB_BLACK,
    RGB(31,  31, 31),
    RGB(111 / 8,  134 / 8, 146 / 8),
};

void InitFieldMessageBox(void)
{
    sFieldMessageBoxMode = FIELD_MESSAGE_BOX_HIDDEN;
    gTextFlags.canABSpeedUpPrint = FALSE;
    gTextFlags.useAlternateDownArrow = FALSE;
    gTextFlags.autoScroll = FALSE;
    gTextFlags.forceMidTextSpeed = FALSE;
}

#define tState data[0]

static const u32 gTextBoradGfx[] = INCBIN_U32("graphics/text_window/text_borad.4bpp.lz");
static const u32 gTextBoradPal[] = INCBIN_U32("graphics/text_window/text_borad.gbapal.lz");
static const u32 gTextBorad_WindowGfx[] = INCBIN_U32("graphics/text_window/obj_windows.4bpp.lz");

static const struct CompressedSpriteSheet gTextBoradSpriteSheet[] =
{
    {
        .data = gTextBoradGfx,
        .size = 64 * 192 / 2,
        .tag = 0x4399
    },
    {
        .data = gTextBorad_WindowGfx,
        .size = 64 * 192 / 2,
        .tag = 0x4398
    },
};

static const struct CompressedSpritePalette gTextBoradSpritePalette =
{
    .data = gTextBoradPal,
    .tag = 0x4399
};

static const struct OamData sOamData_Board =
{
    .size = SPRITE_SIZE(64x64),
    .shape = SPRITE_SHAPE(64x64),
    .priority = 0,
};

static const struct OamData sOamData_BoardWindow =
{
    .size = SPRITE_SIZE(64x64),
    .shape = SPRITE_SHAPE(64x64),
    .priority = 0,
    .objMode = ST_OAM_OBJ_WINDOW,
};

static const struct SpriteTemplate gSpriteTemplate_BoxBorad =
{
    .tileTag = 0x4399,
    .paletteTag = 0x4399,
    .oam = &sOamData_Board,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCb_ClearBox
};

static const struct SpriteTemplate gSpriteTemplate_BoxBoradWindows =
{
    .tileTag = 0x4398,
    .paletteTag = 0x4399,
    .oam = &sOamData_BoardWindow,
    .anims = gDummySpriteAnimTable,
    .images = NULL,
    .affineAnims = gDummySpriteAffineAnimTable,
    .callback = SpriteCb_ClearBox
};

static const struct Subsprite sHealthBar_Subsprites_Player[] =
{
    {
        .x = -64,
        .y = 0,
        .shape = SPRITE_SHAPE(64x64),
        .size = SPRITE_SIZE(64x64),
        .tileOffset = 0,
        .priority = 1
    },
    {
        .x = 0,
        .y = 0,
        .shape = SPRITE_SHAPE(64x64),
        .size = SPRITE_SIZE(64x64),
        .tileOffset = 64,
        .priority = 1
    },
    {
        .x = 64,
        .y = 0,
        .shape = SPRITE_SHAPE(64x64),
        .size = SPRITE_SIZE(64x64),
        .tileOffset = 128,
        .priority = 1
    }
};

static const struct SubspriteTable sHealthBar_SubspriteTables[] =
{
    {ARRAY_COUNT(sHealthBar_Subsprites_Player), sHealthBar_Subsprites_Player}
};

static void SpriteCb_ClearBox(struct Sprite* sprite)
{
    if (sFieldMessageClearBox == TRUE)
    {
        DestroySprite(sprite);
    }
}

static void DrawDialogueFrameNoBoard(u8 windowId, bool8 copyToVram)
{
    u8 spriteID;
        
    sFieldMessageClearBox = FALSE;

    LoadPalette(gTransMsgBoxPalette, BG_PLTT_ID(15) + 1, 2 * 3);

    SetGpuRegBits(REG_OFFSET_BLDCNT, BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_OBJ | BLDCNT_EFFECT_DARKEN);
    SetGpuRegBits(REG_OFFSET_DISPCNT, DISPCNT_OBJWIN_ON);
    ClearGpuRegBits(REG_OFFSET_DISPCNT, DISPCNT_WIN0_ON | DISPCNT_WIN1_ON);

    SetGpuReg(REG_OFFSET_BLDY, 5);
    SetGpuReg(REG_OFFSET_WININ, WININ_WIN0_ALL);
    SetGpuReg(REG_OFFSET_WINOUT, WINOUT_WIN01_BG_ALL | WINOUT_WIN01_OBJ | WINOUT_WINOBJ_ALL);

    LoadCompressedSpriteSheet(&gTextBoradSpriteSheet[0]);
    LoadCompressedSpriteSheet(&gTextBoradSpriteSheet[1]);
    LoadCompressedSpritePalette(&gTextBoradSpritePalette);
    spriteID = CreateSprite(&gSpriteTemplate_BoxBorad, 64, 114, 0);
    SetSubspriteTables(&gSprites[spriteID], sHealthBar_SubspriteTables);

    spriteID = CreateSprite(&gSpriteTemplate_BoxBoradWindows, 64, 114, 0);
    SetSubspriteTables(&gSprites[spriteID], sHealthBar_SubspriteTables);

    FillWindowPixelBuffer(windowId, PIXEL_FILL(0));
    PutWindowTilemap(windowId);
    if (copyToVram == TRUE)
        CopyWindowToVram(windowId, COPYWIN_FULL);
}

static void Task_DrawFieldMessage(u8 taskId)
{
    struct Task *task = &gTasks[taskId];

    switch (task->tState)
    {
        case 0:
           LoadMessageBoxAndBorderGfx();
           task->tState++;
           break;
        case 1:
            if (FlagGet(FLAG_SHOW_BLACK_TEXT))
            {
                LoadPalette(gWhiteMsgBoxPalette, BG_PLTT_ID(15), sizeof(gWhiteMsgBoxPalette));
            }
            
            DrawDialogueFrameNoBoard(0, TRUE);
           task->tState++;
           break;
        case 2:
            if (RunTextPrintersAndIsPrinter0Active() != TRUE)
            {
                sFieldMessageBoxMode = FIELD_MESSAGE_BOX_HIDDEN;
                DestroyTask(taskId);
            }
    }
}

#undef tState

static void CreateTask_DrawFieldMessage(void)
{
    CreateTask(Task_DrawFieldMessage, 0x50);
}

static void DestroyTask_DrawFieldMessage(void)
{
    u8 taskId = FindTaskIdByFunc(Task_DrawFieldMessage);
    if (taskId != TASK_NONE)
        DestroyTask(taskId);
}

bool8 ShowFieldMessage(const u8 *str)
{
    if (sFieldMessageBoxMode != FIELD_MESSAGE_BOX_HIDDEN)
        return FALSE;
    ExpandStringAndStartDrawFieldMessage(str, TRUE);
    sFieldMessageBoxMode = FIELD_MESSAGE_BOX_NORMAL;
    return TRUE;
}

static void Task_HidePokenavMessageWhenDone(u8 taskId)
{
    if (!IsMatchCallTaskActive())
    {
        sFieldMessageBoxMode = FIELD_MESSAGE_BOX_HIDDEN;
        DestroyTask(taskId);
    }
}

bool8 ShowPokenavFieldMessage(const u8 *str)
{
    if (sFieldMessageBoxMode != FIELD_MESSAGE_BOX_HIDDEN)
        return FALSE;
    StringExpandPlaceholders(gStringVar4, str);
    CreateTask(Task_HidePokenavMessageWhenDone, 0);
    StartMatchCallFromScript(str);
    sFieldMessageBoxMode = FIELD_MESSAGE_BOX_NORMAL;
    return TRUE;
}

bool8 ShowFieldAutoScrollMessage(const u8 *str)
{
    if (sFieldMessageBoxMode != FIELD_MESSAGE_BOX_HIDDEN)
        return FALSE;
    sFieldMessageBoxMode = FIELD_MESSAGE_BOX_AUTO_SCROLL;
    ExpandStringAndStartDrawFieldMessage(str, FALSE);
    return TRUE;
}

static bool8 UNUSED ForceShowFieldAutoScrollMessage(const u8 *str)
{
    sFieldMessageBoxMode = FIELD_MESSAGE_BOX_AUTO_SCROLL;
    ExpandStringAndStartDrawFieldMessage(str, TRUE);
    return TRUE;
}

// Same as ShowFieldMessage, but instead of accepting a
// string arg it just prints whats already in gStringVar4
bool8 ShowFieldMessageFromBuffer(void)
{
    if (sFieldMessageBoxMode != FIELD_MESSAGE_BOX_HIDDEN)
        return FALSE;
    sFieldMessageBoxMode = FIELD_MESSAGE_BOX_NORMAL;
    StartDrawFieldMessage();
    return TRUE;
}

static void ExpandStringAndStartDrawFieldMessage(const u8 *str, bool32 allowSkippingDelayWithButtonPress)
{
    if (DECAP_ENABLED && DECAP_MIRRORING && !DECAP_FIELD_MSG)
    {
        gStringVar4[0] = CHAR_FIXED_CASE;
        StringExpandPlaceholders(gStringVar4+1, str);
    }
    else
    {
        StringExpandPlaceholders(gStringVar4, str);
    }
    AddTextPrinterForMessage_3(allowSkippingDelayWithButtonPress);
    CreateTask_DrawFieldMessage();
}

static void StartDrawFieldMessage(void)
{
    AddTextPrinterForMessage_3(TRUE);
    CreateTask_DrawFieldMessage();
}

void HideFieldMessageBox(void)
{
    DestroyTask_DrawFieldMessage();
    ClearDialogWindowAndFrame(0, TRUE);
    sFieldMessageClearBox = TRUE;
    sFieldMessageBoxMode = FIELD_MESSAGE_BOX_HIDDEN;
}

u8 GetFieldMessageBoxMode(void)
{
    return sFieldMessageBoxMode;
}

bool8 IsFieldMessageBoxHidden(void)
{
    if (sFieldMessageBoxMode == FIELD_MESSAGE_BOX_HIDDEN)
        return TRUE;
    return FALSE;
}

static void UNUSED ReplaceFieldMessageWithFrame(void)
{
    DestroyTask_DrawFieldMessage();
    DrawStdWindowFrame(0, TRUE);
    sFieldMessageBoxMode = FIELD_MESSAGE_BOX_HIDDEN;
}

void StopFieldMessage(void)
{
    DestroyTask_DrawFieldMessage();
    sFieldMessageBoxMode = FIELD_MESSAGE_BOX_HIDDEN;
}
