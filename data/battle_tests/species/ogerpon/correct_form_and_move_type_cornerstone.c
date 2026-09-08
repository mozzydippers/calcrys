// Test: Tera - Ogerpon changes to correct form (Cornerstone Mask)
#include "constants/moves.h"
#include "../../battle_tests.h"
BEGIN_TEST {
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
        { .species = SPECIES_NONE },
        { .species = SPECIES_NONE },
        { .species = SPECIES_NONE },
        { .species = SPECIES_NONE },
        { .species = SPECIES_NONE },
    },
    .enemyParty = {
        {
            .species = SPECIES_OGERPON,
            .level = 50,
            .form = 3,
            .ability = ABILITY_STURDY,
            .item = ITEM_NONE,
            .moves = { MOVE_IVY_CUDGEL, MOVE_NONE, MOVE_NONE, MOVE_NONE },
            .hp = FULL_HP,
            .status = 0,
            .condition2 = 0,
            .moveEffectFlags = 0,
            .furtherParams = {
                { MON_DATA_TERA_TYPE_ORIGINAL, TYPE_GRASS },
                { MON_DATA_TERA_TYPE_OVERRIDE, TYPE_ROCK },
            },
        },
        { .species = SPECIES_NONE },
        { .species = SPECIES_NONE },
        { .species = SPECIES_NONE },
        { .species = SPECIES_NONE },
        { .species = SPECIES_NONE },
    },
    .playerScript = {
        {
            { ACTION_MOVE_SLOT_1, BATTLER_ENEMY_FIRST },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
        },
    },
    .enemyScript = {
        {
            { ACTION_MOVE_SLOT_1, BATTLER_PLAYER_FIRST },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
            { ACTION_NONE, 0 },
        },
    },
    .expectations = {
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "The opposing Ogerpon used Ivy Cudgel!" },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "It's not very effective..." },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "Quaquaval used Drain Punch!" },
        // Considering stat boost
        { .expectationType = EXPECTATION_TYPE_HP_BAR, .battlerIDOrPartySlot = BATTLER_ENEMY_FIRST, .expectationValue.hpTaken = { 78, 78, 78, 80, 80, 80, 84, 84, 84, 86, 86, 86, 90, 90, 90, 92 } },
        { .expectationType = EXPECTATION_TYPE_MESSAGE, .expectationValue.message = "It's super effective!" },
\
    },
} END_TEST
