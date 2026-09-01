#ifndef TRAINER_DATA_H
#define TRAINER_DATA_H

#include <stdint.h>

#include "constants/ability.h"
#include "constants/item.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/species.h"
#include "constants/trainerclass.h"

typedef enum TrainerGender {
    TRAINER_MALE,
    TRAINER_FEMALE,
    TRAINER_DOUBLE,
} TrainerGender;

#ifndef TYPES_H
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#endif

/**Trainer Data File Bitfield**/
#define TRAINER_DATA_TYPE_NOTHING          0x00
#define TRAINER_DATA_TYPE_MOVES            0x01
#define TRAINER_DATA_TYPE_ITEMS            0x02
#define TRAINER_DATA_TYPE_ABILITY          0x04
#define TRAINER_DATA_TYPE_BALL             0x08
#define TRAINER_DATA_TYPE_IV_EV_SET        0x10
#define TRAINER_DATA_TYPE_NATURE_SET       0x20
#define TRAINER_DATA_TYPE_SHINY_LOCK       0x40
#define TRAINER_DATA_TYPE_ADDITIONAL_FLAGS 0x80 // whether or not to read extra flags in trpoke entry

/**Trainer Pokemon File Extra Bitfield**/
#define TRAINER_DATA_EXTRA_TYPE_NOTHING   0x00
#define TRAINER_DATA_EXTRA_TYPE_STATUS    0x01
#define TRAINER_DATA_EXTRA_TYPE_HP        0x02
#define TRAINER_DATA_EXTRA_TYPE_ATK       0x04
#define TRAINER_DATA_EXTRA_TYPE_DEF       0x08
#define TRAINER_DATA_EXTRA_TYPE_SPEED     0x10
#define TRAINER_DATA_EXTRA_TYPE_SP_ATK    0x20
#define TRAINER_DATA_EXTRA_TYPE_SP_DEF    0x40
#define TRAINER_DATA_EXTRA_TYPE_PP_COUNTS 0x80
#define TRAINER_DATA_EXTRA_TYPE_NICKNAME  0x100

#define TRAINER_DATA_RANDOM_PARTY_ORDER 0x80

#define F_PRIORITIZE_SUPER_EFFECTIVE (1 << 0)
#define F_EVALUATE_ATTACKS           (1 << 1)
#define F_EXPERT_ATTACKS             (1 << 2)
#define F_PRIORITIZE_STATUS_MOVES    (1 << 3)
#define F_RISKY_ATTACKS              (1 << 4)
#define F_PRIORITIZE_DAMAGE          (1 << 5)
#define F_MULTI_BATTLE_PARTNER       (1 << 6)
#define F_DOUBLE_BATTLE              (1 << 7)
#define F_PRIORITIZE_HEALING         (1 << 8)
#define F_USE_WEATHER                (1 << 9)
#define F_HARRASSMENT                (1 << 10)
#define F_ROAMING_MON                (1 << 11)
#define F_SAFARI_ZONE                (1 << 12)
#define F_CATCHING_DEMO              (1 << 13)

// standard flags for expert trainer AI
#define F_TRAINER_EXPERT_AI (F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS)

#define SINGLE_BATTLE            0
#define DOUBLE_BATTLE            2
#define NO_PARTNER_DOUBLE_BATTLE 3

#define TRAINER_POKEMON_ABILITY_1      0x00
#define TRAINER_POKEMON_ABILITY_HIDDEN 0x02
#define TRAINER_POKEMON_ABILITY_2      0x20

#define TRMSG_INTRO                     0
#define TRMSG_LOSE                      1
#define TRMSG_AFTER                     2
#define TRMSG_DBL_INTRO_1               3
#define TRMSG_DBL_LOSE_1                4
#define TRMSG_DBL_AFTER_1               5
#define TRMSG_DBL_1POKE_1               6
#define TRMSG_DBL_INTRO_2               7
#define TRMSG_DBL_LOSE_2                8
#define TRMSG_DBL_AFTER_2               9
#define TRMSG_DBL_1POKE_2               10
#define TRMSG_HIT_POKE_FIRST_TIME       13
#define TRMSG_CURRENT_POKE_HALF         14
#define TRMSG_LAST_POKE                 15
#define TRMSG_LAST_POKE_HALF            16
#define TRMSG_PHONE_REMATCH_INTRO       17
#define TRMSG_PHONE_REMATCH_DBL_INTRO_1 18
#define TRMSG_PHONE_REMATCH_DBL_INTRO_2 19
#define TRMSG_WIN                       20

