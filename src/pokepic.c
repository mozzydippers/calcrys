#include "../include/battle.h"
#include "../include/pokepic.h"
#include "../include/types.h"

#define TINT_RATIO_MAX  8
#define TINT_RED        7
#define TINT_GREEN      0
#define TINT_BLUE       0
#define TINT_STRENGTH   4

u16 LONG_CALL Raid_TintColorRed(u16 color)
{
    u32 red = color & 0x1F;
    u32 green = (color >> 5) & 0x1F;
    u32 blue = (color >> 10) & 0x1F;

    u32 originalStrength = TINT_RATIO_MAX - TINT_STRENGTH;
    u32 tintRed = 31 * TINT_RED / TINT_RATIO_MAX;
    u32 tintGreen = 31 * TINT_GREEN / TINT_RATIO_MAX;
    u32 tintBlue = 31 * TINT_BLUE / TINT_RATIO_MAX;

    red = (red * originalStrength + tintRed * TINT_STRENGTH) / TINT_RATIO_MAX;
    green = (green * originalStrength + tintGreen * TINT_STRENGTH) / TINT_RATIO_MAX;
    blue = (blue * originalStrength + tintBlue * TINT_STRENGTH) / TINT_RATIO_MAX;

    return red | (green << 5) | (blue << 10);
}

void LONG_CALL Raid_TintPalette(u16 *palette)
{
    for (u32 color = 1; color < 16; color++) {
        palette[color] = Raid_TintColorRed(palette[color]);
    }
}

void LONG_CALL Raid_ApplyTintAfterPaletteLoad(PokepicManager *pokepicManager, Pokepic *sourcePokepic, u32 paletteOffset)
{
    if (pokepicManager == NULL || sourcePokepic == NULL || !sourcePokepic->active) {
        return;
    }
    // check affine since gBattleSystem isn't available here
    // otherwise we would check BATTLE_TYPE_SPECIAL
    if (sourcePokepic->drawParam.affineWidth == POKEPIC_SCALE_NORMAL && sourcePokepic->drawParam.affineHeight == POKEPIC_SCALE_NORMAL) {
        return;
    }
    if (sourcePokepic != &pokepicManager->pics[BATTLER_ENEMY]) {
        return;
    }

    u16 *palette = pokepicManager->plttRawData;
    u16 *unfadedPalette = pokepicManager->plttRawDataUnfaded;
    if (palette == NULL || unfadedPalette == NULL) {
        return;
    }

    Raid_TintPalette(palette + paletteOffset);
    Raid_TintPalette(unfadedPalette + paletteOffset);
}