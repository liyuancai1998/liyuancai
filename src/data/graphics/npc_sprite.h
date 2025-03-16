const u32 gNpcPic_test[] = INCBIN_U32("graphics/trainers/front_pics/hiker.4bpp.lz");
const u32 gNpcPal_test[] = INCBIN_U32("graphics/trainers/front_pics/hiker.gbapal.lz");

#define NPC_PICTURE_SIZE (64 * 64 / 2)

struct NPCSpriteData
{
    struct CompressedSpriteSheet frontPic;
    const u32* palette;
};

const struct NPCSpriteData gNPCSpriteTable[] = 
{
    {
        .frontPic = {gNpcPic_test, 64 * 64 / 2, 0},
        .palette = gNpcPal_test
    }
};