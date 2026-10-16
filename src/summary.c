#include "../include/summary.h"

#include "../include/battle.h"
#include "../include/types.h"

// file is from LheaRachel on github who adapted it from Bubble
// i just adapted it to hgss and added the +/- handling and such

// expanding it requires changing a bunch of other places where its apparently hardcoded, youd need to add some defines and stuff
// bg 1 is the top screen and bg 4 the bottom screen
// a window uses width * height tiles starting at baseTile, next free baseTile = baseTile + width * height
// ranges must not overlap other windows on the same bg and must end before 0x21F (page windows start there)
WindowTemplate SummaryWindowTemplates[34] = {
    // bgId, left, top, width, height, palette, baseTile
    { 4, 20, 1, 11, 2, 13, 0x001 }, // 0x00 "INFO" title
    { 1, 20, 1, 11, 2, 13, 0x017 }, // 0x01 "TRAINER MEMO" title
    { 1, 20, 1, 11, 2, 13, 0x02D }, // 0x02 "SKILLS" title, also Base Points/Potential title
    { 1, 1, 0, 11, 2, 13, 0x043 }, // 0x03 blank by default (msg 126)
    { 4, 20, 1, 11, 2, 13, 0x059 }, // 0x04 "BATTLE MOVES" title
    { 1, 20, 1, 11, 2, 13, 0x06F }, // 0x05 "PERFORMANCE" title
    { 1, 20, 20, 6, 2, 13, 0x085 }, // 0x06 "Item" label
    { 4, 1, 1, 9, 2, 13, 0x091 }, // 0x07 "Dex No." label
    { 4, 1, 3, 5, 2, 13, 0x0A3 }, // 0x08 "Name" label
    { 4, 1, 5, 5, 2, 13, 0x0AD }, // 0x09 "Type" label
    { 4, 1, 7, 5, 2, 13, 0x0B7 }, // 0x0A "OT" label
    { 4, 1, 9, 5, 2, 13, 0x0C1 }, // 0x0B "ID No." label
    { 4, 1, 11, 15, 2, 13, 0x0CB }, // 0x0C "Exp. Points" label
    { 4, 1, 15, 12, 2, 13, 0x0E9 }, // 0x0D "To Next Lv." label
    { 4, 6, 17, 3, 2, 13, 0x101 }, // 0x0E
    { 1, 5, 3, 2, 2, 13, 0x107 }, // 0x0F "HP" label
    { 1, 3, 6, 6, 2, 13, 0x10B }, // 0x10 "Attack" label
    { 1, 3, 8, 6, 2, 13, 0x117 }, // 0x11 "Defense" label
    { 1, 3, 10, 6, 2, 13, 0x123 }, // 0x12 "Sp. Atk" label
    { 1, 3, 12, 6, 2, 13, 0x12F }, // 0x13 "Sp. Def" label
    { 1, 3, 14, 6, 2, 13, 0x13B }, // 0x14 "Speed" label
    { 1, 0, 17, 7, 2, 13, 0x147 }, // 0x15 "Ability" label, shares tiles with 0x16 in vanilla
    { 1, 1, 22, 6, 2, 13, 0x147 }, // 0x16
    { 4, 25, 21, 5, 2, 13, 0x153 }, // 0x17
    { 4, 18, 4, 6, 2, 13, 0x15D }, // 0x18 "CATEGORY" label
    { 4, 18, 6, 6, 2, 13, 0x169 }, // 0x19 "POWER" label
    { 4, 18, 8, 8, 2, 13, 0x175 }, // 0x1A "ACCURACY" label
    { 1, 18, 11, 9, 2, 13, 0x185 }, // 0x1B blank by default (msg 162)
    { 1, 2, 13, 12, 2, 13, 0x197 }, // 0x1C blank by default (msg 160)
    { 4, 1, 17, 12, 2, 13, 0x1AF }, // 0x1D "No. of Ribbons:" label
    { 4, 20, 1, 11, 2, 13, 0x1C7 }, // 0x1E "RIBBONS" title
    { 1, 20, 22, 12, 2, 13, 0x1DD }, // 0x1F
    { 1, 20, 6, 6, 2, 13, 0x1F5 }, // 0x20
    { 1, 22, 4, 9, 2, 13, 0x201 }, // 0x21
};

