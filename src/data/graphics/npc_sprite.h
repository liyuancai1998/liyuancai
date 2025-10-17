const u32 gNpcPic_test[] = INCBIN_U32("graphics/character_heads/Luoxi.4bpp.lz");
const u32 gNpcPal_test[] = INCBIN_U32("graphics/character_heads/Luoxi.gbapal.lz");

const u32 gNpcPic_KaiYi[] = INCBIN_U32("graphics/character_heads/Kaiyi.4bpp.lz");
const u32 gNpcPal_KaiYi[] = INCBIN_U32("graphics/character_heads/Kaiyi.gbapal.lz");

const u32 gNpcPic_Xiaoxuan[] = INCBIN_U32("graphics/character_heads/Xiaoxuan.4bpp.lz");
const u32 gNpcPal_Xiaoxuan[] = INCBIN_U32("graphics/character_heads/Xiaoxuan.gbapal.lz");

const u32 gNpcPic_Yanxing[] = INCBIN_U32("graphics/character_heads/Yanxing.4bpp.lz");
const u32 gNpcPal_Yanxing[] = INCBIN_U32("graphics/character_heads/Yanxing.gbapal.lz");

const u32 gNpcPic_frame[] = INCBIN_U32("graphics/character_heads/frame.4bpp.lz");
const u32 gNpcPal_frame[] = INCBIN_U32("graphics/character_heads/frame.gbapal.lz");

const u32 gNpcPic_Mom[] = INCBIN_U32("graphics/character_heads/Mom.4bpp.lz");
const u32 gNpcPal_Mom[] = INCBIN_U32("graphics/character_heads/Mom.gbapal.lz");

const u32 gNpcPic_MD[] = INCBIN_U32("graphics/character_heads/MD.4bpp.lz");
const u32 gNpcPal_MD[] = INCBIN_U32("graphics/character_heads/MD.gbapal.lz");

#define NPC_PICTURE_SIZE (64 * 64 / 2)

struct NPCSpriteData
{
    struct CompressedSpriteSheet frontPic;
    const u32* palette;
};

const struct NPCSpriteData gNPCSpriteTable[] = 
{
    {
        .frontPic = {gNpcPic_test, NPC_PICTURE_SIZE, 0},
        .palette = gNpcPal_test
    },
    {
        .frontPic = {gNpcPic_KaiYi, NPC_PICTURE_SIZE, 1},
        .palette = gNpcPal_KaiYi
    },
    {
        .frontPic = {gNpcPic_Xiaoxuan, NPC_PICTURE_SIZE, 2},
        .palette = gNpcPal_Xiaoxuan
    },
    {
        .frontPic = {gNpcPic_Yanxing, NPC_PICTURE_SIZE, 3},
        .palette = gNpcPal_Yanxing
    },
    {
        .frontPic = {gNpcPic_frame, NPC_PICTURE_SIZE, 4},
        .palette = gNpcPal_frame
    },
    {
        .frontPic = {gNpcPic_Mom, NPC_PICTURE_SIZE, 5},
        .palette = gNpcPal_Mom
    },
    {
        .frontPic = {gNpcPic_MD, NPC_PICTURE_SIZE, 6},
        .palette = gNpcPal_MD
    }
};