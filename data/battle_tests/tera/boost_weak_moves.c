// Test: Tera - Boost weak moves
#include "../battle_tests.h"
BEGIN_TEST
{
    .battleType = BATTLE_TYPE_TRAINER,
    .weather = FIELD_CONDITION_NONE,
    .fieldCondition = 0,
    .terrain = TERRAIN_NONE,
    .opponentTerastallize = TRUE,
    .playerParty = {
        {
            .species = SPECIES_QUAQUAVAL,
            .level = 50,
            .form = 0,
            .ability = ABILITY_TORRENT,
            .item = ITEM_FOCUS_SASH,
            .moves = { MOVE_DRAIN_PUNCH, MOVE_NONE, MOVE_NONE, MOVE_NONE },
            .hp = FULL_HP,
            .status = 0,
            .condition2 = 0,
            .moveEffectFlags = 0,
        },
    },
    .enemyParty = {
        {
            .species = SPECIES_OGERPON,
            .level = 50,
            .form = 2,
            .ability = ABILITY_MOLD_BREAKER,
            .item = ITEM_HEARTHFLAME_MASK,
            .moves = { MOVE_FIRE_SPIN, MOVE_NONE, MOVE_NONE, MOVE_NONE },
            .hp = FULL_HP,
            .status = 0,
            .condition2 = 0,
            .moveEffectFlags = 0,
            .furtherParams = {
                { MON_DATA_TERA_TYPE_ORIGINAL, TYPE_GRASS },
                { MON_DATA_TERA_TYPE_OVERRIDE, TYPE_FIRE },
            },
        },
    },
    .playerScript = {
        {
            { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
            { ACTION_NONE, 0 },
        },
    },
    .enemyScript = {
        {
            { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
            { ACTION_NONE, 0 },
        },
    },
    .expectations = {
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Ogerpon used Fire Spin!" },
        // Considering Tera boost
        { .expectationType = EXPECTATION_TYPE_HP_BAR, .battlerIDOrPartySlot = BATTLER_PLAYER_FIRST, .expectationValue.hpTaken = { 20, 20, 20, 21, 21, 21, 21, 22, 22, 22, 22, 23, 23, 23, 23, 24 } },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "It's not very effective..." },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Quaquaval used Drain Punch!" },
        { .expectationType = EXPECTATION_TYPE_HP_BAR, .battlerIDOrPartySlot = BATTLER_ENEMY_FIRST, .expectationValue.hpTaken = { 58, 58, 60, 60, 60, 61, 61, 63, 63, 64, 64, 66, 66, 67, 67, 69 } },
    }
}
END_TEST
