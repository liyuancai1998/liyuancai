const u32 gNpcPic_test[] = INCBIN_U32("graphics/character_heads/洛汐.4bpp.lz");
const u32 gNpcPal_test[] = INCBIN_U32("graphics/character_heads/洛汐.gbapal.lz");

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
};