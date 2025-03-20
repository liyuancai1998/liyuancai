const u32 gNpcPic_test[] = INCBIN_U32("graphics/character_heads/Luoxi.4bpp.lz");
const u32 gNpcPal_test[] = INCBIN_U32("graphics/character_heads/Luoxi.gbapal.lz");

const u32 gNpcPic_KaiYi[] = INCBIN_U32("graphics/character_heads/Kaiyi.4bpp.lz");
const u32 gNpcPal_KaiYi[] = INCBIN_U32("graphics/character_heads/Kaiyi.gbapal.lz");

const u32 gNpcPic_Xiaoxuan[] = INCBIN_U32("graphics/character_heads/Xiaoxuan.4bpp.lz");
const u32 gNpcPal_Xiaoxuan[] = INCBIN_U32("graphics/character_heads/Xiaoxuan.gbapal.lz");

const u32 gNpcPic_Kaiyi_Black[] = INCBIN_U32("graphics/character_heads/Kaiyi_Black.4bpp.lz");
const u32 gNpcPal_Kaiyi_Black[] = INCBIN_U32("graphics/character_heads/Kaiyi_Black.gbapal.lz");

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
        .frontPic = {gNpcPic_Kaiyi_Black, NPC_PICTURE_SIZE, 3},
        .palette = gNpcPal_Kaiyi_Black
    }
};