static void UpdatePokemonData(struct SummaryState *summary, u8 mode)
{
    void *potentialBoxMon = Summary_GetPokemonData(summary);
    void *pokemon;

    // Use a different data accessor for summary screens from a PC box
    if (summary->baseData->dataType == 2) {
        pokemon = AllocMonZeroed(19); // heap id 19
        CopyBoxPokemonToPokemon(potentialBoxMon, pokemon);
    } else {
        pokemon = potentialBoxMon;
    }

    int paramStart = MON_DATA_MAXHP;

    // Pokemon struct orders current HP before max HP, so need to handle mode == 0 as a special case
    if (mode == 0) {
        summary->pokemonData.hp = (u16)GetMonData(pokemon, MON_DATA_HP, NULL);
    } else {
        if (mode == 1) {
            paramStart = MON_DATA_HP_EV;
        } else {
            paramStart = MON_DATA_HP_IV;
        }

        summary->pokemonData.hp = (u16)GetMonData(pokemon, paramStart, NULL);
    }

    // Pokemon struct orders all data parameters as such:
    // Attack -> Defense -> Speed -> SpAttack -> SpDefense
    summary->pokemonData.attack = (u16)GetMonData(pokemon, paramStart + 1, NULL);
    summary->pokemonData.defense = (u16)GetMonData(pokemon, paramStart + 2, NULL);
    summary->pokemonData.speed = (u16)GetMonData(pokemon, paramStart + 3, NULL);
    summary->pokemonData.spAttack = (u16)GetMonData(pokemon, paramStart + 4, NULL);
    summary->pokemonData.spDefense = (u16)GetMonData(pokemon, paramStart + 5, NULL);

    if (summary->baseData->dataType == 2) { // free it if it was allocated
        sys_FreeMemoryEz(pokemon);
    }
}

// Components here are indices into the system font palette.
//   l == index of the color to use for the letter itself
//   s == index of the color to use for the shadow of the letter
//   g == index of the color to use for the background of the letter (0 == transparent)
#define COLOR(l, s, g) ((u32)(((l & 0xFF) << 16) | ((s & 0xFF) << 8) | ((g & 0xFF) << 0)))
#define BLACK          (COLOR(1, 2, 0))
#define BLUE_INVERT    (COLOR(4, 3, 0))
#define RED_INVERT     (COLOR(6, 5, 0))
#define BLUE           (COLOR(3, 4, 0))
#define RED            (COLOR(5, 6, 0))
#define PINK           (COLOR(7, 8, 0))
#define GREEN          (COLOR(9, 10, 0))
#define WHITE          (COLOR(0xE, 0xF, 0))

static s8 sNatureStatEffects[25][6] = {
    // atk, def, spatk, spdef, speed
    { 0, 0, 0, 0, 0, 0 }, // Hardy
    { 0, 1, -1, 0, 0, 0 }, // Lonely
    { 0, 1, 0, 0, 0, -1 }, // Brave
    { 0, 1, 0, -1, 0, 0 }, // Adamant
    { 0, 1, 0, 0, -1, 0 }, // Naughty
    { 0, -1, 1, 0, 0, 0 }, // Bold
    { 0, 0, 0, 0, 0, 0 }, // Docile
    { 0, 0, 1, 0, 0, -1 }, // Relaxed
    { 0, 0, 1, -1, 0, 0 }, // Impish
    { 0, 0, 1, 0, -1, 0 }, // Lax
    { 0, -1, 0, 0, 0, 1 }, // Timid
    { 0, 0, -1, 0, 0, 1 }, // Hasty
    { 0, 0, 0, 0, 0, 0 }, // Serious
    { 0, 0, 0, -1, 0, 1 }, // Jolly
    { 0, 0, 0, 0, -1, 1 }, // Naive
    { 0, -1, 0, 1, 0, 0 }, // Modest
    { 0, 0, -1, 1, 0, 0 }, // Mild
    { 0, 0, 0, 1, 0, -1 }, // Quiet
    { 0, 0, 0, 0, 0, 0 }, // Bashful
    { 0, 0, 0, 1, -1, 0 }, // Rash
    { 0, -1, 0, 0, 1, 0 }, // Calm
    { 0, 0, -1, 0, 1, 0 }, // Gentle
    { 0, 0, 0, 0, 1, -1 }, // Sassy
    { 0, 0, 0, -1, 1, 0 }, // Careful
    { 0, 0, 0, 0, 0, 0 }, // Quirky
};

static void PrintStatNumberWithColor(struct SummaryState *summary, u8 windowIdx, u32 justify)
{
    u32 nature = GetBoxMonNatureCountMints(Summary_GetPokemonData(summary));
    u32 color = BLACK;
    if (sNatureStatEffects[nature][windowIdx] > 0) {
        color = RED;
    } else if (sNatureStatEffects[nature][windowIdx] < 0) {
        color = BLUE;
    }

    Summary_PrintString(summary, &summary->addlWindows[windowIdx], color, justify);
}