// Overworld
#define TEXT_NOTICE_IN_OVERWORLD                0
#define TEXT_DEFEATED_IN_BATTLE                 1
#define TEXT_DEFEATED_IN_OVERWORLD              2
#define TEXT_DOUBLE_NOTICE_IN_OVERWORLD_1       3
#define TEXT_DOUBLE_DEFEATED_IN_BATTLE_1        4
#define TEXT_DOUBLE_DEFEATED_IN_OVERWORLD_1     5
#define TEXT_DOUBLE_ONLY_1_POKEMON_1            6
#define TEXT_DOUBLE_NOTICE_IN_OVERWORLD_2       7
#define TEXT_DOUBLE_DEFEATED_IN_BATTLE_2        8
#define TEXT_DOUBLE_DEFEATED_IN_OVERWORLD_2     9
#define TEXT_DOUBLE_ONLY_1_POKEMON_2            10
#define TEXT_ONLY_FIGHT_NOON_REMATCH_OVERWORLD  11
#define TEXT_ONLY_FIGHT_NIGHT_REMATCH_OVERWORLD 12
// Battle
#define TEXT_HIT_POKEMON_FIRST_TIME                    13
#define TEXT_CURRENT_MON_CRITICAL                      14
#define TEXT_LAST_MON_SENT_OUT                         15
#define TEXT_LAST_MON_CRITICAL                         16
#define TEXT_REMATCH_IN_OVERWORLD                      17 // 17
#define TEXT_REMATCH_IN_OVERWORLD_DOUBLE_1             18 // 18
#define TEXT_REMATCH_IN_OVERWORLD_DOUBLE_2             19 // 19
#define TEXT_PLAYER_LOSES                              20
#define TEXT_FIRST_MON_SENT_OUT_1                      21 // After sending out first Pokémon (1)
#define TEXT_FIRST_MON_SENT_OUT_2                      22 // After sending out first Pokémon (2)
#define TEXT_PLAYER_MOVE_SUPER_EFFECTIVE               23 // After the player first lands a supereffective move
#define TEXT_PLAYER_MOVE_NOT_VERY_EFFECTIVE            24 // After the player first lands a not very effective move
#define TEXT_PLAYER_MOVE_CRITICAL_HIT                  25 // After the player first lands a critical hit
#define TEXT_MOVE_SUPER_EFFECTIVE                      26 // After first landing a supereffective move on the player's Pokémon
#define TEXT_MOVE_NO_EFFECT                            27 // After first using a move that has no effect on the player's Pokémon
#define TEXT_MOVE_CRITICAL_HIT                         28 // After first landing a critical hit on the player's Pokémon
#define TEXT_USE_SPECIFIED_MOVE                        29 // Upon first using his first partner Pokémon's same-type move / Upon first using his first partner Pokémon's signature move, etc.
#define TEXT_FIRST_MON_DEFEATED                        30 // After first Pokémon is defeated
#define TEXT_SECOND_MON_DEFEATED                       31 // After second Pokémon is defeated
#define TEXT_THIRD_MON_DEFEATED                        32 // After third Pokémon is defeated
#define TEXT_FORTH_MON_DEFEATED                        33 // After fourth Pokémon is defeated
#define TEXT_FIFTH_MON_DEFEATED                        34 // After fifth Pokémon is defeated
#define TEXT_DYNAMAX                                   35 // Upon Dynamaxing / Upon Gigantamaxing
#define TEXT_TERASTALLIZE                              36 // Upon Terastallizing
#define TEXT_AFTER_TERASTALLIZING                      37 // After Terastallizing
#define TEXT_TERASTALLIZED_MON_MOVE_NOT_VERY_EFFECTIVE 38 // After attacking the player's Pokémon with a not very effective move while Terastallized
#define TEXT_TERASTALLIZED_MON_MOVE_SUPER_EFFECTIVE    39 // After attacking the player's Pokémon with a supereffective move while Terastallized
#define TEXT_AFTER_FIRST_MOVE                          40 // After first using a move against the player's Pokémon
#define TEXT_PLAYER_SENT_OUT_PARTICULAR_SPECIES        41 // If the player sends out Ogerpon
#define TEXT_CHANGED_FORM                              42 // Upon Terapagos changing form
#define TEXT_MEGA_EVOLVE                               43

#define TRAINER_SOURCE_MAX_PARTY_SIZE       6
#define TRAINER_SOURCE_MAX_TEXT_ENTRY_COUNT 10

typedef struct TrainerDataEntry {
    u8 trainerType;
    u16 trainerClass;
    u8 partySize; // derived by trainerdatagen.
    u16 items[4];
    u32 aiFlags;
    u32 battleType;
} TrainerDataEntry;

typedef struct TrainerPokemonEVIV {
    u8 hp;
    u8 attack;
    u8 defense;
    u8 speed;
    u8 spAttack;
    u8 spDefense;
} TrainerPokemonEVIV;

typedef struct TrainerPokemonData {
    u8 ivs;
    u8 abilitySlot;
    u16 level;
    u16 species;
    u16 item;
    u16 moves[4];
    u16 ability;
    u16 ball;
    TrainerPokemonEVIV setIvs;
    TrainerPokemonEVIV setEvs;
    u8 nature;
    u8 shinyLock;
    u32 additionalFlags;
    u32 status;
    u16 hp;
    u16 attack;
    u16 defense;
    u16 speed;
    u16 spAttack;
    u16 spDefense;
    u8 ppCounts[4];
    u16 nickname[11];
    const char *nicknameStr;
    u16 ballSeal;
} TrainerPokemonData;

typedef struct TrainerMessageEntry {
    u16 type;
    const char *text;
} TrainerMessageEntry;

typedef struct TrainerData {
    const char *name;
    TrainerDataEntry data;
    u8 partyMonCount; // derived by trainerdatagen.
    u8 textCount; // derived by trainerdatagen.
    TrainerPokemonData party[TRAINER_SOURCE_MAX_PARTY_SIZE];
    TrainerMessageEntry text[TRAINER_SOURCE_MAX_TEXT_ENTRY_COUNT];
} TrainerData;

extern const TrainerData sTrainerData[];
extern const u32 sTrainerDataCount;
extern const u16 sTrainerTextOrder[];
extern const u32 sTrainerTextOrderCount;

#endif
