// Test: Tera Shell - Chople Berry interaction
#include "../../battle_tests.h"
BEGIN_TEST {
    .battleType = BATTLE_TYPE_TRAINER,
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
            .species = SPECIES_TERAPAGOS,
            .level = 50,
            .form = 0,
            .ability = ABILITY_TERA_SHIFT,
            .item = ITEM_CHOPLE_BERRY,
            .moves = { MOVE_SLEEP_TALK, MOVE_NONE, MOVE_NONE, MOVE_NONE },
            .hp = FULL_HP,
            .status = 0,
            .condition2 = 0,
            .moveEffectFlags = 0,
            .furtherParams = {
                { MON_DATA_TERA_TYPE_ORIGINAL, TYPE_STELLAR },
                { MON_DATA_TERA_TYPE_OVERRIDE, TYPE_NONE },
            },
        },
    },
    .playerScript = {
        {
            { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
            { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
            { ACTION_NONE, 0 },
        },
    },
    .enemyScript = {
        {
            { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
            { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
            { ACTION_NONE, 0 },
        },
    },
    .expectations = {
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Quaquaval used Drain Punch!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Terapagos's Tera Shell" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Terapagos made its shell gleam! It's distorting type matchups!" },
        { .expectationType = EXPECTATION_TYPE_HP_BAR, .battlerIDOrPartySlot = BATTLER_ENEMY_FIRST, .expectationValue.hpTaken = { 23, 23, 24, 24, 24, 24, 24, 25, 25, 25, 26, 26, 26, 27, 27, 27 } },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Quaquaval used Drain Punch!" },
        { .expectationType = EXPECTATION_TYPE_HP_BAR, .battlerIDOrPartySlot = BATTLER_ENEMY_FIRST, .expectationValue.hpTaken = { 46, 46, 48, 48, 48, 49, 49, 51, 51, 51, 52, 52, 52, 54, 54, 55 } },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The Chople Berry weakened the damage to the opposing Terapagos!" },
    },
} END_TEST