void Summary_ColorizeStatScreen(struct SummaryState *summary, u32 mode)
{
    u32 nature = GetBoxMonNatureCountMints(Summary_GetPokemonData(summary));
    Summary_NumberToString(summary, 120, summary->pokemonData.attack, 3, 0);
    PrintStatNumberWithColor(summary, 1, JUSTIFY_RIGHT);
    Summary_NumberToString(summary, 121, summary->pokemonData.defense, 3, 0);
    PrintStatNumberWithColor(summary, 2, JUSTIFY_RIGHT);
    Summary_NumberToString(summary, 122, summary->pokemonData.spAttack, 3, 0);
    PrintStatNumberWithColor(summary, 3, JUSTIFY_RIGHT);
    Summary_NumberToString(summary, 123, summary->pokemonData.spDefense, 3, 0);
    PrintStatNumberWithColor(summary, 4, JUSTIFY_RIGHT);
    Summary_NumberToString(summary, 124, summary->pokemonData.speed, 3, 0);
    PrintStatNumberWithColor(summary, 5, JUSTIFY_RIGHT);

    for (int i = 0; i < 6; i++) {
        FillWindowPixelBuffer(&summary->defnWindows[0xF + i], 0);
        if (i != 0) // print a possibly colored text and append +/-
        {
            u32 msgId = 110;
            u32 color = WHITE;
            if (sNatureStatEffects[nature][i] > 0) {
                msgId = 196 - 1; // Stat+
                color = RED_INVERT;
            } else if (sNatureStatEffects[nature][i] < 0) {
                msgId = 201 - 1; // Stat-
                color = BLUE_INVERT;
            }

            // Summary_PrintStatStringAccountForStat(summary, 0xF+i, msgId+i, i-1, JUSTIFY_LEFT);
            Summary_PrintStringGeneric(summary, 0xF + i, msgId + i, color, JUSTIFY_LEFT);
        } else { // hp
            Summary_PrintStringGeneric(summary, 0xF, 110, WHITE, JUSTIFY_LEFT);
        }
        CopyWindowToVram(&summary->defnWindows[0xF + i]);
    }

    // swap the skills thing to Base Points or Potential depending on the mode
    u32 titleMsgId = 109; // SKILLS
    if (mode == 1) {
        titleMsgId = 206; // Base Points mode
    } else if (mode == 2) {
        titleMsgId = 207; // Potential mode
    }
    // skills is on window 2 clear it via fill then print and to vram
    FillWindowPixelBuffer(&summary->defnWindows[2], 0);
    Summary_PrintStringGeneric(summary, 2, titleMsgId, WHITE, JUSTIFY_LEFT);
    CopyWindowToVram(&summary->defnWindows[2]);
}

void Summary_ColorizeStatScreen_Wrap(struct SummaryState *summary)
{
    Summary_ColorizeStatScreen(summary, 0);
}

void Summary_ChangeStatScreenState(struct SummaryState *summary, u8 mode)
{
    for (int i = 0; i < 6; i++) {
        FillWindowPixelBuffer(&summary->addlWindows[i], 0);
    }

    UpdatePokemonData(summary, mode);

    if (mode) {
        // Print IVs or EVs
        Summary_NumberToString(summary, 119, summary->pokemonData.hp, 3, 1);
        PrintStatNumberWithColor(summary, 0, JUSTIFY_CENTER);
    } else {
        // Print cur and max
        u8 xsize = summary->addlWindows[0].sizx * 8;
        Summary_PrintCurrentOverMax(
            summary,
            0,
            117,
            119,
            118,
            summary->pokemonData.hp,
            summary->pokemonData.maxHP,
            3,
            xsize / 2,
            0);
    }

    Summary_ColorizeStatScreen(summary, mode);

    for (int i = 0; i < 6; i++) {
        CopyWindowToVram(&summary->addlWindows[i]);
    }

    UpdatePokemonData(summary, 0); // Recover old data for page change
}

// change this to possibly take a BoxPokemon structure but be compatible with vanilla handling just in case
u16 ModifyStatByNature(u32 nature, u16 n, u8 statIndex)
{
    u32 retVal;

    // Dont modify HP, Accuracy, or Evasion by nature
    if (statIndex < STAT_ATTACK || statIndex > STAT_SPECIAL_DEFENSE) {
        return n;
    }

    if (nature & 0x02000000) {
        nature = GetBoxMonNatureCountMints(&((struct PartyPokemon *)nature)->box);
    }

    // thanks to dray for this fix!
    if (statIndex == STAT_SPEED) // have to convert to window index to use the sNatureStatEffects table
    {
        statIndex = 5;
    } else if (statIndex > STAT_SPEED) {
        statIndex--;
    }

    switch (sNatureStatEffects[nature][statIndex]) {
    case 1:
        // NOTE: will overflow for n > 595 because the intermediate value is cast to u16 before the division.
        retVal = n * 110;
        retVal /= 100;
        break;
    case -1:
        // NOTE: will overflow for n > 728, see above
        retVal = n * 90;
        retVal /= 100;
        break;
    default:
        retVal = n;
        break;
    }
    return retVal;
}
