// Test: Tera Shell - Multi-hit interaction
#include "constants/moves.h"
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
            .moves = { MOVE_DOUBLE_HIT, MOVE_NONE, MOVE_NONE, MOVE_NONE },
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
            .item = ITEM_NONE,
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
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Quaquaval used Double Hit!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Terapagos's Tera Shell" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Terapagos made its shell gleam! It's distorting type matchups!" },
        { .expectationType = EXPECTATION_TYPE_HP_BAR, .battlerIDOrPartySlot = BATTLER_ENEMY_FIRST, .expectationValue.hpTaken = { 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9 } },
        { .expectationType = EXPECTATION_TYPE_HP_BAR, .battlerIDOrPartySlot = BATTLER_ENEMY_FIRST, .expectationValue.hpTaken = { 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9 } },
        { .expectationType = EXPECTATION_TYPE_HP_BAR, .battlerIDOrPartySlot = BATTLER_ENEMY_FIRST, .expectationValue.hpTaken = { 15, 15, 15, 15, 16, 16, 16, 16, 16, 16, 17, 17, 17, 17, 17, 18 } },
        { .expectationType = EXPECTATION_TYPE_HP_BAR, .battlerIDOrPartySlot = BATTLER_ENEMY_FIRST, .expectationValue.hpTaken = { 15, 15, 15, 15, 16, 16, 16, 16, 16, 16, 17, 17, 17, 17, 17, 18 } },
    },
} END_TEST
