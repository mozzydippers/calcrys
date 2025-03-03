.nds
.thumb

.include "armips/include/constants.s"
.include "armips/include/macros.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/moves.inc"
.include "asm/include/species.inc"

trainerdata 0, "-"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_PKMN_TRAINER_ETHAN
    nummons 0
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags 0
    battletype SINGLE_BATTLE
    endentry

    party 0
        // mon 0
        ivs 0
        abilityslot 15
        level 0
        pokemon SPECIES_NONE
        ballseal 0
    endparty

trainerdata 1, "Silver" // AT SILVER TOTO
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_RIVAL
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 1
        // mon 0
        ivs 255
        abilityslot 2
        level 30
        pokemon SPECIES_GLIGAR
        item ITEM_EVIOLITE
        move MOVE_BULLDOZE
        move MOVE_ROCK_TOMB
        move MOVE_ROOST
        move MOVE_U_TURN
        nature NATURE_CAREFUL
        ball ITEM_GREAT_BALL
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 30
        pokemon SPECIES_FURRET
        item ITEM_SILK_SCARF
        move MOVE_RETURN
        move MOVE_SUCKER_PUNCH
        move MOVE_ME_FIRST
        move MOVE_REST
        nature NATURE_ADAMANT
        ball ITEM_POKE_BALL
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 30
        pokemon SPECIES_SNEASEL
        item ITEM_EVIOLITE
        move MOVE_BITE
        move MOVE_ICICLE_CRASH
        move MOVE_ICE_SHARD
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        ball ITEM_GREAT_BALL
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 30
        monwithform SPECIES_SNEASEL, 1
        item ITEM_EVIOLITE
        move MOVE_LOW_SWEEP
        move MOVE_CROSS_POISON
        move MOVE_MACH_PUNCH
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        ball ITEM_GREAT_BALL
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 32
        level 30
        pokemon SPECIES_YANMEGA
        item ITEM_THROAT_SPRAY
        move MOVE_DRAGON_BREATH
        move MOVE_UPROAR
        move MOVE_AIR_CUTTER
        move MOVE_ANCIENT_POWER
        nature NATURE_MODEST
        ball ITEM_NET_BALL
        ballseal 0
    
        // mon 5
        ivs 255
        abilityslot 2
        level 30
        pokemon SPECIES_BAYLEEF
        item ITEM_EVIOLITE
        move MOVE_MAGICAL_LEAF
        move MOVE_ANCIENT_POWER
        move MOVE_LEECH_SEED
        move MOVE_SYNTHESIS
        nature NATURE_BOLD
        ball ITEM_POKE_BALL
        ballseal 0
    endparty

trainerdata 2, "Silver" // unused
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_RIVAL
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 2
        // mon 0
        ivs 0
        abilityslot 15
        level 5
        pokemon SPECIES_CYNDAQUIL
        ballseal 0
    endparty

trainerdata 3, "Silver" // unused
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_RIVAL
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 3
        // mon 0
        ivs 0
        abilityslot 15
        level 5
        pokemon SPECIES_TOTODILE
        ballseal 0
    endparty

trainerdata 4, "Wade"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_BUG_CATCHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 4
        // mon 0
        ivs 255
        abilityslot 32
        level 10
        pokemon SPECIES_BUTTERFREE
        move MOVE_GUST
        move MOVE_CONFUSION
        move MOVE_BUG_BITE
        move MOVE_NONE
        nature NATURE_TIMID
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 10
        pokemon SPECIES_BEEDRILL
        move MOVE_TWINEEDLE
        move MOVE_POISON_STING
        move MOVE_BUG_BITE
        move MOVE_FURY_ATTACK
        nature NATURE_JOLLY
        ballseal 0
    endparty

trainerdata 5, "Victoria"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_BEAUTY
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 5
        // mon 0
        ivs 255
        abilityslot 15
        level 35
        pokemon SPECIES_FURFROU
        item ITEM_LEFTOVERS
        move MOVE_RETURN
        move MOVE_BODY_PRESS
        move MOVE_SUCKER_PUNCH
        move MOVE_COTTON_GUARD
        nature NATURE_IMPISH
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 35
        pokemon SPECIES_KOMALA
        item ITEM_CHOICE_BAND
        move MOVE_LAST_RESORT
        move MOVE_SLEEP_TALK
        move MOVE_NONE
        move MOVE_NONE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 35
        pokemon SPECIES_FURRET
        item ITEM_LEFTOVERS
        move MOVE_RETURN
        move MOVE_ICE_PUNCH
        move MOVE_PURSUIT
        move MOVE_TIDY_UP
        nature NATURE_JOLLY
        ballseal 0
    endparty

trainerdata 6, "Keith"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_POLICEMAN
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 6
        // mon 0
        ivs 0
        abilityslot 15
        level 17
        pokemon SPECIES_GROWLITHE
        ballseal 0
    endparty

trainerdata 7, "Irwin"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_JUGGLER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 7
        // mon 0
        ivs 255
        abilityslot 32
        level 37
        pokemon SPECIES_MAGNEMITE
        item ITEM_EVIOLITE
        move MOVE_THUNDERBOLT
        move MOVE_FLASH_CANNON
        move MOVE_VOLT_SWITCH
        move MOVE_EXPLOSION
        nature NATURE_BOLD
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 37
        pokemon SPECIES_KOFFING
        item ITEM_EVIOLITE
        move MOVE_SLUDGE_BOMB
        move MOVE_INCINERATE
        move MOVE_TOXIC
        move MOVE_EXPLOSION
        nature NATURE_SASSY
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 37
        pokemon SPECIES_FERROSEED
        item ITEM_EVIOLITE
        move MOVE_GYRO_BALL
        move MOVE_LEECH_SEED
        move MOVE_SPIKY_SHIELD
        move MOVE_EXPLOSION
        nature NATURE_RELAXED
        ballseal 0
    endparty

trainerdata 8, "Joey"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_YOUNGSTER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 8
        // mon 0
        ivs 255
        abilityslot 32
        level 6
        pokemon SPECIES_RATTATA
        item ITEM_SILK_SCARF
        move MOVE_TACKLE
        move MOVE_QUICK_ATTACK
        move MOVE_FOCUS_ENERGY
        move MOVE_TAIL_WHIP
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 9, "Elaine"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SWIMMER_F
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 9
        // mon 0
        ivs 0
        abilityslot 32
        level 21
        pokemon SPECIES_STARYU
        ballseal 0
    endparty

trainerdata 10, "Amy & Mimi"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET | 0
    trainerclass TRAINERCLASS_TWINS
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 10
        // mon 0
        ivs 255
        abilityslot 2
        level 29
        pokemon SPECIES_BEEDRILL
        move MOVE_BUG_BITE
        move MOVE_ACROBATICS
        move MOVE_DRILL_RUN
        move MOVE_PURSUIT
        nature NATURE_JOLLY
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 29
        pokemon SPECIES_BUTTERFREE
        move MOVE_STRUGGLE_BUG
        move MOVE_PSYBEAM
        move MOVE_ELECTROWEB
        move MOVE_SLEEP_POWDER
        nature NATURE_TIMID
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 29
        pokemon SPECIES_BEAUTIFLY
        move MOVE_STRUGGLE_BUG
        move MOVE_AIR_CUTTER
        move MOVE_MEGA_DRAIN
        move MOVE_MORNING_SUN
        nature NATURE_MODEST
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 29
        pokemon SPECIES_DUSTOX
        move MOVE_LEECH_LIFE
        move MOVE_VENOSHOCK
        move MOVE_POISON_POWDER
        move MOVE_MOONLIGHT
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 11, "Ethan"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET | 0
    trainerclass TRAINERCLASS_PKMN_TRAINER_ETHAN
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 11
        // mon 0
        ivs 255
        abilityslot 32
        level 12
        pokemon SPECIES_MARILL
        item ITEM_BERRY_JUICE
        move MOVE_AQUA_JET
        move MOVE_BULLDOZE
        move MOVE_TRAILBLAZE
        move MOVE_POWER_UP_PUNCH
        nature NATURE_ADAMANT
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 12
        pokemon SPECIES_ELEKID
        item ITEM_MAGNET
        move MOVE_SPARK
        move MOVE_LOW_KICK
        move MOVE_QUICK_ATTACK
        move MOVE_MAGNET_RISE
        nature NATURE_JOLLY
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 12
        pokemon SPECIES_MAGBY
        item ITEM_CHARCOAL
        move MOVE_FLAME_WHEEL
        move MOVE_SMOG
        move MOVE_MACH_PUNCH
        move MOVE_SMOKESCREEN
        nature NATURE_HASTY
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 12
        pokemon SPECIES_BONSLY
        item ITEM_HARD_STONE
        move MOVE_ROCK_THROW
        move MOVE_BULLET_SEED
        move MOVE_HEADBUTT
        move MOVE_LOW_KICK
        nature NATURE_ADAMANT
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 32
        level 12
        pokemon SPECIES_MUNCHLAX
        item ITEM_SILK_SCARF
        move MOVE_COVET
        move MOVE_BULLDOZE
        move MOVE_SLACK_OFF
        move MOVE_CURSE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 32
        level 12
        pokemon SPECIES_RIOLU
        item ITEM_BLACK_BELT
        move MOVE_CIRCLE_THROW
        move MOVE_BULLET_PUNCH
        move MOVE_QUICK_ATTACK
        move MOVE_BULK_UP
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 12, "Grunt" // SW 3
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET | 0
    trainerclass TRAINERCLASS_TEAM_ROCKET
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | F_HARRASSMENT | 0
    battletype SINGLE_BATTLE
    endentry

    party 12
        // mon 0
        ivs 255
        abilityslot 15
        level 25
        monwithform SPECIES_SLOWBRO, 2
        item ITEM_QUICK_CLAW
        move MOVE_SHELL_SIDE_ARM
        move MOVE_CONFUSION
        move MOVE_SLEEP_TALK
        move MOVE_REST
        nature NATURE_MODEST
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 25
        pokemon SPECIES_KANGASKHAN
        item ITEM_SILK_SCARF
        move MOVE_CRUSH_CLAW
        move MOVE_BITE
        move MOVE_ROCK_TOMB
        move MOVE_FAKE_OUT
        nature NATURE_ADAMANT
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 32
        level 25
        pokemon SPECIES_SIGILYPH
        item ITEM_TOXIC_ORB
        move MOVE_PSYBEAM
        move MOVE_AIR_CUTTER
        move MOVE_ANCIENT_POWER
        move MOVE_PSYCHO_SHIFT
        nature NATURE_TIMID
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 25
        pokemon SPECIES_DRUDDIGON
        item ITEM_DRAGON_FANG
        move MOVE_DRAGON_CLAW
        move MOVE_STOMPING_TANTRUM
        move MOVE_METAL_CLAW
        move MOVE_ROOST
        nature NATURE_ADAMANT
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 26
        monwithform SPECIES_SLOWKING, 1
        item ITEM_QUICK_CLAW
        move MOVE_EERIE_SPELL
        move MOVE_VENOSHOCK
        move MOVE_WHIRLPOOL
        move MOVE_TOXIC
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 13, "Grunt" // SW 2
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_TEAM_ROCKET_F
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 13
        // mon 0
        ivs 255
        abilityslot 15
        level 25
        pokemon SPECIES_GOLETT
        item ITEM_PUNCHING_GLOVE
        move MOVE_SHADOW_PUNCH
        move MOVE_BULLDOZE
        move MOVE_ROCK_TOMB
        move MOVE_POWER_UP_PUNCH
        nature NATURE_ADAMANT
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 25
        monwithform SPECIES_EXEGGUTOR, 1
        item ITEM_LEPPA_BERRY
        move MOVE_DRAGON_HAMMER
        move MOVE_BULLET_SEED
        move MOVE_SLEEP_POWDER
        move MOVE_SOFT_BOILED
        nature NATURE_JOLLY
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 25
        pokemon SPECIES_GLIGAR
        item ITEM_EVIOLITE
        move MOVE_BULLDOZE
        move MOVE_AERIAL_ACE
        move MOVE_POISON_TAIL
        move MOVE_ROOST
        nature NATURE_JOLLY
    endparty

trainerdata 14, "Duncan"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_BURGLAR
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 14
        // mon 0
        ivs 255
        abilityslot 15
        level 66
        pokemon SPECIES_CHARIZARD
        item ITEM_CHARIZARDITE_X
        move MOVE_BLAZE_KICK
        move MOVE_BREAKING_SWIPE
        move MOVE_THUNDER_PUNCH
        move MOVE_EARTHQUAKE
        nature NATURE_NAIVE
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 66
        monwithform SPECIES_PIKACHU, 15
        item ITEM_LIGHT_BALL
        move MOVE_PIKA_PAPOW
        move MOVE_ZIPPY_ZAP
        move MOVE_EXTREME_SPEED
        move MOVE_FAKE_OUT
        nature NATURE_ADAMANT
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_CERULEDGE
        item ITEM_FOCUS_SASH
        move MOVE_POLTERGEIST
        move MOVE_POISON_JAB
        move MOVE_SHADOW_SNEAK
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 15, "Otis"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_FIREBREATHER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 15
        // mon 0
        ivs 0
        abilityslot 15
        level 43
        pokemon SPECIES_MAGMAR
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_WEEZING
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 47
        pokemon SPECIES_CAMERUPT
        ballseal 0
    endparty

trainerdata 16, "Simon"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SWIMMER_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 16
        // mon 0
        ivs 0
        abilityslot 15
        level 20
        pokemon SPECIES_TENTACOOL
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 20
        pokemon SPECIES_TENTACOOL
        ballseal 0
    endparty

trainerdata 17, "Kenji"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BLACK_BELT
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 17
        // mon 0
        ivs 30
        abilityslot 15
        level 28
        pokemon SPECIES_MACHOKE
        ballseal 0
    endparty

trainerdata 18, "Justin"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_FISHERMAN
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 18
        // mon 0
        ivs 255
        abilityslot 2
        level 20
        pokemon SPECIES_MAGIKARP
        move MOVE_BOUNCE
        move MOVE_TACKLE
        move MOVE_NONE
        move MOVE_NONE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 20
        pokemon SPECIES_MAGIKARP
        move MOVE_BOUNCE
        move MOVE_TACKLE
        move MOVE_NONE
        move MOVE_NONE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 20
        pokemon SPECIES_MAGIKARP
        move MOVE_BOUNCE
        move MOVE_TACKLE
        move MOVE_NONE
        move MOVE_NONE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 20
        pokemon SPECIES_MAGIKARP
        move MOVE_BOUNCE
        move MOVE_TACKLE
        move MOVE_NONE
        move MOVE_NONE
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 19, "Lyra"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET | 0
    trainerclass TRAINERCLASS_PKMN_TRAINER_LYRA
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 19
        // mon 0
        ivs 255
        abilityslot 32
        level 12
        pokemon SPECIES_MARILL
        item ITEM_BERRY_JUICE
        move MOVE_AQUA_JET
        move MOVE_BULLDOZE
        move MOVE_TRAILBLAZE
        move MOVE_POWER_UP_PUNCH
        nature NATURE_ADAMANT
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 12
        pokemon SPECIES_ELEKID
        item ITEM_MAGNET
        move MOVE_SPARK
        move MOVE_LOW_KICK
        move MOVE_QUICK_ATTACK
        move MOVE_MAGNET_RISE
        nature NATURE_JOLLY
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 12
        pokemon SPECIES_MAGBY
        item ITEM_CHARCOAL
        move MOVE_FLAME_WHEEL
        move MOVE_SMOG
        move MOVE_MACH_PUNCH
        move MOVE_SMOKESCREEN
        nature NATURE_HASTY
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 12
        pokemon SPECIES_BONSLY
        item ITEM_HARD_STONE
        move MOVE_ROCK_THROW
        move MOVE_BULLET_SEED
        move MOVE_HEADBUTT
        move MOVE_LOW_KICK
        nature NATURE_ADAMANT
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 32
        level 12
        pokemon SPECIES_MUNCHLAX
        item ITEM_SILK_SCARF
        move MOVE_COVET
        move MOVE_BULLDOZE
        move MOVE_SLACK_OFF
        move MOVE_CURSE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 32
        level 12
        pokemon SPECIES_RIOLU
        item ITEM_BLACK_BELT
        move MOVE_CIRCLE_THROW
        move MOVE_BULLET_PUNCH
        move MOVE_QUICK_ATTACK
        move MOVE_BULK_UP
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 20, "Falkner"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_LEADER_FALKNER
    nummons 0x80 | 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 20
        // mon 0
        ivs 255
        abilityslot 2
        level 18
        pokemon SPECIES_FARFETCHD
        item ITEM_LEEK
        move MOVE_SLASH
        move MOVE_PLUCK
        move MOVE_KNOCK_OFF
        move MOVE_ROOST
        ball ITEM_GREAT_BALL
        nature NATURE_JOLLY
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 18
        pokemon SPECIES_TOGETIC
        item ITEM_SCOPE_LENS
        move MOVE_DRAINING_KISS
        move MOVE_AIR_CUTTER
        move MOVE_YAWN
        move MOVE_ROOST
        ball ITEM_GREAT_BALL
        nature NATURE_BOLD
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 18
        pokemon SPECIES_VULLABY
        item ITEM_SOFT_SAND
        move MOVE_PLUCK
        move MOVE_BONE_CLUB
        move MOVE_ROCK_TOMB
        move MOVE_ROOST
        ball ITEM_GREAT_BALL
        nature NATURE_JOLLY
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 18
        pokemon SPECIES_RUFFLET
        item ITEM_BLACK_BELT
        move MOVE_AERIAL_ACE
        move MOVE_DOUBLE_KICK
        move MOVE_HONE_CLAWS
        move MOVE_ROOST
        ball ITEM_GREAT_BALL
        nature NATURE_JOLLY
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 15
        level 18
        monwithform SPECIES_ORICORIO, 3
        item ITEM_SHARP_BEAK
        move MOVE_AIR_CUTTER
        move MOVE_ICY_WIND
        move MOVE_QUIVER_DANCE
        move MOVE_ROOST
        ball ITEM_GREAT_BALL
        nature NATURE_BOLD
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 2
        level 18
        pokemon SPECIES_SKARMORY
        item ITEM_HARD_STONE
        move MOVE_STEEL_WING
        move MOVE_PLUCK
        move MOVE_ROCK_TOMB
        move MOVE_ROOST
        ball ITEM_GREAT_BALL
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 21, "Bugsy"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_LEADER_BUGSY
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 21
        // mon 0
        ivs 255
        abilityslot 15
        level 30
        pokemon SPECIES_GOLISOPOD
        item ITEM_ASSAULT_VEST
        move MOVE_FIRST_IMPRESSION
        move MOVE_RAZOR_SHELL
        move MOVE_LEECH_LIFE
        move MOVE_DRILL_RUN
        ball ITEM_NEST_BALL
        nature NATURE_ADAMANT
        ballseal 0   

        // mon 1
        ivs 255
        abilityslot 2
        level 30
        pokemon SPECIES_SCOLIPEDE
        item ITEM_LIFE_ORB
        move MOVE_MEGAHORN
        move MOVE_AQUA_TAIL
        move MOVE_ROCK_SLIDE
        move MOVE_COIL
        ball ITEM_NEST_BALL
        nature NATURE_ADAMANT
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 30
        pokemon SPECIES_LOKIX
        item ITEM_SILVER_POWDER
        move MOVE_FIRST_IMPRESSION
        move MOVE_LASH_OUT
        move MOVE_LEECH_LIFE
        move MOVE_U_TURN
        ball ITEM_NEST_BALL
        nature NATURE_ADAMANT
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 32
        level 30
        pokemon SPECIES_SCYTHER
        item ITEM_EVIOLITE
        move MOVE_DUAL_WINGBEAT
        move MOVE_BUG_BITE
        move MOVE_QUICK_ATTACK
        move MOVE_U_TURN
        ball ITEM_NEST_BALL
        nature NATURE_JOLLY
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 30
        pokemon SPECIES_KLEAVOR
        item ITEM_CLEAR_AMULET
        move MOVE_STONE_AXE
        move MOVE_X_SCISSOR
        move MOVE_PSYCHO_CUT
        move MOVE_ROOST
        ball ITEM_NEST_BALL
        nature NATURE_JOLLY
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 32
        level 30
        pokemon SPECIES_SCIZOR
        item ITEM_LEFTOVERS
        move MOVE_BUG_BITE
        move MOVE_BULLET_PUNCH
        move MOVE_SUPERPOWER
        move MOVE_SWORDS_DANCE
        ball ITEM_NEST_BALL
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 22, "Carrie"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_LASS
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | F_MULTI_BATTLE_PARTNER | 0
    battletype SINGLE_BATTLE
    endentry

    party 22
        // mon 0
        ivs 255
        abilityslot 15
        level 35
        pokemon SPECIES_DELCATTY
        item ITEM_CHOPLE_BERRY
        move MOVE_BODY_SLAM
        move MOVE_BATON_PASS
        move MOVE_SLACK_OFF
        move MOVE_COSMIC_POWER
        nature NATURE_IMPISH
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 35
        pokemon SPECIES_LINOONE
        item ITEM_IAPAPA_BERRY
        move MOVE_EXTREME_SPEED
        move MOVE_STOMPING_TANTRUM
        move MOVE_SEED_BOMB
        move MOVE_BELLY_DRUM
        nature NATURE_ADAMANT
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 35
        pokemon SPECIES_CHANSEY
        item ITEM_EVIOLITE
        move MOVE_SEISMIC_TOSS
        move MOVE_SHADOW_BALL
        move MOVE_WISH
        move MOVE_THUNDER_WAVE
        nature NATURE_BOLD
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 35
        pokemon SPECIES_LICKILICKY
        item ITEM_SALAC_BERRY
        move MOVE_THRASH
        move MOVE_ZEN_HEADBUTT
        move MOVE_ICE_PUNCH
        move MOVE_REST
        nature NATURE_BOLD
        ballseal 0
    endparty

trainerdata 23, "Larry"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET | 0
    trainerclass TRAINERCLASS_POKE_MANIAC
    nummons 0x80 | 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 23
        // mon 0
        ivs 250
        abilityslot 32
        level 24
        pokemon SPECIES_OMANYTE
        move MOVE_ANCIENT_POWER
        move MOVE_BRINE
        move MOVE_ICY_WIND
        move MOVE_MUD_SHOT
        nature NATURE_MODEST
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 24
        pokemon SPECIES_KABUTO
        move MOVE_ROCK_TOMB
        move MOVE_AQUA_JET
        move MOVE_KNOCK_OFF
        move MOVE_SECRET_POWER
        nature NATURE_ADAMANT
        ballseal 0

        // mon 2
        ivs 250
        abilityslot 2
        level 24
        pokemon SPECIES_LILEEP
        move MOVE_ANCIENT_POWER
        move MOVE_MEGA_DRAIN
        move MOVE_BRINE
        move MOVE_RECOVER
        nature NATURE_MODEST
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 24
        pokemon SPECIES_ANORITH
        move MOVE_SMACK_DOWN
        move MOVE_BUG_BITE
        move MOVE_METAL_CLAW
        move MOVE_AQUA_JET
        nature NATURE_JOLLY
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 24
        pokemon SPECIES_CRANIDOS
        move MOVE_ROCK_TOMB
        move MOVE_HEADBUTT
        move MOVE_BITE
        move MOVE_FOCUS_ENERGY
        nature NATURE_ADAMANT
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 15
        level 24
        pokemon SPECIES_SHIELDON
        move MOVE_ROCK_TOMB
        move MOVE_HEADBUTT
        move MOVE_BULLDOZE
        move MOVE_COUNTER
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 24, "Alan"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_SCHOOL_KID_M
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 24
        // mon 0
        ivs 255
        abilityslot 2
        level 39
        pokemon SPECIES_XATU
        move MOVE_PSYCHIC
        move MOVE_AIR_SLASH
        move MOVE_WISH
        move MOVE_TELEPORT
        nature NATURE_TIMID
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 39
        pokemon SPECIES_TANGROWTH
        move MOVE_GIGA_DRAIN
        move MOVE_KNOCK_OFF
        move MOVE_ANCIENT_POWER
        move MOVE_SLEEP_POWDER
        nature NATURE_SASSY
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 32
        level 39
        pokemon SPECIES_QUAGSIRE
        move MOVE_AQUA_TAIL
        move MOVE_EARTHQUAKE
        move MOVE_YAWN
        move MOVE_RECOVER
        nature NATURE_CAREFUL
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 40
        pokemon SPECIES_YANMEGA
        move MOVE_SIGNAL_BEAM
        move MOVE_DRAGON_BREATH
        move MOVE_ROOST
        move MOVE_DETECT
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 25, "Russel"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_HIKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 25
        // mon 0
        ivs 255
        abilityslot 15
        level 24
        pokemon SPECIES_HELIOPTILE
        item ITEM_FOCUS_SASH
        move MOVE_PARABOLIC_CHARGE
        move MOVE_RAZOR_WIND
        move MOVE_GRASS_KNOT
        move MOVE_GLARE
        nature NATURE_TIMID
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 24
        monwithform SPECIES_GEODUDE, 1
        item ITEM_CUSTAP_BERRY
        move MOVE_ROCK_SLIDE
        move MOVE_FACADE
        move MOVE_BULLDOZE
        move MOVE_EXPLOSION
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 24
        pokemon SPECIES_TOGEDEMARU
        item ITEM_ROCKY_HELMET
        move MOVE_ZING_ZAP
        move MOVE_IRON_HEAD
        move MOVE_MAGNET_RISE
        move MOVE_WISH
        nature NATURE_JOLLY
        ballseal 0
    endparty

trainerdata 26, "Roland"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_CAMPER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 26
        // mon 0
        ivs 255
        abilityslot 32
        level 21
        pokemon SPECIES_TEDDIURSA
        move MOVE_COVET
        move MOVE_BULLDOZE
        move MOVE_PAYBACK
        move MOVE_LICK
        nature NATURE_ADAMANT
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 21
        pokemon SPECIES_MEOWTH
        move MOVE_PAY_DAY
        move MOVE_FEINT_ATTACK
        move MOVE_FAKE_OUT
        move MOVE_HYPNOSIS
        nature NATURE_ADAMANT
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 21
        pokemon SPECIES_DUNSPARCE
        move MOVE_HEADBUTT
        move MOVE_PURSUIT
        move MOVE_ROLLOUT
        move MOVE_YAWN
        nature NATURE_ADAMANT
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 21
        pokemon SPECIES_TAUROS
        move MOVE_HORN_ATTACK
        move MOVE_ASSURANCE
        move MOVE_RAGE
        move MOVE_SCARY_FACE
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 27, "Liz"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_PICNICKER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 27
        // mon 0
        ivs 255
        abilityslot 32
        level 22
        pokemon SPECIES_CLEFAIRY
        item ITEM_EVIOLITE
        move MOVE_DRAINING_KISS
        move MOVE_MAGICAL_LEAF
        move MOVE_SWEET_KISS
        move MOVE_SOFT_BOILED
        nature NATURE_BOLD
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 22
        pokemon SPECIES_MINCCINO
        item ITEM_LOADED_DICE
        move MOVE_TAIL_SLAP
        move MOVE_BULLET_SEED
        move MOVE_THIEF
        move MOVE_U_TURN
        nature NATURE_JOLLY
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 22
        pokemon SPECIES_BUNEARY
        item ITEM_SILK_SCARF
        move MOVE_FRUSTRATION
        move MOVE_PLAY_ROUGH
        move MOVE_QUICK_ATTACK
        move MOVE_DOUBLE_KICK
        nature NATURE_ADAMANT
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 22
        pokemon SPECIES_SYLVEON
        item ITEM_FAIRY_FEATHER
        move MOVE_SWIFT
        move MOVE_MUD_SLAP
        move MOVE_REFRESH
        move MOVE_YAWN
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 28, "Jake"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_ACE_TRAINER_M_GS
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 28
        // mon 0
        ivs 50
        abilityslot 32
        level 33
        pokemon SPECIES_PARASECT
        move MOVE_LEECH_LIFE
        move MOVE_SPORE
        move MOVE_SLASH
        move MOVE_SWORDS_DANCE
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 32
        level 35
        pokemon SPECIES_GOLDUCK
        move MOVE_PSYCHIC
        move MOVE_SCREECH
        move MOVE_WATER_PULSE
        move MOVE_FURY_SWIPES
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 15
        level 33
        pokemon SPECIES_VAPOREON
        move MOVE_BITE
        move MOVE_QUICK_ATTACK
        move MOVE_SAND_ATTACK
        move MOVE_SURF
        ballseal 0
    endparty

trainerdata 29, "Rod"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_BIRD_KEEPER_GS
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 29
        // mon 0
        ivs 255
        abilityslot 32
        level 17
        pokemon SPECIES_PIDOVE
        move MOVE_QUICK_ATTACK
        move MOVE_AIR_CUTTER
        move MOVE_GROWL
        move MOVE_ROOST
        nature NATURE_RASH
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 17
        pokemon SPECIES_FLETCHLING
        move MOVE_RAZOR_WIND
        move MOVE_PECK
        move MOVE_FLAIL
        move MOVE_QUICK_ATTACK
        nature NATURE_NAUGHTY
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 32
        level 17
        pokemon SPECIES_TRUMBEAK
        move MOVE_PLUCK
        move MOVE_ROCK_BLAST
        move MOVE_ROCK_SMASH
        move MOVE_ROOST
        nature NATURE_ADAMANT
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 17
        pokemon SPECIES_CORVISQUIRE
        move MOVE_PLUCK
        move MOVE_FURY_ATTACK
        move MOVE_POWER_TRIP
        move MOVE_HONE_CLAWS
        nature NATURE_JOLLY
        ballseal 0
    endparty

trainerdata 30, "Whitney"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass TRAINERCLASS_LEADER_WHITNEY
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 30
        // mon 0
        ivs 255
        abilityslot 32
        level 36
        pokemon SPECIES_LOPUNNY
        item ITEM_LUM_BERRY
        move MOVE_RETURN
        move MOVE_DRAIN_PUNCH
        move MOVE_FAKE_OUT
        move MOVE_U_TURN
        ball ITEM_LOVE_BALL
        nature NATURE_JOLLY
        additionalflags 0
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 36
        pokemon SPECIES_SNORLAX
        item ITEM_LEFTOVERS
        move MOVE_FACADE
        move MOVE_CRUNCH
        move MOVE_SLACK_OFF
        move MOVE_CURSE
        ball ITEM_LOVE_BALL
        nature NATURE_BOLD
        additionalflags 0
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 32
        level 36
        pokemon SPECIES_FARIGIRAF
        item ITEM_SITRUS_BERRY
        move MOVE_HYPER_VOICE
        move MOVE_TWIN_BEAM
        move MOVE_THUNDERBOLT
        move MOVE_AGILITY
        ball ITEM_LOVE_BALL
        nature NATURE_TIMID
        additionalflags 0
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 36
        pokemon SPECIES_DRAMPA
        item ITEM_LEFTOVERS
        move MOVE_HYPER_VOICE
        move MOVE_FLAMETHROWER
        move MOVE_ROOST
        move MOVE_CALM_MIND
        ball ITEM_LOVE_BALL
        nature NATURE_BOLD
        additionalflags 0
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 15
        level 36
        monwithform SPECIES_ZOROARK, 1
        item ITEM_SILK_SCARF
        move MOVE_FACADE
        move MOVE_SHADOW_BALL
        move MOVE_WILL_O_WISP
        move MOVE_PARTING_SHOT
        ball ITEM_LOVE_BALL
        nature NATURE_LONELY
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 16
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 15
        level 36
        pokemon SPECIES_URSALUNA
        item ITEM_ASSAULT_VEST
        move MOVE_FACADE
        move MOVE_STOMPING_TANTRUM
        move MOVE_CRUNCH
        move MOVE_DRAIN_PUNCH
        ball ITEM_LOVE_BALL
        nature NATURE_ADAMANT
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 16
        ballseal 0
    endparty

trainerdata 31, "Morty"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_LEADER_MORTY
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | F_PRIORITIZE_DAMAGE | F_PRIORITIZE_HEALING | 0
    battletype SINGLE_BATTLE
    endentry

    party 31
        // mon 0
        ivs 255
        abilityslot 2
        level 42
        pokemon SPECIES_DUSKNOIR
        item ITEM_CLEAR_AMULET
        move MOVE_SHADOW_PUNCH
        move MOVE_DRAIN_PUNCH
        move MOVE_ICE_PUNCH
        move MOVE_TELEPORT
        ball ITEM_MOON_BALL
        nature NATURE_ADAMANT
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 42
        pokemon SPECIES_BANETTE
        item ITEM_LEFTOVERS
        move MOVE_POLTERGEIST
        move MOVE_FRUSTRATION
        move MOVE_SHADOW_SNEAK
        move MOVE_WILL_O_WISP
        ball ITEM_MOON_BALL
        nature NATURE_ADAMANT
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 42
        pokemon SPECIES_MIMIKYU
        item ITEM_LIFE_ORB
        move MOVE_SHADOW_CLAW
        move MOVE_PLAY_ROUGH
        move MOVE_DRAIN_PUNCH
        move MOVE_SWORDS_DANCE
        ball ITEM_MOON_BALL
        nature NATURE_JOLLY
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 42
        pokemon SPECIES_MISMAGIUS
        item ITEM_FOCUS_SASH
        move MOVE_SHADOW_BALL
        move MOVE_PSYCHIC
        move MOVE_MYSTICAL_FIRE
        move MOVE_NASTY_PLOT
        ball ITEM_MOON_BALL
        nature NATURE_TIMID
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 42
        pokemon SPECIES_ANNIHILAPE
        item ITEM_SALAC_BERRY
        move MOVE_RAGE_FIST
        move MOVE_REVERSAL
        move MOVE_ENDURE
        move MOVE_BULK_UP
        ball ITEM_MOON_BALL
        nature NATURE_ADAMANT
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 32
        level 42
        pokemon SPECIES_CURSOLA
        item ITEM_LEFTOVERS
        move MOVE_SHADOW_BALL
        move MOVE_POWER_GEM
        move MOVE_STRENGTH_SAP
        move MOVE_CALM_MIND
        ball ITEM_MOON_BALL
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 32, "Pryce"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS |  TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_LEADER_PRYCE
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | F_DOUBLE_BATTLE | F_HARRASSMENT | 0
    battletype DOUBLE_BATTLE
    endentry

    party 32
        // mon 0
        ivs 255
        abilityslot 15
        level 63
        pokemon SPECIES_WEAVILE
        item ITEM_FOCUS_SASH
        move MOVE_ICICLE_CRASH
        move MOVE_KNOCK_OFF
        move MOVE_LOW_KICK
        move MOVE_FAKE_OUT
        ball ITEM_PREMIER_BALL
        nature NATURE_ADAMANT
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 63
        pokemon SPECIES_ARCTOVISH
        item ITEM_CLEAR_AMULET
        move MOVE_FISHIOUS_REND
        move MOVE_FREEZE_DRY
        move MOVE_SUPER_FANG
        move MOVE_PROTECT
        ball ITEM_PREMIER_BALL
        nature NATURE_NAIVE
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 63
        pokemon SPECIES_MAMOSWINE
        item ITEM_ASSAULT_VEST
        move MOVE_MOUNTAIN_GALE
        move MOVE_HIGH_HORSEPOWER
        move MOVE_ROCK_SLIDE
        move MOVE_TRAILBLAZE
        ball ITEM_PREMIER_BALL
        nature NATURE_JOLLY
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 63
        pokemon SPECIES_ARCTOZOLT
        item ITEM_NEVER_MELT_ICE
        move MOVE_BOLT_BEAK
        move MOVE_BLIZZARD
        move MOVE_STOMPING_TANTRUM
        move MOVE_FREEZE_DRY
        ball ITEM_PREMIER_BALL
        nature NATURE_NAUGHTY
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 15
        level 63
        pokemon SPECIES_IRON_BUNDLE
        item ITEM_BOOSTER_ENERGY
        move MOVE_BLIZZARD
        move MOVE_HYDRO_PUMP
        move MOVE_FREEZE_DRY
        move MOVE_ENCORE
        ball ITEM_PREMIER_BALL
        nature NATURE_MODEST
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 2
        level 63
        pokemon SPECIES_ABOMASNOW
        item ITEM_ABOMASITE
        move MOVE_BLIZZARD
        move MOVE_GIGA_DRAIN
        move MOVE_WEATHER_BALL
        move MOVE_EARTH_POWER
        ball ITEM_PREMIER_BALL
        nature NATURE_TIMID
        ballseal 0
    endparty

trainerdata 33, "Jasmine"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass TRAINERCLASS_LEADER_JASMINE
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 33
        // mon 0
        ivs 255
        abilityslot 2
        level 55
        pokemon SPECIES_EMPOLEON
        item ITEM_LEFTOVERS
        move MOVE_SURF
        move MOVE_FLASH_CANNON
        move MOVE_GRASS_KNOT
        move MOVE_ROOST
        ball ITEM_TIMER_BALL
        setivs 31, 0, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 0, 0, 0, 0, 0, 0
        nature NATURE_QUIET
        additionalflags 0
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 55
        pokemon SPECIES_CELESTEELA
        item ITEM_ASSAULT_VEST
        move MOVE_AIR_SLASH
        move MOVE_FLAMETHROWER
        move MOVE_GIGA_DRAIN
        move MOVE_METEOR_BEAM
        ball ITEM_TIMER_BALL
        setivs 31, 0, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 0, 0, 0, 0, 0, 0
        nature NATURE_QUIET
        additionalflags 0
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 55
        pokemon SPECIES_BRONZONG
        item ITEM_LEFTOVERS
        move MOVE_HEAVY_SLAM
        move MOVE_ZEN_HEADBUTT
        move MOVE_EARTHQUAKE
        move MOVE_TELEPORT
        ball ITEM_TIMER_BALL
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 0, 0, 0, 0, 0, 0
        nature NATURE_RELAXED
        additionalflags 0
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 32
        level 55
        monwithform SPECIES_GOODRA, 1
        item ITEM_ASSAULT_VEST
        move MOVE_FLASH_CANNON
        move MOVE_DRAGON_PULSE
        move MOVE_FLAMETHROWER
        move MOVE_SURF
        ball ITEM_TIMER_BALL
        setivs 31, 0, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 0, 0, 0, 0, 0, 0
        nature NATURE_QUIET
        additionalflags 0
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 32
        level 55
        pokemon SPECIES_MAGEARNA
        item ITEM_EXPERT_BELT
        move MOVE_FLASH_CANNON
        move MOVE_DAZZLING_GLEAM
        move MOVE_ICE_BEAM
        move MOVE_THUNDERBOLT
        ball ITEM_TIMER_BALL
        setivs 31, 0, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 0, 0, 0, 0, 0, 0
        nature NATURE_RELAXED
        additionalflags 0
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 32
        level 55
        pokemon SPECIES_STEELIX
        item ITEM_STEELIXITE
        move MOVE_IRON_TAIL
        move MOVE_EARTHQUAKE
        move MOVE_CRUNCH
        move MOVE_COIL
        ball ITEM_TIMER_BALL
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 0, 0, 0, 0, 0, 0
        nature NATURE_BRAVE
        additionalflags TRAINER_DATA_EXTRA_TYPE_NICKNAME
        nickname _R, _u_, _s_, _t_, _y_, _endstr, 0, 0, 0, 0, 0
        ballseal 0
    endparty

trainerdata 34, "Chuck"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass TRAINERCLASS_LEADER_CHUCK
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 34
        // mon 0
        ivs 255
        abilityslot 2
        level 50
        pokemon SPECIES_GRAPPLOCT
        item ITEM_ASSAULT_VEST
        move MOVE_STORM_THROW
        move MOVE_DRAIN_PUNCH
        move MOVE_BRUTAL_SWING
        move MOVE_FLIP_TURN
        ball ITEM_ULTRA_BALL
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 0, 0, 0, 0, 0, 0
        nature NATURE_ADAMANT
        additionalflags 0
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 50
        pokemon SPECIES_POLIWRATH
        item ITEM_SITRUS_BERRY
        move MOVE_LIQUIDATION
        move MOVE_DRAIN_PUNCH
        move MOVE_EARTHQUAKE
        move MOVE_BELLY_DRUM
        ball ITEM_ULTRA_BALL
        setivs 29, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 0, 0, 0, 0, 0, 0
        nature NATURE_ADAMANT
        additionalflags 0
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 50
        pokemon SPECIES_GALLADE
        item ITEM_ASSAULT_VEST
        move MOVE_SACRED_SWORD
        move MOVE_PSYCHO_CUT
        move MOVE_AQUA_CUTTER
        move MOVE_NIGHT_SLASH
        ball ITEM_ULTRA_BALL
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 0, 0, 0, 0, 0, 0
        nature NATURE_JOLLY
        additionalflags 0
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 50
        pokemon SPECIES_PAWMOT
        item ITEM_LEPPA_BERRY
        move MOVE_CLOSE_COMBAT
        move MOVE_THUNDER_PUNCH
        move MOVE_ICE_PUNCH
        move MOVE_REVIVAL_BLESSING
        ball ITEM_ULTRA_BALL
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 0, 0, 0, 0, 0, 0
        nature NATURE_JOLLY
        additionalflags 0
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 15
        level 50
        monwithform SPECIES_URSHIFU, 1
        item ITEM_PUNCHING_GLOVE
        move MOVE_SURGING_STRIKES
        move MOVE_DRAIN_PUNCH
        move MOVE_THUNDER_PUNCH
        move MOVE_SWORDS_DANCE
        ball ITEM_ULTRA_BALL
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 0, 0, 0, 0, 0, 0
        nature NATURE_JOLLY
        additionalflags 0
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 32
        level 50
        pokemon SPECIES_HERACROSS
        item ITEM_CLEAR_AMULET
        move MOVE_MEGAHORN
        move MOVE_CLOSE_COMBAT
        move MOVE_FACADE
        move MOVE_SWORDS_DANCE
        ball ITEM_ULTRA_BALL
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 0, 0, 0, 0, 0, 0
        nature NATURE_JOLLY
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 16
        ballseal 0
    endparty

trainerdata 35, "Clair"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_LEADER_CLAIR
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 35
        // mon 0
        ivs 255
        abilityslot 15
        level 69
        pokemon SPECIES_LATIOS
        item ITEM_SOUL_DEW
        move MOVE_DRAGON_PULSE
        move MOVE_LUSTER_PURGE
        move MOVE_WEATHER_BALL
        move MOVE_FLIP_TURN
        nature NATURE_MODEST
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 69
        pokemon SPECIES_KINGDRA
        item ITEM_SCOPE_LENS
        move MOVE_SNIPE_SHOT
        move MOVE_DRACO_METEOR
        move MOVE_HURRICANE
        move MOVE_FOCUS_ENERGY
        nature NATURE_MODEST
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 69
        pokemon SPECIES_ARCHALUDON
        item ITEM_ASSAULT_VEST
        move MOVE_FLASH_CANNON
        move MOVE_DRAGON_PULSE
        move MOVE_ELECTRO_SHOT
        move MOVE_BODY_PRESS
        nature NATURE_TIMID
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 32
        level 69
        pokemon SPECIES_GOODRA
        item ITEM_ROCKY_HELMET
        move MOVE_DRAGON_PULSE
        move MOVE_SCALD
        move MOVE_ACID_ARMOR
        move MOVE_REST
        nature NATURE_TIMID
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 15
        level 69
        pokemon SPECIES_RAGING_BOLT
        item ITEM_LEFTOVERS
        move MOVE_THUNDER
        move MOVE_DRAGON_PULSE
        move MOVE_THUNDERCLAP
        move MOVE_WEATHER_BALL
        nature NATURE_TIMID
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 2
        level 69
        pokemon SPECIES_ALTARIA
        item ITEM_ALTARIANITE
        move MOVE_RETURN
        move MOVE_EARTHQUAKE
        move MOVE_ROOST
        move MOVE_DRAGON_DANCE
        nature NATURE_JOLLY
        ballseal 0
    endparty

trainerdata 36, "Joyce"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_ACE_TRAINER_F_GS
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 36
        // mon 0
        ivs 255
        abilityslot 32 
        level 73
        pokemon SPECIES_CLEFABLE
        item ITEM_ROCKY_HELMET
        move MOVE_MOONBLAST
        move MOVE_FLAMETHROWER
        move MOVE_STEALTH_ROCK
        move MOVE_SOFT_BOILED
        nature NATURE_BOLD
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32 
        level 73
        pokemon SPECIES_MACHAMP
        item ITEM_BLACK_BELT
        move MOVE_DYNAMIC_PUNCH
        move MOVE_EARTHQUAKE
        move MOVE_STONE_EDGE
        move MOVE_ICE_PUNCH
        nature NATURE_JOLLY
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 32 
        level 73
        pokemon SPECIES_DRAGONITE
        item ITEM_LUM_BERRY
        move MOVE_OUTRAGE
        move MOVE_DUAL_WINGBEAT
        move MOVE_EXTREME_SPEED
        move MOVE_DRAGON_DANCE
        nature NATURE_JOLLY
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 32 
        level 73
        pokemon SPECIES_SNORLAX
        item ITEM_LEFTOVERS
        move MOVE_RETURN
        move MOVE_EARTHQUAKE
        move MOVE_CRUNCH
        move MOVE_SLACK_OFF
        nature NATURE_IMPISH
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 73
        monwithform SPECIES_PIKACHU, 15
        item ITEM_LIGHT_BALL
        move MOVE_THUNDERBOLT
        move MOVE_SPLISHY_SPLASH
        move MOVE_FLOATY_FALL
        move MOVE_VOLT_SWITCH
        nature NATURE_MILD
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 15
        level 74
        pokemon SPECIES_BLASTOISE
        item ITEM_BLASTOISINITE
        move MOVE_SNIPE_SHOT
        move MOVE_AURA_SPHERE
        move MOVE_DARK_PULSE
        move MOVE_SHELL_SMASH
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 37, "Preston"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_GENTLEMAN
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 37
        // mon 0
        ivs 255
        abilityslot 2
        level 46
        pokemon SPECIES_CORVIKNIGHT
        item ITEM_LEFTOVERS
        move MOVE_BRAVE_BIRD
        move MOVE_BODY_PRESS
        move MOVE_BULK_UP
        move MOVE_ROOST
        nature NATURE_CAREFUL
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 46
        pokemon SPECIES_AEGISLASH
        item ITEM_SPELL_TAG
        move MOVE_SHADOW_CLAW
        move MOVE_CLOSE_COMBAT
        move MOVE_SHADOW_SNEAK
        move MOVE_KINGS_SHIELD
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 46
        pokemon SPECIES_AGGRON
        item ITEM_CHOPLE_BERRY
        move MOVE_HEAD_SMASH
        move MOVE_IRON_HEAD
        move MOVE_SUPERPOWER
        move MOVE_ROCK_POLISH
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 46
        pokemon SPECIES_DURALUDON
        item ITEM_EVIOLITE
        move MOVE_DRACO_METEOR
        move MOVE_FLASH_CANNON
        move MOVE_BODY_PRESS
        move MOVE_THUNDERBOLT
        nature NATURE_TIMID
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 46
        pokemon SPECIES_GHOLDENGO
        item ITEM_EJECT_PACK
        move MOVE_MAKE_IT_RAIN
        move MOVE_SHADOW_BALL
        move MOVE_DAZZLING_GLEAM
        move MOVE_RECOVER
        nature NATURE_TIMID
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 46
        pokemon SPECIES_SCIZOR
        item ITEM_LIFE_ORB
        move MOVE_BUG_BITE
        move MOVE_BULLET_PUNCH
        move MOVE_PURSUIT
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 38, "Colette"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_TEACHER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 38
        // mon 0
        ivs 0
        abilityslot 32
        level 45
        pokemon SPECIES_CLEFAIRY
        ballseal 0
    endparty

trainerdata 39, "Eugene"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_SAILOR
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 39
        // mon 0
        ivs 255
        abilityslot 15
        level 44
        pokemon SPECIES_SEADRA
        item ITEM_EVIOLITE
        move MOVE_SURF
        move MOVE_ICE_BEAM
        move MOVE_DRAGON_PULSE
        move MOVE_FLIP_TURN
        nature NATURE_TIMID
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 44
        monwithform SPECIES_RATICATE, 1 
        item ITEM_LEFTOVERS
        move MOVE_RETURN
        move MOVE_KNOCK_OFF
        move MOVE_STOMPING_TANTRUM
        move MOVE_U_TURN
        nature NATURE_ADAMANT
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 44
        pokemon SPECIES_POLIWRATH
        item ITEM_MYSTIC_WATER
        move MOVE_LIQUIDATION
        move MOVE_DRAIN_PUNCH
        move MOVE_EARTHQUAKE
        move MOVE_BULK_UP
        nature NATURE_JOLLY
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 44
        monwithform SPECIES_SLOWBRO, 2
        item ITEM_LEFTOVERS
        move MOVE_SURF
        move MOVE_PSYCHIC
        move MOVE_FLAMETHROWER
        move MOVE_SLACK_OFF
        nature NATURE_BOLD
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 44
        pokemon SPECIES_KINGLER
        item ITEM_LIFE_ORB
        move MOVE_CRABHAMMER
        move MOVE_SUPERPOWER
        move MOVE_HIGH_HORSEPOWER
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 40, "Jasmine"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass TRAINERCLASS_LEADER_JASMINE
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 40
        // mon 0
        ivs 255
        abilityslot 2
        level 52
        pokemon SPECIES_AMPHAROS
        item ITEM_AMPHAROSITE
        move MOVE_RISING_VOLTAGE
        move MOVE_DRAGON_PULSE
        move MOVE_HIDDEN_POWER
        move MOVE_TAIL_GLOW
        ball ITEM_NONE
        setivs 31, 0, 31, 0, 30, 31 // hp, atk, def, spd, spatk, spdef
        setevs 0, 0, 0, 0, 0, 0
        nature NATURE_RELAXED
        additionalflags TRAINER_DATA_EXTRA_TYPE_NICKNAME
        nickname _A, _m_, _p_, _h_, _y_, _endstr, 0, 0, 0, 0, 0
        ballseal 0
    endparty

trainerdata 41, "Clyde"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_GUITARIST
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 41
        // mon 0
        ivs 0
        abilityslot 15
        level 42
        pokemon SPECIES_ELECTABUZZ
        ballseal 0
    endparty

trainerdata 42, "Nathan"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_PSYCHIC_M
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | F_MULTI_BATTLE_PARTNER | 0
    battletype SINGLE_BATTLE
    endentry

    party 42
        // mon 0
        ivs 255
        abilityslot 15
        level 46
        pokemon SPECIES_GOLURK
        item ITEM_EJECT_PACK
        move MOVE_EARTHQUAKE
        move MOVE_SHADOW_PUNCH
        move MOVE_CLOSE_COMBAT
        move MOVE_STEALTH_ROCK
        nature NATURE_ADAMANT
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 46
        pokemon SPECIES_METAGROSS
        item ITEM_PSYCHIC_SEED
        move MOVE_IRON_HEAD
        move MOVE_ZEN_HEADBUTT
        move MOVE_EARTHQUAKE
        move MOVE_EXPLOSION
        nature NATURE_ADAMANT
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 46
        pokemon SPECIES_CERULEDGE
        item ITEM_FOCUS_SASH
        move MOVE_FLAME_CHARGE
        move MOVE_POLTERGEIST
        move MOVE_CLOSE_COMBAT
        move MOVE_SWORDS_DANCE
        nature NATURE_JOLLY
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 46
        pokemon SPECIES_ARMAROUGE
        item ITEM_WEAKNESS_POLICY
        move MOVE_EXPANDING_FORCE
        move MOVE_FLAMETHROWER
        move MOVE_ENERGY_BALL
        move MOVE_ENDURE
        nature NATURE_TIMID
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 15
        level 46
        pokemon SPECIES_SHEDINJA
        item ITEM_PSYCHIC_SEED
        move MOVE_X_SCISSOR
        move MOVE_SHADOW_CLAW
        move MOVE_SWORDS_DANCE
        move MOVE_BATON_PASS
        nature NATURE_JOLLY
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 2
        level 46
        pokemon SPECIES_FARIGIRAF
        item ITEM_LEFTOVERS
        move MOVE_HYPER_VOICE
        move MOVE_TWIN_BEAM
        move MOVE_DAZZLING_GLEAM
        move MOVE_CALM_MIND
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 43, "Chow"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_SAGE
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 43
        // mon 0
        ivs 255
        abilityslot 15
        level 12
        pokemon SPECIES_BELLSPROUT
        move MOVE_VINE_WHIP
        move MOVE_GROWTH
        move MOVE_WRAP
        move MOVE_SLEEP_POWDER
        nature NATURE_JOLLY
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 12
        pokemon SPECIES_BELLSPROUT
        move MOVE_VINE_WHIP
        move MOVE_GROWTH
        move MOVE_WRAP
        move MOVE_SLEEP_POWDER
        nature NATURE_JOLLY
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 12
        pokemon SPECIES_BELLSPROUT
        move MOVE_VINE_WHIP
        move MOVE_GROWTH
        move MOVE_WRAP
        move MOVE_SLEEP_POWDER
        nature NATURE_JOLLY
        ballseal 0
    endparty

trainerdata 44, "Derek"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass TRAINERCLASS_POKEFAN_M
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 44
        // mon 0
        ivs 255
        abilityslot 15
        level 44
        monwithform SPECIES_PIKACHU, 15
        item ITEM_LIGHT_BALL
        move MOVE_PIKA_PAPOW
        move MOVE_SPLISHY_SPLASH
        move MOVE_FLOATY_FALL
        move MOVE_FAKE_OUT
        nature NATURE_HASTY
        additionalflags 0
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 44
        pokemon SPECIES_URSARING
        item ITEM_EVIOLITE
        move MOVE_FACADE
        move MOVE_EARTHQUAKE
        move MOVE_SHADOW_CLAW
        move MOVE_SWORDS_DANCE
        nature NATURE_JOLLY
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 64
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 44
        monwithform SPECIES_RAICHU, 1
        item ITEM_MAGNET
        move MOVE_PIKA_PAPOW
        move MOVE_PSYCHIC
        move MOVE_VOLT_SWITCH
        move MOVE_SURF
        nature NATURE_TIMID
        additionalflags 0
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 44
        pokemon SPECIES_URSALUNA
        item ITEM_SPELL_TAG
        move MOVE_FACADE
        move MOVE_EARTHQUAKE
        move MOVE_SHADOW_CLAW
        move MOVE_TRAILBLAZE
        nature NATURE_JOLLY
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 16
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 44
        pokemon SPECIES_RAICHU
        item ITEM_ASSAULT_VEST
        move MOVE_VOLT_TACKLE
        move MOVE_EXTREME_SPEED
        move MOVE_VOLT_SWITCH
        move MOVE_FAKE_OUT
        nature NATURE_JOLLY
        additionalflags 0
        ballseal 0
    endparty

trainerdata 45, "Ruth"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_POKEFAN
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 45
        // mon 0
        ivs 0
        abilityslot 15
        level 17
        pokemon SPECIES_PIKACHU
        move MOVE_DOUBLE_TEAM
        move MOVE_QUICK_ATTACK
        move MOVE_TAIL_WHIP
        move MOVE_THUNDER_SHOCK
        ballseal 0
    endparty

trainerdata 46, "Martha"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_MEDIUM
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 46
        // mon 0
        ivs 255
        abilityslot 2
        level 42
        pokemon SPECIES_SABLEYE
        item ITEM_EJECT_BUTTON
        move MOVE_FOUL_PLAY
        move MOVE_LIGHT_SCREEN
        move MOVE_REFLECT
        move MOVE_WILL_O_WISP
        nature NATURE_CAREFUL
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 42
        monwithform SPECIES_ZOROARK, 1
        item ITEM_FOCUS_SASH
        move MOVE_HYPER_VOICE
        move MOVE_HEX
        move MOVE_U_TURN
        move MOVE_WILL_O_WISP
        nature NATURE_TIMID
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 42
        pokemon SPECIES_SHEDINJA
        item ITEM_FOCUS_SASH
        move MOVE_X_SCISSOR
        move MOVE_SHADOW_SNEAK
        move MOVE_BATON_PASS
        move MOVE_WILL_O_WISP
        nature NATURE_JOLLY
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 42
        pokemon SPECIES_AEGISLASH
        item ITEM_SPELL_TAG
        move MOVE_SHADOW_CLAW
        move MOVE_SACRED_SWORD
        move MOVE_SHADOW_SNEAK
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 42
        pokemon SPECIES_GENGAR
        item ITEM_FOCUS_SASH
        move MOVE_HEX
        move MOVE_SLUDGE_WAVE
        move MOVE_THUNDERBOLT
        move MOVE_NASTY_PLOT
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 47, "Mikey"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_YOUNGSTER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 47
        // mon 0
        ivs 255
        abilityslot 2
        level 7
        pokemon SPECIES_RATTATA
        item ITEM_NONE
        move MOVE_TACKLE
        move MOVE_QUICK_ATTACK
        move MOVE_FOCUS_ENERGY
        move MOVE_TAIL_WHIP
        nature NATURE_JOLLY
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 8
        pokemon SPECIES_SENTRET
        item ITEM_ORAN_BERRY
        move MOVE_FURY_SWIPES
        move MOVE_QUICK_ATTACK
        move MOVE_DEFENSE_CURL
        move MOVE_GROWL
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 48, "Rob"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BUG_CATCHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 48
        // mon 0
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_BEEDRILL
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 39
        pokemon SPECIES_BUTTERFREE
        ballseal 0
    endparty

trainerdata 49, "Albert"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET | 0
    trainerclass TRAINERCLASS_YOUNGSTER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 49
        // mon 0
        ivs 0
        abilityslot 15
        level 19
        pokemon SPECIES_ZUBAT
        move MOVE_POISON_FANG
        move MOVE_BITE
        move MOVE_WING_ATTACK
        move MOVE_ABSORB
        nature NATURE_LONELY
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 18
        pokemon SPECIES_RATICATE
        move MOVE_HYPER_FANG
        move MOVE_BITE
        move MOVE_QUICK_ATTACK
        move MOVE_PURSUIT
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 50, "Abe"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_BIRD_KEEPER_GS
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 50
        // mon 0
        ivs 255
        abilityslot 15
        level 16
        pokemon SPECIES_PIDGEY
        move MOVE_QUICK_ATTACK
        move MOVE_GUST
        move MOVE_SAND_ATTACK
        move MOVE_WHIRLWIND
        nature NATURE_TIMID
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 16
        pokemon SPECIES_HOOTHOOT
        move MOVE_UPROAR
        move MOVE_PECK
        move MOVE_HYPNOSIS
        move MOVE_REFLECT
        nature NATURE_TIMID
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 17
        pokemon SPECIES_TAILLOW
        move MOVE_QUICK_ATTACK
        move MOVE_WING_ATTACK
        move MOVE_ENDEAVOR
        move MOVE_GROWL
        nature NATURE_ADAMANT
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 17
        pokemon SPECIES_STARAVIA
        move MOVE_QUICK_ATTACK
        move MOVE_WING_ATTACK
        move MOVE_ENDEAVOR
        move MOVE_DOUBLE_TEAM
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 51, "Nico"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_SAGE
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 51
        // mon 0
        ivs 255
        abilityslot 15
        level 12
        pokemon SPECIES_BELLSPROUT
        move MOVE_VINE_WHIP
        move MOVE_GROWTH
        move MOVE_WRAP
        move MOVE_SLEEP_POWDER
        nature NATURE_JOLLY
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 12
        pokemon SPECIES_BELLSPROUT
        move MOVE_VINE_WHIP
        move MOVE_GROWTH
        move MOVE_WRAP
        move MOVE_SLEEP_POWDER
        nature NATURE_JOLLY
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 12
        pokemon SPECIES_BELLSPROUT
        move MOVE_VINE_WHIP
        move MOVE_GROWTH
        move MOVE_WRAP
        move MOVE_SLEEP_POWDER
        nature NATURE_JOLLY
        ballseal 0
    endparty

trainerdata 52, "Edmond"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_SAGE
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 52
        // mon 0
        ivs 255
        abilityslot 15
        level 13
        pokemon SPECIES_BELLSPROUT
        move MOVE_VINE_WHIP
        move MOVE_GROWTH
        move MOVE_WRAP
        move MOVE_SLEEP_POWDER
        nature NATURE_JOLLY
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 13
        pokemon SPECIES_BELLSPROUT
        move MOVE_VINE_WHIP
        move MOVE_GROWTH
        move MOVE_WRAP
        move MOVE_SLEEP_POWDER
        nature NATURE_JOLLY
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 13
        pokemon SPECIES_BELLSPROUT
        move MOVE_VINE_WHIP
        move MOVE_GROWTH
        move MOVE_WRAP
        move MOVE_SLEEP_POWDER
        nature NATURE_JOLLY
        ballseal 0
    endparty

trainerdata 53, "Jin"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_SAGE
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 53
        // mon 0
        ivs 255
        abilityslot 2
        level 15
        pokemon SPECIES_BELLSPROUT
        item ITEM_MICLE_BERRY
        move MOVE_VINE_WHIP
        move MOVE_CLEAR_SMOG
        move MOVE_SLEEP_POWDER
        move MOVE_GROWTH
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 15
        pokemon SPECIES_SHUPPET
        item ITEM_BERRY_JUICE
        move MOVE_NIGHT_SHADE
        move MOVE_KNOCK_OFF
        move MOVE_SCREECH
        move MOVE_CURSE
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 54, "Troy"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_SAGE
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 54
        // mon 0
        ivs 255
        abilityslot 15
        level 15
        pokemon SPECIES_BELLSPROUT
        move MOVE_VINE_WHIP
        move MOVE_GROWTH
        move MOVE_WRAP
        move MOVE_SLEEP_POWDER
        nature NATURE_JOLLY
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 15
        pokemon SPECIES_HOOTHOOT
        move MOVE_UPROAR
        move MOVE_HYPNOSIS
        move MOVE_PECK
        move MOVE_FORESIGHT
        nature NATURE_MODEST
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 15
        pokemon SPECIES_SUNKERN
        move MOVE_MEGA_DRAIN
        move MOVE_TACKLE
        move MOVE_GRASS_WHISTLE
        move MOVE_LEECH_SEED
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 55, "Neal"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_SAGE
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 55
        // mon 0
        ivs 255
        abilityslot 2
        level 15
        pokemon SPECIES_BELLSPROUT
        item ITEM_MICLE_BERRY
        move MOVE_VINE_WHIP
        move MOVE_CLEAR_SMOG
        move MOVE_SLEEP_POWDER
        move MOVE_GROWTH
        nature NATURE_JOLLY
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 15
        pokemon SPECIES_DUSKULL
        item ITEM_BERRY_JUICE
        move MOVE_SHADOW_SNEAK
        move MOVE_NIGHT_SHADE
        move MOVE_CONFUSE_RAY
        move MOVE_DISABLE
        nature NATURE_CALM
        ballseal 0
    endparty

trainerdata 56, "Gordon"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_YOUNGSTER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 56
        // mon 0
        ivs 255
        abilityslot 32
        level 22
        pokemon SPECIES_QUAGSIRE
        move MOVE_AQUA_TAIL
        move MOVE_MUD_BOMB
        move MOVE_SLAM
        move MOVE_RECOVER
        nature NATURE_RELAXED
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 22
        pokemon SPECIES_CLODSIRE
        move MOVE_POISON_JAB
        move MOVE_MUD_BOMB
        move MOVE_SLAM
        move MOVE_RECOVER
        nature NATURE_RELAXED
        ballseal 0
    endparty

trainerdata 57, "Ralph"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_FISHERMAN
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 57
        // mon 0
        ivs 255
        abilityslot 2
        level 21
        pokemon SPECIES_REMORAID
        move MOVE_AURORA_BEAM
        move MOVE_PSYBEAM
        move MOVE_CHARGE_BEAM
        move MOVE_ACID_SPRAY
        nature NATURE_TIMID
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 21
        pokemon SPECIES_GOLDEEN
        move MOVE_WATER_PULSE
        move MOVE_HORN_ATTACK
        move MOVE_PECK
        move MOVE_FLAIL
        nature NATURE_NAIVE
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 21
        pokemon SPECIES_QWILFISH
        move MOVE_BRINE
        move MOVE_POISON_STING
        move MOVE_REVENGE
        move MOVE_SPIKY_SHIELD
        nature NATURE_NAIVE
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 21
        pokemon SPECIES_GYARADOS
        move MOVE_WATERFALL
        move MOVE_BITE
        move MOVE_ICE_FANG
        move MOVE_DRAGON_RAGE
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 58, "Arnold"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_FISHERMAN
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 58
        // mon 0
        ivs 0
        abilityslot 15
        level 44
        pokemon SPECIES_SHELLDER
        ballseal 0
    endparty

trainerdata 59, "Kyle"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_FISHERMAN
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 59
        // mon 0
        ivs 0
        abilityslot 15
        level 39
        pokemon SPECIES_GOLDEEN
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 35
        pokemon SPECIES_QWILFISH
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 39
        pokemon SPECIES_GOLDEEN
        ballseal 0
    endparty

trainerdata 60, "Henry"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_FISHERMAN
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 60
        // mon 0
        ivs 255
        abilityslot 15
        level 20
        pokemon SPECIES_POLIWAG
        move MOVE_BUBBLE_BEAM
        move MOVE_BODY_SLAM
        move MOVE_ICE_BALL
        move MOVE_HYPNOSIS
        nature NATURE_HASTY
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 21
        pokemon SPECIES_MANKEY
        move MOVE_KARATE_CHOP
        move MOVE_ASSURANCE
        move MOVE_RETALIATE
        move MOVE_PURSUIT
        nature NATURE_JOLLY
        ballseal 0
    endparty

trainerdata 61, "Anthony"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_HIKER
    nummons 0x80 | 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 61
        // mon 0
        ivs 255
        abilityslot 15
        level 25
        pokemon SPECIES_CHINCHOU
        item ITEM_SITRUS_BERRY
        move MOVE_BUBBLE_BEAM
        move MOVE_SHOCK_WAVE
        move MOVE_ICY_WIND
        move MOVE_VOLT_SWITCH
        nature NATURE_MODEST
        ballseal 0
        
        // mon 1
        ivs 255
        abilityslot 15
        level 25
        pokemon SPECIES_RELICANTH
        item ITEM_RINDO_BERRY
        move MOVE_DIVE
        move MOVE_ROCK_TOMB
        move MOVE_BULLDOZE
        move MOVE_YAWN
        nature NATURE_ADAMANT
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 25
        pokemon SPECIES_BIBAREL
        item ITEM_SALAC_BERRY
        move MOVE_HYPER_FANG
        move MOVE_AQUA_JET
        move MOVE_SWORDS_DANCE
        move MOVE_YAWN
        nature NATURE_JOLLY
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 25
        pokemon SPECIES_DREDNAW
        item ITEM_WHITE_HERB
        move MOVE_RAZOR_SHELL
        move MOVE_ROCK_TOMB
        move MOVE_CRUNCH
        move MOVE_SHELL_SMASH
        nature NATURE_ADAMANT
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 32
        level 25
        pokemon SPECIES_QUAGSIRE
        item ITEM_SALAC_BERRY
        move MOVE_AQUA_TAIL
        move MOVE_STOMPING_TANTRUM
        move MOVE_SLAM
        move MOVE_RECOVER
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 62, "Samuel"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_YOUNGSTER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 62
        // mon 0
        ivs 255
        abilityslot 32
        level 31
        pokemon SPECIES_SANDSLASH
        move MOVE_DRILL_RUN
        move MOVE_LEECH_LIFE
        move MOVE_CRUSH_CLAW
        move MOVE_SPIKY_SHIELD
        nature NATURE_ADAMANT
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 31
        pokemon SPECIES_DODRIO
        move MOVE_FRUSTRATION
        move MOVE_ACROBATICS
        move MOVE_TRIPLE_KICK
        move MOVE_QUICK_ATTACK
        nature NATURE_ADAMANT
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 31
        pokemon SPECIES_SUNFLORA
        move MOVE_GIGA_DRAIN
        move MOVE_DAZZLING_GLEAM
        move MOVE_EARTH_POWER
        move MOVE_SYNTHESIS
        nature NATURE_MODEST
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 31
        pokemon SPECIES_FARIGIRAF
        move MOVE_HYPER_VOICE
        move MOVE_TWIN_BEAM
        move MOVE_GRASS_KNOT
        move MOVE_WISH
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 63, "Ethan"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_PKMN_TRAINER_ETHAN
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 63
        // mon 0
        ivs 255
        abilityslot 32
        level 33
        pokemon SPECIES_AZUMARILL
        item ITEM_SITRUS_BERRY
        move MOVE_AQUA_TAIL
        move MOVE_PLAY_ROUGH
        move MOVE_AQUA_JET
        move MOVE_BELLY_DRUM
        nature NATURE_ADAMANT
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 33
        pokemon SPECIES_DRAGONAIR
        item ITEM_EVIOLITE
        move MOVE_OUTRAGE
        move MOVE_EXTREME_SPEED
        move MOVE_SLEEP_TALK
        move MOVE_REST
        nature NATURE_ADAMANT
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 32
        level 33
        pokemon SPECIES_CLODSIRE
        item ITEM_BLACK_SLUDGE
        move MOVE_POISON_JAB
        move MOVE_STOMPING_TANTRUM
        move MOVE_RECOVER
        move MOVE_TOXIC
        nature NATURE_CAREFUL
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 33
        pokemon SPECIES_FROSMOTH
        item ITEM_LEFTOVERS
        move MOVE_ICE_BEAM
        move MOVE_GIGA_DRAIN
        move MOVE_SUBSTITUTE
        move MOVE_QUIVER_DANCE
        nature NATURE_TIMID
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 15
        level 33
        monwithform SPECIES_DUDUNSPARCE, 1
        item ITEM_LEFTOVERS
        move MOVE_HYPER_VOICE
        move MOVE_AIR_SLASH
        move MOVE_ROOST
        move MOVE_GLARE
        nature NATURE_BOLD
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 32
        level 33
        pokemon SPECIES_LUCARIO
        item ITEM_LIFE_ORB
        move MOVE_AURA_SPHERE
        move MOVE_FLASH_CANNON
        move MOVE_VACUUM_WAVE
        move MOVE_NASTY_PLOT
        nature NATURE_TIMID
        ballseal 0
    endparty

trainerdata 64, "Ian"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_YOUNGSTER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 64
        // mon 3
        ivs 255
        abilityslot 15
        level 33
        pokemon SPECIES_DONPHAN
        move MOVE_STOMPING_TANTRUM
        move MOVE_THUNDER_FANG
        move MOVE_FIRE_FANG
        move MOVE_STEALTH_ROCK
        nature NATURE_ADAMANT
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 33
        pokemon SPECIES_DUGTRIO
        move MOVE_BULLDOZE
        move MOVE_SLASH
        move MOVE_ROCK_TOMB
        move MOVE_SWORDS_DANCE
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 33
        pokemon SPECIES_PRIMEAPE
        move MOVE_CROSS_CHOP
        move MOVE_ROCK_TOMB
        move MOVE_PURSUIT
        move MOVE_HONE_CLAWS
        nature NATURE_JOLLY
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 32
        level 33
        pokemon SPECIES_HERACROSS
        move MOVE_BRICK_BREAK
        move MOVE_PURSUIT
        move MOVE_FEINT
        move MOVE_BULK_UP
        nature NATURE_JOLLY
        ballseal 0
    endparty

trainerdata 65, "Gina"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_PICNICKER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 65
        // mon 0
        ivs 255
        abilityslot 2
        level 32
        pokemon SPECIES_JUMPLUFF
        item ITEM_NONE
        move MOVE_GIGA_DRAIN
        move MOVE_ACROBATICS
        move MOVE_STRENGTH_SAP
        move MOVE_LEECH_SEED
        nature NATURE_SERIOUS
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 32
        pokemon SPECIES_BELLOSSOM
        item ITEM_NONE
        move MOVE_GIGA_DRAIN
        move MOVE_VENOSHOCK
        move MOVE_TOXIC
        move MOVE_STRENGTH_SAP
        nature NATURE_BOLD
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 32
        pokemon SPECIES_EXEGGUTOR
        item ITEM_SITRUS_BERRY
        move MOVE_GIGA_DRAIN
        move MOVE_CONFUSION
        move MOVE_SLEEP_POWDER
        move MOVE_SOFT_BOILED
        nature NATURE_BOLD
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 32
        pokemon SPECIES_IVYSAUR
        item ITEM_EVIOLITE
        move MOVE_GIGA_DRAIN
        move MOVE_VENOSHOCK
        move MOVE_TOXIC
        move MOVE_LEECH_SEED
        nature NATURE_BOLD
        ballseal 0
    endparty

trainerdata 66, "Todd"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_CAMPER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0 
    battletype SINGLE_BATTLE
    endentry

    party 66
        // mon 0
        ivs 255
        abilityslot 2
        level 34
        monwithform SPECIES_GRAVELER, 1
        item ITEM_NONE
        move MOVE_RETURN
        move MOVE_ROCK_SLIDE
        move MOVE_STEAMROLLER
        move MOVE_AUTOTOMIZE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 34
        pokemon SPECIES_VILEPLUME
        item ITEM_NONE
        move MOVE_GIGA_DRAIN
        move MOVE_ACID_SPRAY
        move MOVE_MOONLIGHT
        move MOVE_TOXIC
        nature NATURE_BOLD
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 34
        monwithform SPECIES_MAROWAK, 1
        item ITEM_THICK_CLUB
        move MOVE_SHADOW_BONE
        move MOVE_BONEMERANG
        move MOVE_FLAME_CHARGE
        move MOVE_SWORDS_DANCE
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 34
        pokemon SPECIES_WARTORTLE
        item ITEM_NONE
        move MOVE_WATER_PULSE
        move MOVE_MUD_SHOT
        move MOVE_YAWN
        move MOVE_SHELL_SMASH
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 67, "Benny"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_NATURE_SET | 0
    trainerclass TRAINERCLASS_BUG_CATCHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 67
        // mon 0
        ivs 255
        abilityslot 32
        level 27
        pokemon SPECIES_ILLUMISE
        move MOVE_SIGNAL_BEAM
        move MOVE_MOONLIGHT
        move MOVE_QUICK_ATTACK
        move MOVE_FLASH
        ball ITEM_SPORT_BALL
        nature NATURE_HASTY
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 27
        pokemon SPECIES_WORMADAM
        move MOVE_STRUGGLE_BUG
        move MOVE_RAZOR_LEAF
        move MOVE_CONFUSION
        move MOVE_SYNTHESIS
        ball ITEM_SPORT_BALL
        nature NATURE_QUIET
        ballseal 0
    endparty

trainerdata 68, "Al"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_NATURE_SET | 0
    trainerclass TRAINERCLASS_BUG_CATCHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 68
        // mon 0
        ivs 255
        abilityslot 2
        level 27
        pokemon SPECIES_VOLBEAT
        move MOVE_SIGNAL_BEAM
        move MOVE_QUICK_ATTACK
        move MOVE_MOONLIGHT
        move MOVE_FLASH
        ball ITEM_SPORT_BALL
        nature NATURE_MODEST
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 27
        pokemon SPECIES_MOTHIM
        move MOVE_STRUGGLE_BUG
        move MOVE_GUST
        move MOVE_CONFUSION
        move MOVE_ELECTROWEB
        ball ITEM_SPORT_BALL
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 69, "Josh"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_BUG_CATCHER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 69
        // mon 0
        ivs 255
        abilityslot 15
        level 29
        pokemon SPECIES_PINSIR
        move MOVE_BUG_BITE
        move MOVE_REVENGE
        move MOVE_DOUBLE_HIT
        move MOVE_ROCK_TOMB
        ball ITEM_NET_BALL
        nature NATURE_MODEST
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 29
        pokemon SPECIES_ACCELGOR
        move MOVE_STRUGGLE_BUG
        move MOVE_GIGA_DRAIN
        move MOVE_U_TURN
        move MOVE_YAWN
        ball ITEM_NET_BALL
        nature NATURE_MODEST
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 29
        pokemon SPECIES_ESCAVALIER
        move MOVE_TWINEEDLE
        move MOVE_DRILL_RUN
        move MOVE_HEADBUTT
        move MOVE_KNOCK_OFF
        ball ITEM_NET_BALL
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 29
        pokemon SPECIES_HERACROSS
        move MOVE_BRICK_BREAK
        move MOVE_BUG_BITE
        move MOVE_AERIAL_ACE
        move MOVE_FEINT
        ball ITEM_NET_BALL
        nature NATURE_JOLLY
        ballseal 0
    endparty

trainerdata 70, "Samantha"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_BEAUTY
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 70
        // mon 0
        ivs 255
        abilityslot 32
        level 35
        pokemon SPECIES_KANGASKHAN
        move MOVE_RETURN
        move MOVE_DRAIN_PUNCH
        move MOVE_ROCK_TOMB
        move MOVE_FAKE_OUT
        nature NATURE_ADAMANT
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 35
        pokemon SPECIES_CHATOT
        move MOVE_CHATTER
        move MOVE_ROUND
        move MOVE_SNARL
        move MOVE_NASTY_PLOT
        nature NATURE_TIMID
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 32
        level 35
        pokemon SPECIES_PERSIAN
        move MOVE_PAY_DAY
        move MOVE_WATER_PULSE
        move MOVE_AERIAL_ACE
        move MOVE_SHOCK_WAVE
        nature NATURE_LONELY
        ballseal 0
    endparty

trainerdata 71, "Cathy"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_LASS
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 71
        // mon 0
        ivs 255
        abilityslot 15
        level 35
        pokemon SPECIES_PORYGON2
        item ITEM_EVIOLITE
        move MOVE_TRI_ATTACK
        move MOVE_ICE_BEAM
        move MOVE_RECOVER
        move MOVE_TELEPORT
        nature NATURE_BOLD
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 35
        pokemon SPECIES_CINCCINO
        item ITEM_LOADED_DICE
        move MOVE_TAIL_SLAP
        move MOVE_BULLET_SEED
        move MOVE_ROCK_BLAST
        move MOVE_U_TURN
        nature NATURE_JOLLY
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 35
        pokemon SPECIES_BEWEAR
        item ITEM_CLEAR_AMULET
        move MOVE_RETURN
        move MOVE_DRAIN_PUNCH
        move MOVE_BRUTAL_SWING
        move MOVE_BULK_UP
        nature NATURE_ADAMANT
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 35
        pokemon SPECIES_STOUTLAND
        item ITEM_SILK_SCARF
        move MOVE_RETURN
        move MOVE_CRUNCH
        move MOVE_PLAY_ROUGH
        move MOVE_YAWN
        nature NATURE_ADAMANT
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 15
        level 36
        pokemon SPECIES_MILTANK
        item ITEM_LEFTOVERS
        move MOVE_BODY_SLAM
        move MOVE_FIRE_PUNCH
        move MOVE_ICE_PUNCH
        move MOVE_MILK_DRINK
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 72, "Bryan"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_BIRD_KEEPER_GS
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 72
        // mon 0
        ivs 255
        abilityslot 2
        level 37
        pokemon SPECIES_PIDGEOT
        move MOVE_RAZOR_WIND
        move MOVE_AIR_SLASH
        move MOVE_HEAT_WAVE
        move MOVE_U_TURN
        ball ITEM_FAST_BALL
        nature NATURE_TIMID
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 37
        pokemon SPECIES_HAWLUCHA
        move MOVE_BRICK_BREAK
        move MOVE_BOUNCE
        move MOVE_PAYBACK
        move MOVE_DETECT
        ball ITEM_FAST_BALL
        nature NATURE_ADAMANT
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 37
        pokemon SPECIES_DODRIO
        move MOVE_RETURN
        move MOVE_PLUCK
        move MOVE_TRIPLE_KICK
        move MOVE_HEADLONG_RUSH
        ball ITEM_FAST_BALL
        nature NATURE_JOLLY
        ballseal 0
    endparty

trainerdata 73, "Theo"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_BIRD_KEEPER_GS
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 73
        // mon 0
        ivs 255
        abilityslot 32
        level 46
        pokemon SPECIES_KILOWATTREL
        item ITEM_LIFE_ORB
        move MOVE_THUNDERBOLT
        move MOVE_AIR_SLASH
        move MOVE_VOLT_SWITCH
        move MOVE_ROOST
        nature NATURE_MODEST
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 46
        pokemon SPECIES_TALONFLAME
        item ITEM_NONE
        move MOVE_TEMPER_FLARE
        move MOVE_ACROBATICS
        move MOVE_STEEL_WING
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 32
        level 46
        pokemon SPECIES_SWANNA
        item ITEM_LEFTOVERS
        move MOVE_SURF
        move MOVE_AIR_SLASH
        move MOVE_ALLURING_VOICE
        move MOVE_ROOST
        nature NATURE_TIMID
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 46
        pokemon SPECIES_TROPIUS
        item ITEM_SITRUS_BERRY
        move MOVE_SEED_BOMB
        move MOVE_DUAL_WINGBEAT
        move MOVE_EARTHQUAKE
        move MOVE_DRAGON_DANCE
        nature NATURE_BOLD
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 46
        pokemon SPECIES_PIDGEOT
        item ITEM_LIFE_ORB
        move MOVE_RAZOR_WIND
        move MOVE_AIR_SLASH
        move MOVE_HEAT_WAVE
        move MOVE_ROOST
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 74, "Ivan"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_CAMPER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 74
        // mon 0
        ivs 255
        abilityslot 32
        level 37
        pokemon SPECIES_GRAVELER
        move MOVE_ROCK_SLIDE
        move MOVE_BULLDOZE
        move MOVE_STEAMROLLER
        move MOVE_SELF_DESTRUCT
        nature NATURE_ADAMANT
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 37
        pokemon SPECIES_DUGTRIO
        move MOVE_MAGNITUDE
        move MOVE_NIGHT_SLASH
        move MOVE_ROCK_TOMB
        move MOVE_SHADOW_CLAW
        nature NATURE_ADAMANT
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 37
        pokemon SPECIES_CROBAT
        move MOVE_CROSS_POISON
        move MOVE_ACROBATICS
        move MOVE_GIGA_DRAIN
        move MOVE_U_TURN
        nature NATURE_SERIOUS
        ballseal 0
    endparty

trainerdata 75, "Elliot"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_CAMPER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | F_MULTI_BATTLE_PARTNER | 0
    battletype SINGLE_BATTLE
    endentry

    party 75
        // mon 0
        ivs 255
        abilityslot 15
        level 37
        pokemon SPECIES_VAPOREON
        item ITEM_MYSTIC_WATER
        move MOVE_BOUNCY_BUBBLE
        move MOVE_STORED_POWER
        move MOVE_CALM_MIND
        move MOVE_ACID_ARMOR
        nature NATURE_BOLD
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 37
        pokemon SPECIES_JOLTEON
        item ITEM_MAGNET
        move MOVE_BUZZY_BUZZ
        move MOVE_SIGNAL_BEAM
        move MOVE_WISH
        move MOVE_VOLT_SWITCH
        nature NATURE_MODEST
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 37
        pokemon SPECIES_FLAREON
        item ITEM_CHARCOAL
        move MOVE_SIZZLY_SLIDE
        move MOVE_RETURN
        move MOVE_BITE
        move MOVE_TRAILBLAZE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 37
        monwithform SPECIES_EEVEE, 1
        item ITEM_SILK_SCARF
        move MOVE_VEEVEE_VOLLEY
        move MOVE_BADDY_BAD
        move MOVE_GLITZY_GLOW
        move MOVE_BOUNCY_BUBBLE
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 76, "Brooke"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_PICNICKER
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 76
        // mon 0
        ivs 255
        abilityslot 2
        level 37
        pokemon SPECIES_PACHIRISU
        item ITEM_LEFTOVERS
        move MOVE_THUNDERBOLT
        move MOVE_GRASS_KNOT
        move MOVE_SUPER_FANG
        move MOVE_VOLT_SWITCH
        nature NATURE_BOLD
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 37
        pokemon SPECIES_EMOLGA
        item ITEM_NONE
        move MOVE_WILD_CHARGE
        move MOVE_ACROBATICS
        move MOVE_KNOCK_OFF
        move MOVE_U_TURN
        nature NATURE_ADAMANT
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 32
        level 37
        pokemon SPECIES_DEDENNE
        item ITEM_CHESTO_BERRY
        move MOVE_THUNDERBOLT
        move MOVE_DAZZLING_GLEAM
        move MOVE_GRASS_KNOT
        move MOVE_REST
        nature NATURE_TIMID
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 37
        pokemon SPECIES_TOGEDEMARU
        item ITEM_ROCKY_HELMET
        move MOVE_ZING_ZAP
        move MOVE_IRON_HEAD
        move MOVE_NUZZLE
        move MOVE_SPIKY_SHIELD
        nature NATURE_JOLLY
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 15
        level 38
        monwithform SPECIES_PIKACHU, 15
        item ITEM_LIGHT_BALL
        move MOVE_PIKA_PAPOW
        move MOVE_SPLISHY_SPLASH
        move MOVE_FLOATY_FALL
        move MOVE_FAKE_OUT
        nature NATURE_HASTY
        ballseal 0
    endparty

trainerdata 77, "Kim"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_PICNICKER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 77
        // mon 0
        ivs 255
        abilityslot 32
        level 37
        monwithform SPECIES_PONYTA, 1
        item ITEM_EVIOLITE
        move MOVE_ZEN_HEADBUTT
        move MOVE_PLAY_ROUGH
        move MOVE_HIGH_HORSEPOWER
        move MOVE_MORNING_SUN
        nature NATURE_JOLLY
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 37
        pokemon SPECIES_ESPEON
        item ITEM_LEFTOVERS
        move MOVE_PSYBEAM
        move MOVE_POWER_GEM
        move MOVE_DRAINING_KISS
        move MOVE_CALM_MIND
        nature NATURE_TIMID
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 37
        monwithform SPECIES_NINETALES, 1
        item ITEM_NEVER_MELT_ICE
        move MOVE_FREEZE_DRY
        move MOVE_MOONBLAST
        move MOVE_PSYSHOCK
        move MOVE_NASTY_PLOT
        nature NATURE_TIMID
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 32
        level 37
        pokemon SPECIES_TOGEKISS
        item ITEM_SHARP_BEAK
        move MOVE_DRAINING_KISS
        move MOVE_AIR_SLASH
        move MOVE_ANCIENT_POWER
        move MOVE_ROOST
        nature NATURE_TIMID
        ballseal 0
    endparty

trainerdata 78, "Arnie"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_BUG_CATCHER
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 78
        // mon 2
        ivs 255
        abilityslot 32
        level 37
        pokemon SPECIES_SCYTHER
        item ITEM_NONE
        move MOVE_U_TURN
        move MOVE_AERIAL_ACE
        move MOVE_DOUBLE_HIT
        move MOVE_PURSUIT
        nature NATURE_ADAMANT
        ballseal 0        
        
        // mon 0
        ivs 255
        abilityslot 15
        level 37
        pokemon SPECIES_PINSIR
        item ITEM_NONE
        move MOVE_X_SCISSOR
        move MOVE_STORM_THROW
        move MOVE_ROCK_TOMB
        move MOVE_SEISMIC_TOSS
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 37
        pokemon SPECIES_YANMEGA
        item ITEM_NONE
        move MOVE_SIGNAL_BEAM
        move MOVE_DRAGON_BREATH
        move MOVE_PSYCHIC_NOISE
        move MOVE_ANCIENT_POWER
        nature NATURE_MODEST
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 37
        pokemon SPECIES_PARASECT
        item ITEM_NONE
        move MOVE_LEECH_LIFE
        move MOVE_SHADOW_CLAW
        move MOVE_CROSS_POISON
        move MOVE_SPORE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 37
        pokemon SPECIES_VENOMOTH
        item ITEM_THROAT_SPRAY
        move MOVE_BUG_BUZZ
        move MOVE_AIR_SLASH
        move MOVE_MEGA_DRAIN
        move MOVE_QUIVER_DANCE
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 79, "Ken"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BUG_CATCHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 79
        // mon 0
        ivs 0
        abilityslot 32
        level 39
        pokemon SPECIES_ARIADOS
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 40
        pokemon SPECIES_PINSIR
        ballseal 0
    endparty

trainerdata 80, "Dirk"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_POLICEMAN
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 80
        // mon 0
        ivs 255
        abilityslot 15
        level 36
        pokemon SPECIES_STOUTLAND
        move MOVE_RETURN
        move MOVE_CRUNCH
        move MOVE_PLAY_ROUGH
        move MOVE_REVERSAL
        nature NATURE_JOLLY
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 36
        pokemon SPECIES_MIGHTYENA
        move MOVE_BITE
        move MOVE_THUNDER_FANG
        move MOVE_FIRE_FANG
        move MOVE_ICE_FANG
        nature NATURE_JOLLY
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 36
        pokemon SPECIES_ARCANINE
        move MOVE_FIRE_FANG
        move MOVE_THUNDER_FANG
        move MOVE_EXTREME_SPEED
        move MOVE_REVERSAL
        nature NATURE_JOLLY
        ballseal 0
    endparty

trainerdata 81, "Tori & Til"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_TWINS
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | F_DOUBLE_BATTLE | 0
    battletype DOUBLE_BATTLE
    endentry

    party 81
        // mon 0
        ivs 255
        abilityslot 2
        level 40
        pokemon SPECIES_AMPHAROS
        item ITEM_ABSORB_BULB
        move MOVE_THUNDERBOLT
        move MOVE_POWER_GEM
        move MOVE_DAZZLING_GLEAM
        move MOVE_FIRE_PUNCH
        nature NATURE_MODEST
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 40
        pokemon SPECIES_AZUMARILL
        item ITEM_LEFTOVERS
        move MOVE_LIQUIDATION
        move MOVE_PLAY_ROUGH
        move MOVE_AQUA_JET
        move MOVE_SURF
        nature NATURE_ADAMANT
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 40
        pokemon SPECIES_GRUMPIG
        item ITEM_TWISTED_SPOON
        move MOVE_PSYCHIC
        move MOVE_POWER_GEM
        move MOVE_EARTH_POWER
        move MOVE_HELPING_HAND
        nature NATURE_TIMID
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 40
        pokemon SPECIES_APPLETUN
        item ITEM_LEFTOVERS
        move MOVE_APPLE_ACID
        move MOVE_BODY_PRESS
        move MOVE_LEECH_SEED
        move MOVE_RECOVER
        nature NATURE_BOLD
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 32
        level 40
        pokemon SPECIES_MARILL
        item ITEM_SILK_SCARF
        move MOVE_RETURN
        move MOVE_THUNDER_PUNCH
        move MOVE_ICE_PUNCH
        move MOVE_FIRE_PUNCH
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 82, "Toby"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIRD_KEEPER_GS
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 82
        // mon 0
        ivs 50
        abilityslot 32
        level 16
        pokemon SPECIES_DODUO
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 32
        level 17
        pokemon SPECIES_DODUO
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 32
        level 18
        pokemon SPECIES_DODUO
        ballseal 0
    endparty

trainerdata 83, "Cindy"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_PICNICKER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 83
        // mon 0
        ivs 0
        abilityslot 32
        level 48
        pokemon SPECIES_NIDOQUEEN
        move MOVE_POISON_JAB
        move MOVE_EARTH_POWER
        move MOVE_BODY_SLAM
        move MOVE_DOUBLE_KICK
        ballseal 0
    endparty

trainerdata 84, "Barry"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_CAMPER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 84
        // mon 0
        ivs 0
        abilityslot 32
        level 48
        pokemon SPECIES_NIDOKING
        move MOVE_POISON_JAB
        move MOVE_FOCUS_ENERGY
        move MOVE_EARTH_POWER
        move MOVE_FOCUS_BLAST
        ballseal 0
    endparty

trainerdata 85, "Paula"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SWIMMER_F
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 85
        // mon 0
        ivs 0
        abilityslot 32
        level 19
        pokemon SPECIES_STARYU
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 19
        pokemon SPECIES_SHELLDER
        ballseal 0
    endparty

trainerdata 86, "Randall"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_SWIMMER_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 86
        // mon 0
        ivs 0
        abilityslot 15
        level 18
        pokemon SPECIES_SHELLDER
        move MOVE_SUPERSONIC
        move MOVE_ICICLE_SPEAR
        move MOVE_WITHDRAW
        move MOVE_TACKLE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 20
        pokemon SPECIES_WARTORTLE
        move MOVE_RAPID_SPIN
        move MOVE_BITE
        move MOVE_WATER_GUN
        move MOVE_TAIL_WHIP
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 18
        pokemon SPECIES_SHELLDER
        move MOVE_SUPERSONIC
        move MOVE_ICICLE_SPEAR
        move MOVE_WITHDRAW
        move MOVE_TACKLE
        ballseal 0
    endparty

trainerdata 87, "Lyra"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_PKMN_TRAINER_LYRA
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 87
        // mon 0
        ivs 255
        abilityslot 32
        level 33
        pokemon SPECIES_AZUMARILL
        item ITEM_SITRUS_BERRY
        move MOVE_AQUA_TAIL
        move MOVE_PLAY_ROUGH
        move MOVE_AQUA_JET
        move MOVE_BELLY_DRUM
        nature NATURE_ADAMANT
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 33
        pokemon SPECIES_DRAGONAIR
        item ITEM_EVIOLITE
        move MOVE_OUTRAGE
        move MOVE_EXTREME_SPEED
        move MOVE_SLEEP_TALK
        move MOVE_REST
        nature NATURE_ADAMANT
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 32
        level 33
        pokemon SPECIES_CLODSIRE
        item ITEM_BLACK_SLUDGE
        move MOVE_POISON_JAB
        move MOVE_STOMPING_TANTRUM
        move MOVE_RECOVER
        move MOVE_TOXIC
        nature NATURE_CAREFUL
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 33
        pokemon SPECIES_FROSMOTH
        item ITEM_LEFTOVERS
        move MOVE_ICE_BEAM
        move MOVE_GIGA_DRAIN
        move MOVE_SUBSTITUTE
        move MOVE_QUIVER_DANCE
        nature NATURE_TIMID
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 15
        level 33
        monwithform SPECIES_DUDUNSPARCE, 1
        item ITEM_LEFTOVERS
        move MOVE_HYPER_VOICE
        move MOVE_AIR_SLASH
        move MOVE_ROOST
        move MOVE_GLARE
        nature NATURE_BOLD
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 32
        level 33
        pokemon SPECIES_LUCARIO
        item ITEM_LIFE_ORB
        move MOVE_AURA_SPHERE
        move MOVE_FLASH_CANNON
        move MOVE_VACUUM_WAVE
        move MOVE_NASTY_PLOT
        nature NATURE_TIMID
        ballseal 0
    endparty

trainerdata 88, "Ivy"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass TRAINERCLASS_SOCIALITE
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 88
        // mon 0
        ivs 255
        abilityslot 32
        level 52
        pokemon SPECIES_KANGASKHAN
        item ITEM_SILK_SCARF
        move MOVE_DOUBLE_EDGE
        move MOVE_EARTHQUAKE
        move MOVE_CRUNCH
        move MOVE_FAKE_OUT
        nature NATURE_ADAMANT
        additionalflags 0
        ballseal 0       
        
        // mon 1
        ivs 255
        abilityslot 2
        level 52
        pokemon SPECIES_NIDOQUEEN
        item ITEM_BLACK_SLUDGE
        move MOVE_SLUDGE_WAVE
        move MOVE_EARTH_POWER
        move MOVE_ICE_BEAM
        move MOVE_TOXIC_SPIKES
        nature NATURE_MODEST
        additionalflags 0
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 52
        pokemon SPECIES_LEAVANNY
        item ITEM_FOCUS_SASH
        move MOVE_LEAF_BLADE
        move MOVE_X_SCISSOR
        move MOVE_TRIPLE_AXEL
        move MOVE_TRAILBLAZE
        nature NATURE_ADAMANT
        additionalflags 0
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 52
        pokemon SPECIES_VESPIQUEN
        item ITEM_NONE
        move MOVE_ATTACK_ORDER
        move MOVE_ACROBATICS
        move MOVE_HEAL_ORDER
        move MOVE_SPIKES
        nature NATURE_CAREFUL
        additionalflags 0
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 32
        level 52
        pokemon SPECIES_FLORGES
        item ITEM_LEFTOVERS
        move MOVE_MOONBLAST
        move MOVE_EARTH_POWER
        move MOVE_DRAINING_KISS
        move MOVE_CALM_MIND
        nature NATURE_BOLD
        additionalflags 0
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 32
        level 52
        pokemon SPECIES_URSARING
        item ITEM_EVIOLITE
        move MOVE_FACADE
        move MOVE_EARTHQUAKE
        move MOVE_CRUNCH
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 64
        ballseal 0        
    endparty

trainerdata 89, "Grace"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_MEDIUM
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 89
        // mon 1
        ivs 255
        abilityslot 32
        level 41
        pokemon SPECIES_DRIFBLIM
        item ITEM_PETAYA_BERRY
        move MOVE_SHADOW_BALL
        move MOVE_AIR_SLASH
        move MOVE_THUNDERBOLT
        move MOVE_PSYCHIC
        nature NATURE_MODEST
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 41
        pokemon SPECIES_CHANDELURE
        item ITEM_LEFTOVERS
        move MOVE_FLAMETHROWER
        move MOVE_HEX
        move MOVE_SUBSTITUTE
        move MOVE_WILL_O_WISP
        nature NATURE_CALM
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 32
        level 41
        pokemon SPECIES_BASCULEGION
        item ITEM_ASSAULT_VEST
        move MOVE_WAVE_CRASH
        move MOVE_POLTERGEIST
        move MOVE_PSYCHIC_FANGS
        move MOVE_AQUA_JET
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 90, "Kaylee"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_SWIMMER_F
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 90
        // mon 0
        ivs 0
        abilityslot 32
        level 18
        pokemon SPECIES_GOLDEEN
        move MOVE_WATER_PULSE
        move MOVE_HORN_ATTACK
        move MOVE_SUPERSONIC
        move MOVE_PECK
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 20
        pokemon SPECIES_GOLDEEN
        move MOVE_WATER_PULSE
        move MOVE_HORN_ATTACK
        move MOVE_SUPERSONIC
        move MOVE_PECK
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 20
        pokemon SPECIES_SEAKING
        move MOVE_WATER_PULSE
        move MOVE_HORN_ATTACK
        move MOVE_SUPERSONIC
        move MOVE_PECK
        ballseal 0
    endparty

trainerdata 91, "Susie"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_SWIMMER_F
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 91
        // mon 0
        ivs 0
        abilityslot 15
        level 20
        pokemon SPECIES_PSYDUCK
        move MOVE_SCRATCH
        move MOVE_WATER_GUN
        move MOVE_DISABLE
        move MOVE_CONFUSION
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 22
        pokemon SPECIES_GOLDEEN
        move MOVE_FLAIL
        move MOVE_WATER_PULSE
        move MOVE_SUPERSONIC
        move MOVE_HORN_ATTACK
        ballseal 0
    endparty

trainerdata 92, "Denise"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SWIMMER_F
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 92
        // mon 0
        ivs 0
        abilityslot 15
        level 22
        pokemon SPECIES_SEEL
        ballseal 0
    endparty

trainerdata 93, "Kara"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SWIMMER_F
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 93
        // mon 0
        ivs 0
        abilityslot 32
        level 20
        pokemon SPECIES_STARYU
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 20
        pokemon SPECIES_STARMIE
        ballseal 0
    endparty

trainerdata 94, "Wendy"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_SWIMMER_F
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 94
        // mon 0
        ivs 0
        abilityslot 15
        level 21
        pokemon SPECIES_HORSEA
        move MOVE_BUBBLE
        move MOVE_SMOKESCREEN
        move MOVE_LEER
        move MOVE_BUBBLE_BEAM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 21
        pokemon SPECIES_HORSEA
        move MOVE_FOCUS_ENERGY
        move MOVE_SMOKESCREEN
        move MOVE_LEER
        move MOVE_BUBBLE_BEAM
        ballseal 0
    endparty

trainerdata 95, "Charlie"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SWIMMER_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 95
        // mon 0
        ivs 0
        abilityslot 32
        level 21
        pokemon SPECIES_SHELLDER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 19
        pokemon SPECIES_TENTACOOL
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 19
        pokemon SPECIES_TENTACRUEL
        ballseal 0
    endparty

trainerdata 96, "George"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SWIMMER_M
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 96
        // mon 0
        ivs 0
        abilityslot 15
        level 16
        pokemon SPECIES_TENTACOOL
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 17
        pokemon SPECIES_TENTACOOL
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 16
        pokemon SPECIES_TENTACOOL
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 32
        level 19
        pokemon SPECIES_STARYU
        ballseal 0

        // mon 4
        ivs 0
        abilityslot 15
        level 17
        pokemon SPECIES_TENTACOOL
        ballseal 0

        // mon 5
        ivs 0
        abilityslot 15
        level 19
        pokemon SPECIES_REMORAID
        ballseal 0
    endparty

trainerdata 97, "Berke"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SWIMMER_M
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 97
        // mon 0
        ivs 0
        abilityslot 15
        level 23
        pokemon SPECIES_QWILFISH
        ballseal 0
    endparty

trainerdata 98, "Ronald"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SWIMMER_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 98
        // mon 0
        ivs 0
        abilityslot 15
        level 20
        pokemon SPECIES_GYARADOS
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 20
        pokemon SPECIES_GYARADOS
        ballseal 0
    endparty

trainerdata 99, "Matthew"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SWIMMER_M
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 99
        // mon 0
        ivs 0
        abilityslot 15
        level 23
        pokemon SPECIES_KRABBY
        ballseal 0
    endparty

trainerdata 100, "Anthony"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_HIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 100
        // mon 0
        ivs 0
        abilityslot 15
        level 33
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 32
        pokemon SPECIES_MACHOKE
        ballseal 0
    endparty

trainerdata 101, "Grunt" // SW 1
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_TEAM_ROCKET
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 101
        // mon 0
        ivs 255
        abilityslot 15
        level 25
        pokemon SPECIES_PAWNIARD
        item ITEM_EVIOLITE
        move MOVE_FEINT_ATTACK
        move MOVE_METAL_CLAW
        move MOVE_REVENGE
        move MOVE_SUCKER_PUNCH
        nature NATURE_ADAMANT
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 25
        monwithform SPECIES_GRAVELER, 1
        item ITEM_SHUCA_BERRY
        move MOVE_ROCK_SLIDE
        move MOVE_FRUSTRATION
        move MOVE_STEAMROLLER
        move MOVE_MAGNITUDE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 32
        level 25
        pokemon SPECIES_HOUNDOOM
        item ITEM_BLACK_GLASSES
        move MOVE_SNARL
        move MOVE_INCINERATE
        move MOVE_SMOG
        move MOVE_NASTY_PLOT
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 102, "Gaven"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_ACE_TRAINER_M_GS
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 102
        // mon 0
        ivs 255
        abilityslot 15
        level 74
        pokemon SPECIES_JOLTEON
        item ITEM_MAGNET
        move MOVE_BUZZY_BUZZ
        move MOVE_ALLURING_VOICE
        move MOVE_VOLT_SWITCH
        move MOVE_YAWN
        nature NATURE_MODEST
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 74
        pokemon SPECIES_VICTREEBEL
        item ITEM_BLACK_SLUDGE
        move MOVE_BELCH
        move MOVE_GIGA_DRAIN
        move MOVE_KNOCK_OFF
        move MOVE_ENDURE
        nature NATURE_MILD
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 74
        pokemon SPECIES_VAPOREON
        item ITEM_LEFTOVERS
        move MOVE_BOUNCY_BUBBLE
        move MOVE_ICE_BEAM
        move MOVE_FLIP_TURN
        move MOVE_WISH
        nature NATURE_MODEST
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 74
        pokemon SPECIES_KINGLER
        item ITEM_MYSTIC_WATER
        move MOVE_CRABHAMMER
        move MOVE_SUPERPOWER
        move MOVE_STOMPING_TANTRUM
        move MOVE_SWORDS_DANCE
        nature NATURE_JOLLY
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 15
        level 74
        pokemon SPECIES_FLAREON
        item ITEM_CHARCOAL
        move MOVE_FLARE_BLITZ
        move MOVE_DOUBLE_EDGE
        move MOVE_SIZZLY_SLIDE
        move MOVE_TRAILBLAZE
        nature NATURE_JOLLY
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 15
        level 74
        pokemon SPECIES_BEEDRILL
        item ITEM_BEEDRILLITE
        move MOVE_X_SCISSOR
        move MOVE_POISON_JAB
        move MOVE_DRILL_RUN
        move MOVE_U_TURN
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 103, "Blake"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_ACE_TRAINER_M_GS
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | F_MULTI_BATTLE_PARTNER | 0
    battletype SINGLE_BATTLE
    endentry

    party 103
        // mon 0
        ivs 255
        abilityslot 32
        level 71
        pokemon SPECIES_QUAGSIRE
        item ITEM_RINDO_BERRY
        move MOVE_EARTHQUAKE
        move MOVE_AQUA_TAIL
        move MOVE_SPIKES
        move MOVE_YAWN
        nature NATURE_CAREFUL
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 71
        pokemon SPECIES_MAGNEZONE
        item ITEM_ASSAULT_VEST
        move MOVE_THUNDERBOLT
        move MOVE_FLASH_CANNON
        move MOVE_BODY_PRESS
        move MOVE_VOLT_SWITCH
        nature NATURE_TIMID
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 71
        pokemon SPECIES_MAGCARGO
        item ITEM_WHITE_HERB
        move MOVE_FLAMETHROWER
        move MOVE_POWER_GEM
        move MOVE_SCORCHING_SANDS
        move MOVE_SHELL_SMASH
        nature NATURE_TIMID
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 71
        monwithform SPECIES_EXEGGUTOR, 1
        item ITEM_CUSTAP_BERRY
        move MOVE_POWER_WHIP
        move MOVE_DRAGON_HAMMER
        move MOVE_EARTHQUAKE
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 71
        pokemon SPECIES_FARIGIRAF
        item ITEM_CLEAR_AMULET
        move MOVE_TWIN_BEAM
        move MOVE_HYPER_VOICE
        move MOVE_SHADOW_BALL
        move MOVE_BATON_PASS
        nature NATURE_MODEST
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 15
        level 71
        pokemon SPECIES_PINSIR
        item ITEM_PINSIRITE
        move MOVE_RETURN
        move MOVE_EARTHQUAKE
        move MOVE_QUICK_ATTACK
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 104, "Brian"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_ACE_TRAINER_M_GS
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 104
        // mon 0
        ivs 50
        abilityslot 15
        level 35
        pokemon SPECIES_MAREEP
        move MOVE_DISCHARGE
        move MOVE_SIGNAL_BEAM
        move MOVE_COTTON_SPORE
        move MOVE_TACKLE
        ballseal 0
    endparty

trainerdata 105, "Giovanni"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_ROCKET_BOSS
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 105
        // mon 0
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_ANNIHILAPE
	    item ITEM_FOCUS_SASH
	    move MOVE_FOCUS_BLAST
	    move MOVE_RAGE_FIST
	    move MOVE_STONE_EDGE
	    move MOVE_STEALTH_ROCK
        ball ITEM_MASTER_BALL
	    nature NATURE_JOLLY
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_MAMOSWINE
	    item ITEM_EJECT_PACK
	    move MOVE_HEADLONG_RUSH
	    move MOVE_STONE_EDGE
	    move MOVE_SUPERPOWER
	    move MOVE_ICE_SHARD
        ball ITEM_MASTER_BALL
	    nature NATURE_JOLLY
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_PERRSERKER
	    item ITEM_METAL_COAT
	    move MOVE_IRON_TAIL
	    move MOVE_CLOSE_COMBAT
	    move MOVE_GUNK_SHOT
	    move MOVE_U_TURN
        ball ITEM_MASTER_BALL
	    nature NATURE_ADAMANT
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_MEWTWO
	    item ITEM_CLEAR_AMULET
	    move MOVE_PSYSTRIKE
	    move MOVE_ZAP_CANNON
	    move MOVE_FIRE_BLAST
	    move MOVE_RECOVER
        ball ITEM_MASTER_BALL
	    nature NATURE_MODEST
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_IRON_THORNS
	    item ITEM_ASSAULT_VEST
	    move MOVE_THUNDER
	    move MOVE_BLIZZARD
	    move MOVE_FIRE_BLAST
	    move MOVE_VOLT_SWITCH
        ball ITEM_MASTER_BALL
	    nature NATURE_TIMID
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 36
        level 66
        pokemon SPECIES_KANGASKHAN
        item ITEM_KANGASKHANITE
        move MOVE_FACADE
        move MOVE_EARTHQUAKE
        move MOVE_SHADOW_BALL
        move MOVE_POWER_UP_PUNCH
        ball ITEM_MASTER_BALL
        nature NATURE_JOLLY
        ballseal 0
    endparty

trainerdata 106, "Boy" // giovanni double
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_PASSERBY
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 106
        // mon 0
        ivs 0
        abilityslot 0
        level 10
        pokemon SPECIES_BULBASAUR
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 10
        pokemon SPECIES_CHARMANDER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 10
        pokemon SPECIES_SQUIRTLE
        ballseal 0
    endparty

trainerdata 107, "Draco" 
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_ELDER
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 107
        // mon 0
        ivs 255
        abilityslot 2
        level 69
        pokemon SPECIES_AMPHAROS
        item ITEM_ASSAULT_VEST
        move MOVE_DRACO_METEOR
        move MOVE_DISCHARGE
        move MOVE_DAZZLING_GLEAM
        move MOVE_VOLT_SWITCH
        nature NATURE_MODEST
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 69
        monwithform SPECIES_EXEGGUTOR, 1
        item ITEM_CUSTAP_BERRY
        move MOVE_SOLAR_BEAM
        move MOVE_FICKLE_BEAM
        move MOVE_FLAMETHROWER
        move MOVE_GROWTH
        nature NATURE_MODEST
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 69
        pokemon SPECIES_KINGDRA
        item ITEM_SCOPE_LENS
        move MOVE_DRACO_METEOR
        move MOVE_FLASH_CANNON
        move MOVE_WEATHER_BALL
        move MOVE_FOCUS_ENERGY
        nature NATURE_TIMID
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 69
        pokemon SPECIES_DRAGONITE
        item ITEM_LEFTOVERS
        move MOVE_FLY
        move MOVE_EARTHQUAKE
        move MOVE_FIRE_SPIN
        move MOVE_ROOST
        nature NATURE_IMPISH
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 69
        pokemon SPECIES_GOUGING_FIRE
        item ITEM_LEFTOVERS
        move MOVE_HEAT_CRASH
        move MOVE_EARTHQUAKE
        move MOVE_DRAGON_DANCE
        move MOVE_MORNING_SUN
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 69
        pokemon SPECIES_CHARIZARD
        item ITEM_CHARIZARDITE_X
        move MOVE_FLARE_BLITZ
        move MOVE_EARTHQUAKE
        move MOVE_DRAGON_CLAW
        move MOVE_DRAGON_DANCE
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 108, "Ryan"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_ACE_TRAINER_M_GS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 108
        // mon 0
        ivs 50
        abilityslot 15
        level 25
        pokemon SPECIES_PIDGEOT
        move MOVE_SAND_ATTACK
        move MOVE_QUICK_ATTACK
        move MOVE_WHIRLWIND
        move MOVE_WING_ATTACK
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 15
        level 27
        pokemon SPECIES_ELECTABUZZ
        move MOVE_THUNDER_PUNCH
        move MOVE_LIGHT_SCREEN
        move MOVE_SWIFT
        move MOVE_SCREECH
        ballseal 0
    endparty

trainerdata 109, "Alton"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_ACE_TRAINER_M_GS
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 109
        // mon 0
        ivs 50
        abilityslot 15
        level 24
        pokemon SPECIES_IVYSAUR
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 15
        level 24
        pokemon SPECIES_CHARMELEON
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 15
        level 24
        pokemon SPECIES_WARTORTLE
        ballseal 0
    endparty

trainerdata 110, "Paulo"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_ACE_TRAINER_M_GS
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 110
        // mon 0
        ivs 255
        abilityslot 2
        level 67
        pokemon SPECIES_DRAGONITE
        item ITEM_CLEAR_AMULET
        move MOVE_DUAL_WINGBEAT
        move MOVE_EARTHQUAKE
        move MOVE_DRAGON_DANCE
        move MOVE_ROOST
        nature NATURE_ADAMANT
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 67
        pokemon SPECIES_FLAPPLE
        item ITEM_LIFE_ORB
        move MOVE_GRAV_APPLE
        move MOVE_DRAGON_RUSH
        move MOVE_DUAL_WINGBEAT
        move MOVE_HONE_CLAWS
        nature NATURE_JOLLY
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 67
        pokemon SPECIES_DRAGALGE
        item ITEM_EJECT_PACK
        move MOVE_DRACO_METEOR
        move MOVE_SLUDGE_WAVE
        move MOVE_SCALD
        move MOVE_FLIP_TURN
        nature NATURE_MODEST
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 67
        pokemon SPECIES_FLYGON
        item ITEM_LEFTOVERS
        move MOVE_EARTH_POWER
        move MOVE_DRAGON_PULSE
        move MOVE_FLAMETHROWER
        move MOVE_ROOST
        nature NATURE_MODEST
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 32
        level 67
        pokemon SPECIES_HAXORUS
        item ITEM_LUM_BERRY
        move MOVE_OUTRAGE
        move MOVE_EARTHQUAKE
        move MOVE_IRON_HEAD
        move MOVE_DRAGON_DANCE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 2
        level 67
        pokemon SPECIES_AMPHAROS
        item ITEM_AMPHAROSITE
        move MOVE_THUNDERBOLT
        move MOVE_DRAGON_PULSE
        move MOVE_FOCUS_BLAST
        move MOVE_VOLT_SWITCH
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 111, "Mike"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_ACE_TRAINER_M_GS
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 111
        // mon 0
        ivs 255
        abilityslot 15
        level 69
        pokemon SPECIES_BAXCALIBUR
        item ITEM_LOADED_DICE
        move MOVE_SCALE_SHOT
        move MOVE_ICICLE_SPEAR
        move MOVE_EARTHQUAKE
        move MOVE_DRAGON_DANCE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 69
        pokemon SPECIES_TYRANTRUM
        item ITEM_HARD_STONE
        move MOVE_HEAD_SMASH
        move MOVE_CLOSE_COMBAT
        move MOVE_SCALE_SHOT
        move MOVE_DRAGON_DANCE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 69
        pokemon SPECIES_HYDREIGON
        item ITEM_LEFTOVERS
        move MOVE_DARK_PULSE
        move MOVE_FICKLE_BEAM
        move MOVE_NASTY_PLOT
        move MOVE_ROOST
        nature NATURE_MODEST
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 69
        pokemon SPECIES_DRAGAPULT
        item ITEM_EJECT_PACK
        move MOVE_DRACO_METEOR
        move MOVE_HEX
        move MOVE_THUNDER_WAVE
        move MOVE_U_TURN
        nature NATURE_TIMID
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 69
        pokemon SPECIES_HYDRAPPLE
        item ITEM_ASSAULT_VEST
        move MOVE_FICKLE_BEAM
        move MOVE_GIGA_DRAIN
        move MOVE_HYDRO_PUMP
        move MOVE_EARTH_POWER
        nature NATURE_MODEST
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 69
        pokemon SPECIES_SALAMENCE
        item ITEM_SALAMENCITE
        move MOVE_FACADE
        move MOVE_EARTHQUAKE
        move MOVE_ROOST
        move MOVE_DRAGON_DANCE
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 112, "Cody"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_ACE_TRAINER_M_GS
    nummons 0x80 | 6 
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 112
        // mon 0
        ivs 255
        abilityslot 15
        level 68
        monwithform SPECIES_ZOROARK, 1
        item ITEM_RED_CARD
        move MOVE_HYPER_VOICE
        move MOVE_SHADOW_BALL
        move MOVE_FLAMETHROWER
        move MOVE_SLUDGE_BOMB
        nature NATURE_TIMID
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 68
        pokemon SPECIES_CYCLIZAR
        item ITEM_SITRUS_BERRY
        move MOVE_DRACO_METEOR
        move MOVE_FACADE
        move MOVE_U_TURN
        move MOVE_SHED_TAIL
        nature NATURE_HASTY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 68
        pokemon SPECIES_GYARADOS
        item ITEM_LUM_BERRY
        move MOVE_AQUA_TAIL
        move MOVE_BOUNCE
        move MOVE_EARTHQUAKE
        move MOVE_DRAGON_DANCE
        nature NATURE_ADAMANT 
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 68
        pokemon SPECIES_TYRANITAR
        item ITEM_ASSAULT_VEST
        move MOVE_ROCK_SLIDE
        move MOVE_LASH_OUT
        move MOVE_EARTHQUAKE
        move MOVE_PURSUIT
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 68
        pokemon SPECIES_KOMMO_O
        item ITEM_SALAC_BERRY
        move MOVE_DRAGON_CLAW
        move MOVE_DRAIN_PUNCH
        move MOVE_POISON_JAB
        move MOVE_BELLY_DRUM
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 68
        pokemon SPECIES_METAGROSS
        item ITEM_METAGROSSITE
        move MOVE_IRON_HEAD
        move MOVE_PSYCHIC_FANGS
        move MOVE_STOMPING_TANTRUM
        move MOVE_PURSUIT
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 113, "Jamie"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_ACE_TRAINER_F_GS
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | F_MULTI_BATTLE_PARTNER | 0
    battletype SINGLE_BATTLE
    endentry

    party 113
        // mon 0
        ivs 255
        abilityslot 2
        level 74
        monwithform SPECIES_RAPIDASH, 1
        item ITEM_MISTY_SEED
        move MOVE_PSYCHIC
        move MOVE_DAZZLING_GLEAM
        move MOVE_MYSTICAL_FIRE
        move MOVE_BATON_PASS
        nature NATURE_TIMID
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 74
        pokemon SPECIES_NIDOQUEEN
        item ITEM_ASSAULT_VEST
        move MOVE_SLUDGE_WAVE
        move MOVE_EARTH_POWER
        move MOVE_ICE_BEAM
        move MOVE_THUNDERBOLT
        nature NATURE_TIMID
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 74
        pokemon SPECIES_DRAMPA
        item ITEM_LEFTOVERS
        move MOVE_HYPER_VOICE
        move MOVE_NATURE_POWER
        move MOVE_FLAMETHROWER
        move MOVE_ROOST
        nature NATURE_BOLD
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 74
        pokemon SPECIES_SHEDINJA
        item ITEM_FOCUS_SASH
        move MOVE_X_SCISSOR
        move MOVE_SHADOW_SNEAK
        move MOVE_AGILITY
        move MOVE_BATON_PASS
        nature NATURE_JOLLY
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 15
        level 74
        pokemon SPECIES_AURORUS
        item ITEM_THROAT_SPRAY
        move MOVE_HYPER_VOICE
        move MOVE_EARTH_POWER
        move MOVE_FREEZE_DRY
        move MOVE_NATURE_POWER
        nature NATURE_TIMID
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 32
        level 74
        pokemon SPECIES_GARDEVOIR
        item ITEM_GARDEVOIRITE
        move MOVE_HYPER_VOICE
        move MOVE_PSYCHIC
        move MOVE_THUNDERBOLT
        move MOVE_MYSTICAL_FIRE
        nature NATURE_TIMID
        ballseal 0
    endparty

trainerdata 114, "Reena"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_ACE_TRAINER_F_GS
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 114
        // mon 0
        ivs 255
        abilityslot 2
        level 72
        monwithform SPECIES_ARCANINE, 1
        item ITEM_CLEAR_AMULET
        move MOVE_HEAD_SMASH
        move MOVE_FLARE_BLITZ
        move MOVE_EXTREME_SPEED
        move MOVE_STEALTH_ROCK
        nature NATURE_JOLLY
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 72
        pokemon SPECIES_SCIZOR
        item ITEM_ASSAULT_VEST
        move MOVE_BULLET_PUNCH
        move MOVE_CLOSE_COMBAT
        move MOVE_KNOCK_OFF
        move MOVE_U_TURN
        nature NATURE_TIMID
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 72
        pokemon SPECIES_STARMIE
        item ITEM_LIFE_ORB
        move MOVE_HYDRO_PUMP
        move MOVE_BLIZZARD
        move MOVE_THUNDER
        move MOVE_RECOVER
        nature NATURE_MODEST
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 72
        pokemon SPECIES_NIDOQUEEN
        item ITEM_BLACK_SLUDGE
        move MOVE_SLUDGE_WAVE
        move MOVE_EARTH_POWER
        move MOVE_ICE_BEAM
        move MOVE_TOXIC_SPIKES
        nature NATURE_TIMID
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 32
        level 72
        pokemon SPECIES_TOGEKISS
        item ITEM_LEFTOVERS
        move MOVE_MOONBLAST
        move MOVE_AIR_SLASH
        move MOVE_FLAMETHROWER
        move MOVE_ROOST
        nature NATURE_TIMID
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 2
        level 73
        pokemon SPECIES_ABOMASNOW
        item ITEM_ABOMASITE
        move MOVE_WOOD_HAMMER
        move MOVE_ICE_SPINNER
        move MOVE_EARTHQUAKE
        move MOVE_TRAILBLAZE
        nature NATURE_JOLLY
        ballseal 0
    endparty

trainerdata 115, "Megan"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass TRAINERCLASS_ACE_TRAINER_F_GS
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 115
        // mon 0
        ivs 255
        abilityslot 32
        level 71
        monwithform SPECIES_CORSOLA, 1
        item ITEM_EVIOLITE
        move MOVE_NIGHT_SHADE
        move MOVE_WHIRLPOOL
        move MOVE_STRENGTH_SAP
        move MOVE_STEALTH_ROCK
        nature NATURE_BOLD
        additionalflags 0
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 71
        pokemon SPECIES_CURSOLA
        item ITEM_ASSAULT_VEST
        move MOVE_SHADOW_BALL
        move MOVE_POWER_GEM
        move MOVE_GIGA_DRAIN
        move MOVE_ICE_BEAM
        nature NATURE_BOLD
        additionalflags 0
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 71
        pokemon SPECIES_HAUNTER
        item ITEM_LIFE_ORB
        move MOVE_SHADOW_BALL
        move MOVE_SLUDGE_BOMB
        move MOVE_DAZZLING_GLEAM
        move MOVE_DESTINY_BOND
        nature NATURE_TIMID
        additionalflags 0
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 71
        pokemon SPECIES_GLIGAR
        item ITEM_EVIOLITE
        move MOVE_EARTHQUAKE
        move MOVE_DUAL_WINGBEAT
        move MOVE_TOXIC
        move MOVE_ROOST
        nature NATURE_CAREFUL
        additionalflags 0
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 71
        pokemon SPECIES_GLISCOR
        item ITEM_LEFTOVERS
        move MOVE_EARTHQUAKE
        move MOVE_DUAL_WINGBEAT
        move MOVE_FACADE
        move MOVE_SWORDS_DANCE
        nature NATURE_JOLLY
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 8
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 15
        level 71
        pokemon SPECIES_GENGAR
        item ITEM_GENGARITE
        move MOVE_SHADOW_BALL
        move MOVE_SLUDGE_WAVE
        move MOVE_ENERGY_BALL
        move MOVE_THUNDERBOLT
        nature NATURE_TIMID
        additionalflags 0
        ballseal 0
    endparty

trainerdata 116, "Lois"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_ACE_TRAINER_F_GS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 116
        // mon 0
        ivs 50
        abilityslot 15
        level 25
        pokemon SPECIES_MAREEP
        move MOVE_THUNDER_SHOCK
        move MOVE_COTTON_SPORE
        move MOVE_THUNDER_WAVE
        move MOVE_CHARGE
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 15
        level 25
        pokemon SPECIES_NINETALES
        move MOVE_FLAMETHROWER
        move MOVE_QUICK_ATTACK
        move MOVE_CONFUSE_RAY
        move MOVE_NASTY_PLOT
        ballseal 0
    endparty

trainerdata 117, "Lola"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_ACE_TRAINER_F_GS
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 117
        // mon 3
        ivs 255
        abilityslot 15
        level 67
        pokemon SPECIES_DURALUDON
        item ITEM_EVIOLITE
        move MOVE_FLASH_CANNON
        move MOVE_DRAGON_TAIL
        move MOVE_BODY_PRESS
        move MOVE_THUNDER_WAVE
        nature NATURE_CALM
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 67
        pokemon SPECIES_APPLETUN
        item ITEM_LEFTOVERS
        move MOVE_APPLE_ACID
        move MOVE_LEECH_SEED
        move MOVE_DRAGON_TAIL
        move MOVE_RECOVER
        nature NATURE_SASSY
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 67
        pokemon SPECIES_DRAMPA
        item ITEM_LEFTOVERS
        move MOVE_HYPER_VOICE
        move MOVE_DRAGON_PULSE
        move MOVE_GLARE
        move MOVE_ROOST
        nature NATURE_MODEST
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 32
        level 67
        pokemon SPECIES_DRACOZOLT
        item ITEM_SALAC_BERRY
        move MOVE_BOLT_BEAK
        move MOVE_DRAGON_RUSH
        move MOVE_EARTHQUAKE
        move MOVE_HONE_CLAWS
        nature NATURE_JOLLY
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 67
        monwithform SPECIES_GOODRA, 1
        item ITEM_ASSAULT_VEST
        move MOVE_DRACO_METEOR
        move MOVE_FLASH_CANNON
        move MOVE_FIRE_BLAST
        move MOVE_EARTHQUAKE
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 118, "Kate"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_ACE_TRAINER_F_GS
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 118
        // mon 0
        ivs 255
        abilityslot 15
        level 46
        pokemon SPECIES_KINGLER
        item ITEM_MYSTIC_WATER
        move MOVE_CRABHAMMER
        move MOVE_SUPERPOWER
        move MOVE_KNOCK_OFF
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 46
        pokemon SPECIES_OCTILLERY
        item ITEM_CUSTAP_BERRY
        move MOVE_SNIPE_SHOT
        move MOVE_SLUDGE_BOMB
        move MOVE_MUD_SHOT
        move MOVE_THUNDER_WAVE
        nature NATURE_MODEST
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 46
        pokemon SPECIES_MANTINE
        item ITEM_BINDING_BAND
        move MOVE_SURF
        move MOVE_AIR_SLASH
        move MOVE_ICE_BEAM
        move MOVE_WHIRLPOOL
        nature NATURE_BOLD
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 32
        level 46
        pokemon SPECIES_CLOYSTER
        item ITEM_WHITE_HERB
        move MOVE_LIQUIDATION
        move MOVE_ICICLE_SPEAR
        move MOVE_ROCK_BLAST
        move MOVE_SHELL_SMASH
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 119, "Fran"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_ACE_TRAINER_F_GS
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 119
        // mon 0
        ivs 255
        abilityslot 15
        level 68
        pokemon SPECIES_DRUDDIGON
        item ITEM_LEFTOVERS
        move MOVE_DRAGON_CLAW
        move MOVE_EARTHQUAKE
        move MOVE_PURSUIT
        move MOVE_GLARE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 68
        pokemon SPECIES_NOIVERN
        item ITEM_EJECT_PACK
        move MOVE_DRACO_METEOR
        move MOVE_AIR_SLASH
        move MOVE_BOOMBURST
        move MOVE_HEAT_WAVE
        nature NATURE_MODEST
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 68
        pokemon SPECIES_TURTONATOR
        item ITEM_WHITE_HERB
        move MOVE_FLAMETHROWER
        move MOVE_DRAGON_PULSE
        move MOVE_SCORCHING_SANDS
        move MOVE_SHELL_SMASH
        nature NATURE_TIMID
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 68
        pokemon SPECIES_DRACOVISH
        item ITEM_SALAC_BERRY
        move MOVE_FISHIOUS_REND
        move MOVE_OUTRAGE
        move MOVE_PSYCHIC_FANGS
        move MOVE_ROCK_TOMB
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 68
        pokemon SPECIES_DIPPLIN
        item ITEM_EVIOLITE
        move MOVE_GIGA_DRAIN
        move MOVE_DRAGON_TAIL
        move MOVE_GROWTH
        move MOVE_RECOVER
        nature NATURE_SASSY
        ballseal 0
    endparty

trainerdata 120, "Irene"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_ACE_TRAINER_F_GS
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 120
        // mon 0
        ivs 255
        abilityslot 2
        level 46
        pokemon SPECIES_DONDOZO
        item ITEM_CLEAR_AMULET
        move MOVE_WAVE_CRASH
        move MOVE_EARTHQUAKE
        move MOVE_ORDER_UP
        move MOVE_ROCK_SLIDE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 46
        pokemon SPECIES_LANTURN
        item ITEM_MAGNET
        move MOVE_SURF
        move MOVE_THUNDERBOLT
        move MOVE_ICE_BEAM
        move MOVE_VOLT_SWITCH
        nature NATURE_MODEST
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 46
        pokemon SPECIES_MASQUERAIN
        item ITEM_CLEAR_AMULET
        move MOVE_SILVER_WIND
        move MOVE_FOUL_PLAY
        move MOVE_BATON_PASS
        move MOVE_TAILWIND
        nature NATURE_TIMID
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 46
        pokemon SPECIES_SEAKING
        item ITEM_ASSAULT_VEST
        move MOVE_WATERFALL
        move MOVE_DRILL_RUN
        move MOVE_THROAT_CHOP
        move MOVE_QUICK_ATTACK
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 121, "Kelly"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_ACE_TRAINER_F_GS
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 121
        // mon 0
        ivs 50
        abilityslot 15
        level 27
        pokemon SPECIES_MARILL
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 15
        level 24
        pokemon SPECIES_WARTORTLE
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 15
        level 24
        pokemon SPECIES_WARTORTLE
        ballseal 0
    endparty

trainerdata 122, "Marvin"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_FISHERMAN
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 122
        // mon 0
        ivs 0
        abilityslot 15
        level 10
        pokemon SPECIES_MAGIKARP
        move MOVE_SPLASH
        move MOVE_TACKLE
        move MOVE_NONE
        move MOVE_NONE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 20
        pokemon SPECIES_GYARADOS
        move MOVE_THRASH
        move MOVE_SURF
        move MOVE_NONE
        move MOVE_NONE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 15
        pokemon SPECIES_MAGIKARP
        move MOVE_SPLASH
        move MOVE_TACKLE
        move MOVE_NONE
        move MOVE_NONE
        ballseal 0
    endparty

trainerdata 123, "Tully"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_FISHERMAN
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 123
        // mon 0
        ivs 0
        abilityslot 15
        level 19
        pokemon SPECIES_QWILFISH
        ballseal 0
    endparty

trainerdata 124, "Wilton"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_FISHERMAN
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 124
        // mon 0
        ivs 0
        abilityslot 15
        level 26
        pokemon SPECIES_GOLDEEN
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 26
        pokemon SPECIES_GOLDEEN
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 28
        pokemon SPECIES_SEAKING
        ballseal 0
    endparty

trainerdata 125, "Edgar"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_FISHERMAN
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 125
        // mon 0
        ivs 0
        abilityslot 15
        level 28
        pokemon SPECIES_REMORAID
        move MOVE_LOCK_ON
        move MOVE_PSYBEAM
        move MOVE_AURORA_BEAM
        move MOVE_BUBBLE_BEAM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 28
        pokemon SPECIES_REMORAID
        move MOVE_LOCK_ON
        move MOVE_PSYBEAM
        move MOVE_AURORA_BEAM
        move MOVE_BUBBLE_BEAM
        ballseal 0
    endparty

trainerdata 126, "Andre"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_FISHERMAN
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 126
        // mon 0
        ivs 0
        abilityslot 15
        level 27
        pokemon SPECIES_GYARADOS
        ballseal 0
    endparty

trainerdata 127, "Raymond"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_FISHERMAN
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 127
        // mon 0
        ivs 0
        abilityslot 15
        level 22
        pokemon SPECIES_MAGIKARP
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 22
        pokemon SPECIES_MAGIKARP
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 22
        pokemon SPECIES_MAGIKARP
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 15
        level 22
        pokemon SPECIES_MAGIKARP
        ballseal 0
    endparty

trainerdata 128, "Jonah"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_FISHERMAN
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 128
        // mon 0
        ivs 0
        abilityslot 15
        level 33
        pokemon SPECIES_SHELLDER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 37
        pokemon SPECIES_OCTILLERY
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 33
        pokemon SPECIES_REMORAID
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 15
        level 37
        pokemon SPECIES_CLOYSTER
        ballseal 0
    endparty

trainerdata 129, "Shane"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_POKE_MANIAC
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 129
        // mon 0
        ivs 255
        abilityslot 15
        level 57
        pokemon SPECIES_SEVIPER
        item ITEM_BLACK_SLUDGE
        move MOVE_GUNK_SHOT
        move MOVE_EARTHQUAKE
        move MOVE_COIL
        move MOVE_REST
        nature NATURE_ADAMANT
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 57
        pokemon SPECIES_DRAMPA
        item ITEM_LEFTOVERS
        move MOVE_HYPER_VOICE
        move MOVE_DRAGON_PULSE
        move MOVE_ROOST
        move MOVE_PROTECT
        nature NATURE_CALM
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 57
        pokemon SPECIES_TURTONATOR
        item ITEM_CUSTAP_BERRY
        move MOVE_FLAMETHROWER
        move MOVE_DRAGON_PULSE
        move MOVE_SCORCHING_SANDS
        move MOVE_EXPLOSION
        nature NATURE_MODEST
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 32
        level 57
        pokemon SPECIES_ZANGOOSE
        item ITEM_SILK_SCARF
        move MOVE_RETURN
        move MOVE_ICE_PUNCH
        move MOVE_PURSUIT
        move MOVE_QUICK_ATTACK
        nature NATURE_JOLLY
        ballseal 0
    endparty

trainerdata 130, "Beckett"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_POKE_MANIAC
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 130
        // mon 0
        ivs 255
        abilityslot 2
        level 59
        pokemon SPECIES_SLOWBRO
        item ITEM_LEFTOVERS
        move MOVE_FUTURE_SIGHT
        move MOVE_SURF
        move MOVE_SLACK_OFF
        move MOVE_TELEPORT
        nature NATURE_BOLD
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 59
        pokemon SPECIES_SLOWBRO
        item ITEM_LEFTOVERS
        move MOVE_FUTURE_SIGHT
        move MOVE_SURF
        move MOVE_SLACK_OFF
        move MOVE_TELEPORT
        nature NATURE_CALM
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 59
        monwithform SPECIES_SLOWBRO, 2
        item ITEM_ASSAULT_VEST
        move MOVE_FUTURE_SIGHT
        move MOVE_SLUDGE_BOMB
        move MOVE_ICE_BEAM
        move MOVE_FLAMETHROWER
        nature NATURE_MODEST
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 60
        monwithform SPECIES_SLOWKING, 1
        item ITEM_ASSAULT_VEST
        move MOVE_FUTURE_SIGHT
        move MOVE_SLUDGE_BOMB
        move MOVE_ICE_BEAM
        move MOVE_FLAMETHROWER
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 131, "Brent"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_POKE_MANIAC
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 131
        // mon 0
        ivs 255
        abilityslot 32
        level 58
        pokemon SPECIES_LICKILICKY
        item ITEM_SILK_SCARF
        move MOVE_RETURN
        move MOVE_EARTHQUAKE
        move MOVE_KNOCK_OFF
        move MOVE_EXPLOSION
        nature NATURE_ADAMANT
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 58
        pokemon SPECIES_GRAPPLOCT
        item ITEM_LEFTOVERS
        move MOVE_DRAIN_PUNCH
        move MOVE_LIQUIDATION
        move MOVE_STOMPING_TANTRUM
        move MOVE_BULK_UP
        nature NATURE_ADAMANT
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 58
        pokemon SPECIES_TANGROWTH
        item ITEM_ASSAULT_VEST
        move MOVE_SEED_BOMB
        move MOVE_EARTHQUAKE
        move MOVE_POISON_JAB
        move MOVE_LEAF_STORM
        nature NATURE_BRAVE
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 32
        level 59
        pokemon SPECIES_SUDOWOODO
        item ITEM_HARD_STONE
        move MOVE_HEAD_SMASH
        move MOVE_WOOD_HAMMER
        move MOVE_EXPLOSION
        move MOVE_ENDURE
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 132, "Ron"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_POKE_MANIAC
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 132
        // mon 0
        ivs 255
        abilityslot 2
        level 59
        pokemon SPECIES_DUSKNOIR
        item ITEM_LEFTOVERS
        move MOVE_SHADOW_PUNCH
        move MOVE_ICE_PUNCH
        move MOVE_THUNDER_PUNCH
        move MOVE_POWER_UP_PUNCH
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 59
        pokemon SPECIES_CARRACOSTA
        item ITEM_WHITE_HERB
        move MOVE_WATERFALL
        move MOVE_ROCK_SLIDE
        move MOVE_EARTHQUAKE
        move MOVE_SHELL_SMASH
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 59
        pokemon SPECIES_HEATMOR
        item ITEM_ASSAULT_VEST
        move MOVE_FIRE_LASH
        move MOVE_DRILL_RUN
        move MOVE_DRAIN_PUNCH
        move MOVE_PURSUIT
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 59
        pokemon SPECIES_DURANT
        item ITEM_LIFE_ORB
        move MOVE_X_SCISSOR
        move MOVE_IRON_HEAD
        move MOVE_STOMPING_TANTRUM
        move MOVE_HONE_CLAWS
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 59
        pokemon SPECIES_ARCHEOPS
        item ITEM_CLEAR_AMULET
        move MOVE_DUAL_WINGBEAT
        move MOVE_ROCK_SLIDE
        move MOVE_EARTHQUAKE
        move MOVE_U_TURN
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 60
        pokemon SPECIES_BANETTE
        item ITEM_BANETTITE
        move MOVE_RETURN
        move MOVE_SHADOW_SNEAK
        move MOVE_METRONOME
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 133, "Morgan"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_POKE_MANIAC
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 133
        // mon 0
        ivs 0
        abilityslot 32
        level 39
        pokemon SPECIES_RHYHORN
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 39
        pokemon SPECIES_RHYDON
        ballseal 0
    endparty

trainerdata 134, "Benjamin"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_HIKER
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 134
        // mon 0
        ivs 255
        abilityslot 15
        level 57
        pokemon SPECIES_GOLEM
        item ITEM_HARD_STONE
        move MOVE_HEAD_SMASH
        move MOVE_EARTHQUAKE
        move MOVE_EXPLOSION
        move MOVE_ROCK_POLISH
        nature NATURE_JOLLY
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 57
        pokemon SPECIES_RHYPERIOR
        item ITEM_ASSAULT_VEST
        move MOVE_EARTHQUAKE
        move MOVE_ROCK_WRECKER
        move MOVE_MEGAHORN
        move MOVE_ICE_PUNCH
        nature NATURE_ADAMANT
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 57
        pokemon SPECIES_SOLROCK
        item ITEM_CHARCOAL
        move MOVE_ROCK_SLIDE
        move MOVE_ZEN_HEADBUTT
        move MOVE_FLARE_BLITZ
        move MOVE_ROCK_POLISH
        nature NATURE_MODEST
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 57
        pokemon SPECIES_LUNATONE
        item ITEM_FAIRY_FEATHER
        move MOVE_POWER_GEM
        move MOVE_PSYCHIC
        move MOVE_MOONBLAST
        move MOVE_ROCK_POLISH
        nature NATURE_MODEST
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 32
        level 57
        pokemon SPECIES_DUGTRIO
        item ITEM_FOCUS_SASH
        move MOVE_EARTHQUAKE
        move MOVE_ROCK_SLIDE
        move MOVE_SHADOW_CLAW
        move MOVE_SWORDS_DANCE
        nature NATURE_JOLLY
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 2
        level 58
        pokemon SPECIES_AERODACTYL
        item ITEM_AERODACTYLITE
        move MOVE_DUAL_WINGBEAT
        move MOVE_EARTHQUAKE
        move MOVE_CRUNCH
        move MOVE_DRAGON_DANCE
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 135, "Johnny"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SCHOOL_KID_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 135
        // mon 0
        ivs 0
        abilityslot 15
        level 39
        pokemon SPECIES_BELLSPROUT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_WEEPINBELL
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 42
        pokemon SPECIES_VICTREEBEL
        ballseal 0
    endparty

trainerdata 136, "Linda"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_LASS
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 136
        // mon 0
        ivs 0
        abilityslot 15
        level 41
        pokemon SPECIES_BULBASAUR
        move MOVE_TOXIC
        move MOVE_SLUDGE_BOMB
        move MOVE_LEECH_SEED
        move MOVE_DOUBLE_EDGE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 43
        pokemon SPECIES_IVYSAUR
        move MOVE_TOXIC
        move MOVE_SLUDGE_BOMB
        move MOVE_LEECH_SEED
        move MOVE_DOUBLE_EDGE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 45
        pokemon SPECIES_VENUSAUR
        move MOVE_TOXIC
        move MOVE_SLUDGE_BOMB
        move MOVE_LEECH_SEED
        move MOVE_DOUBLE_EDGE
        ballseal 0
    endparty

trainerdata 137, "Vance"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIRD_KEEPER_GS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 137
        // mon 0
        ivs 50
        abilityslot 15
        level 28
        pokemon SPECIES_HOOTHOOT
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 15
        level 28
        pokemon SPECIES_PIDGEOTTO
        ballseal 0
    endparty

trainerdata 138, "Ethan"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_PKMN_TRAINER_ETHAN
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 138
        // mon 0
        ivs 255
        abilityslot 15
        level 70
        pokemon SPECIES_SHUCKLE
        item ITEM_RED_CARD
        move MOVE_FINAL_GAMBIT
        move MOVE_TOXIC
        move MOVE_STICKY_WEB
        move MOVE_STEALTH_ROCK
        nature NATURE_CAREFUL
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 70
        monwithform SPECIES_DUDUNSPARCE, 1
        item ITEM_LEFTOVERS
        move MOVE_BOOMBURST
        move MOVE_AIR_SLASH
        move MOVE_GLARE
        move MOVE_ROOST
        nature NATURE_BOLD
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 70
        pokemon SPECIES_CLODSIRE
        item ITEM_ROCKY_HELMET
        move MOVE_POISON_JAB
        move MOVE_EARTHQUAKE
        move MOVE_RECOVER
        move MOVE_TOXIC
        nature NATURE_IMPISH
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 70
        pokemon SPECIES_WEAVILE
        item ITEM_FOCUS_SASH
        move MOVE_ICICLE_CRASH
        move MOVE_KNOCK_OFF
        move MOVE_ICE_SHARD
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 70
        pokemon SPECIES_AZUMARILL
        item ITEM_SITRUS_BERRY
        move MOVE_LIQUIDATION
        move MOVE_PLAY_ROUGH
        move MOVE_AQUA_JET
        move MOVE_BELLY_DRUM
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 71
        pokemon SPECIES_LUCARIO
        item ITEM_LUCARIONITE
        move MOVE_CLOSE_COMBAT
        move MOVE_ROCK_SLIDE
        move MOVE_BULLET_PUNCH
        move MOVE_SWORDS_DANCE
        nature NATURE_JOLLY
        ballseal 0
    endparty

trainerdata 139, "Debra"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_PICNICKER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 139
        // mon 0
        ivs 0
        abilityslot 32
        level 41
        pokemon SPECIES_SEAKING
        ballseal 0
    endparty

trainerdata 140, "Doug"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BUG_CATCHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 140
        // mon 0
        ivs 0
        abilityslot 15
        level 39
        pokemon SPECIES_BUTTERFREE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 37
        pokemon SPECIES_ARIADOS
        ballseal 0
    endparty

trainerdata 141, "Lyra"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_PKMN_TRAINER_LYRA
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 141
        // mon 0
        ivs 255
        abilityslot 15
        level 70
        pokemon SPECIES_SHUCKLE
        item ITEM_RED_CARD
        move MOVE_FINAL_GAMBIT
        move MOVE_TOXIC
        move MOVE_STICKY_WEB
        move MOVE_STEALTH_ROCK
        nature NATURE_CAREFUL
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 70
        monwithform SPECIES_DUDUNSPARCE, 1
        item ITEM_LEFTOVERS
        move MOVE_BOOMBURST
        move MOVE_AIR_SLASH
        move MOVE_GLARE
        move MOVE_ROOST
        nature NATURE_BOLD
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 70
        pokemon SPECIES_CLODSIRE
        item ITEM_ROCKY_HELMET
        move MOVE_POISON_JAB
        move MOVE_EARTHQUAKE
        move MOVE_RECOVER
        move MOVE_TOXIC
        nature NATURE_IMPISH
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 70
        pokemon SPECIES_WEAVILE
        item ITEM_FOCUS_SASH
        move MOVE_ICICLE_CRASH
        move MOVE_KNOCK_OFF
        move MOVE_ICE_SHARD
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 70
        pokemon SPECIES_AZUMARILL
        item ITEM_SITRUS_BERRY
        move MOVE_LIQUIDATION
        move MOVE_PLAY_ROUGH
        move MOVE_AQUA_JET
        move MOVE_BELLY_DRUM
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 71
        pokemon SPECIES_LUCARIO
        item ITEM_LUCARIONITE
        move MOVE_CLOSE_COMBAT
        move MOVE_ROCK_SLIDE
        move MOVE_BULLET_PUNCH
        move MOVE_SWORDS_DANCE
        nature NATURE_JOLLY
        ballseal 0
    endparty

trainerdata 142, "Gina"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_PICNICKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 142
        // mon 0
        ivs 10
        abilityslot 15
        level 24
        pokemon SPECIES_HOPPIP
        ballseal 0

        // mon 1
        ivs 10
        abilityslot 15
        level 24
        pokemon SPECIES_HOPPIP
        ballseal 0

        // mon 2
        ivs 10
        abilityslot 15
        level 32
        pokemon SPECIES_IVYSAUR
        ballseal 0
    endparty

trainerdata 143, "Erik"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_HIKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 143
        // mon 0
        ivs 0
        abilityslot 15
        level 24
        pokemon SPECIES_MACHOP
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 27
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 27
        pokemon SPECIES_MACHOP
        ballseal 0
    endparty

trainerdata 144, "Michael"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_HIKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 144
        // mon 0
        ivs 0
        abilityslot 32
        level 25
        pokemon SPECIES_GEODUDE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 25
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 25
        pokemon SPECIES_GOLEM
        ballseal 0
    endparty

trainerdata 145, "Parry"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_HIKER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 145
        // mon 0
        ivs 0
        abilityslot 15
        level 30
        pokemon SPECIES_ONIX
        ballseal 0
    endparty

trainerdata 146, "Timothy"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_HIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 146
        // mon 0
        ivs 0
        abilityslot 15
        level 27
        pokemon SPECIES_DIGLETT
        move MOVE_EARTH_POWER
        move MOVE_DIG
        move MOVE_SAND_ATTACK
        move MOVE_SUCKER_PUNCH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 27
        pokemon SPECIES_DUGTRIO
        move MOVE_EARTH_POWER
        move MOVE_DIG
        move MOVE_SAND_ATTACK
        move MOVE_SUCKER_PUNCH
        ballseal 0
    endparty

trainerdata 147, "Ted"
    trainermontype TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_CAMPER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 147
        // mon 0
        ivs 0
        abilityslot 32
        level 17
        pokemon SPECIES_MAWILE
        item ITEM_MAWILITE
        ballseal 0
    endparty

trainerdata 148, "Lloyd"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_CAMPER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 148
        // mon 0
        ivs 0
        abilityslot 15
        level 46
        pokemon SPECIES_NIDOKING
        ballseal 0
    endparty

trainerdata 149, "Dean"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_CAMPER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 149
        // mon 0
        ivs 0
        abilityslot 32
        level 44
        pokemon SPECIES_GOLDUCK
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 42
        pokemon SPECIES_SANDSLASH
        ballseal 0
    endparty

trainerdata 150, "Sid"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_CAMPER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 150
        // mon 0
        ivs 0
        abilityslot 15
        level 43
        pokemon SPECIES_DUGTRIO
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 40
        pokemon SPECIES_PRIMEAPE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_POLIWRATH
        ballseal 0
    endparty

trainerdata 151, "Erin"
    trainermontype TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_PICNICKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 151
        // mon 0
        ivs 0
        abilityslot 32
        level 17
        pokemon SPECIES_SABLEYE
        item ITEM_SABLENITE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 14
        pokemon SPECIES_ODDISH
        item ITEM_NONE
        ballseal 0
    endparty

trainerdata 152, "Hope"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_PICNICKER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 152
        // mon 0
        ivs 0
        abilityslot 15
        level 44
        pokemon SPECIES_FLAAFFY
        ballseal 0
    endparty

trainerdata 153, "Sharon"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_PICNICKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 153
        // mon 0
        ivs 0
        abilityslot 32
        level 41
        pokemon SPECIES_FURRET
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 43
        pokemon SPECIES_RAPIDASH
        ballseal 0
    endparty

trainerdata 154, "Bailey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_HIKER
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 154
        // mon 0
        ivs 0
        abilityslot 32
        level 13
        pokemon SPECIES_GEODUDE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 13
        pokemon SPECIES_GEODUDE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 13
        pokemon SPECIES_GEODUDE
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 32
        level 13
        pokemon SPECIES_GEODUDE
        ballseal 0

        // mon 4
        ivs 0
        abilityslot 32
        level 13
        pokemon SPECIES_GEODUDE
        ballseal 0
    endparty

trainerdata 155, "Anthony"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_HIKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 155
        // mon 0
        ivs 0
        abilityslot 15
        level 37
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 38
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 40
        pokemon SPECIES_MACHOKE
        ballseal 0
    endparty

trainerdata 156, "Yoshi"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_BLACK_BELT
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 156
        // mon 0
        ivs 255
        abilityslot 32
        level 50
        pokemon SPECIES_HITMONLEE
        item ITEM_BLACK_BELT
        move MOVE_MEGA_KICK
        move MOVE_BLAZE_KICK
        move MOVE_FEINT
        move MOVE_FAKE_OUT
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 50
        pokemon SPECIES_HARIYAMA
        item ITEM_LEFTOVERS
        move MOVE_DRAIN_PUNCH
        move MOVE_LASH_OUT
        move MOVE_BULLET_PUNCH
        move MOVE_BULK_UP
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 50
        pokemon SPECIES_SAWK
        item ITEM_BLACK_BELT
        move MOVE_CLOSE_COMBAT
        move MOVE_KNOCK_OFF
        move MOVE_POISON_JAB
        move MOVE_EARTHQUAKE
        nature NATURE_JOLLY
        ballseal 0
    endparty

trainerdata 157, "Lao"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_BLACK_BELT
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 157
        // mon 0
        ivs 255
        abilityslot 32
        level 50
        pokemon SPECIES_HITMONCHAN
        item ITEM_PUNCHING_GLOVE
        move MOVE_MEGA_PUNCH
        move MOVE_THUNDER_PUNCH
        move MOVE_ICE_PUNCH
        move MOVE_MACH_PUNCH
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 50
        pokemon SPECIES_FALINKS
        item ITEM_ASSAULT_VEST
        move MOVE_CLOSE_COMBAT
        move MOVE_ROCK_SLIDE
        move MOVE_THROAT_CHOP
        move MOVE_FIRST_IMPRESSION
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 50
        pokemon SPECIES_THROH
        item ITEM_LEFTOVERS
        move MOVE_CIRCLE_THROW
        move MOVE_KNOCK_OFF
        move MOVE_REST
        move MOVE_SLEEP_TALK
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 158, "Kiyo"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass TRAINERCLASS_BLACK_BELT
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | F_DOUBLE_BATTLE | 0
    battletype DOUBLE_BATTLE
    endentry

    party 158
        // mon 0
        ivs 255
        abilityslot 15
        level 75
        pokemon SPECIES_HITMONTOP
        item ITEM_SITRUS_BERRY
        move MOVE_TRIPLE_KICK
        move MOVE_ROCK_SLIDE
        move MOVE_BULLDOZE
        move MOVE_FAKE_OUT
        nature NATURE_ADAMANT
        additionalflags 0
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 75
        pokemon SPECIES_HAWLUCHA
        item ITEM_RAWST_BERRY
        move MOVE_CLOSE_COMBAT
        move MOVE_ACROBATICS
        move MOVE_ROCK_SLIDE
        move MOVE_TAILWIND
        nature NATURE_ADAMANT
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 16
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 75
        pokemon SPECIES_URSHIFU
        item ITEM_DREAD_PLATE
        move MOVE_WICKED_BLOW
        move MOVE_CLOSE_COMBAT
        move MOVE_SUCKER_PUNCH
        move MOVE_DETECT
        nature NATURE_JOLLY
        additionalflags 0
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 75
        monwithform SPECIES_URSHIFU, 1
        item ITEM_SPLASH_PLATE
        move MOVE_SURGING_STRIKES
        move MOVE_CLOSE_COMBAT
        move MOVE_AQUA_JET
        move MOVE_DETECT
        nature NATURE_JOLLY
        additionalflags 0
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 15
        level 75
        pokemon SPECIES_MACHAMP
        item ITEM_EXPERT_BELT
        move MOVE_CLOSE_COMBAT
        move MOVE_ROCK_SLIDE
        move MOVE_BULLET_PUNCH
        move MOVE_DETECT
        nature NATURE_ADAMANT
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 16
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 32
        level 75
        pokemon SPECIES_LUCARIO
        item ITEM_LUCARIONITE
        move MOVE_AURA_SPHERE
        move MOVE_FLASH_CANNON
        move MOVE_VACUUM_WAVE
        move MOVE_DETECT
        nature NATURE_TIMID
        additionalflags 0
        ballseal 0
    endparty

trainerdata 159, "Lung"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass TRAINERCLASS_BLACK_BELT
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | F_MULTI_BATTLE_PARTNER | 0
    battletype SINGLE_BATTLE
    endentry

    party 159
        // mon 0
        ivs 255
        abilityslot 32
        level 50
        pokemon SPECIES_MIENSHAO
        item ITEM_CLEAR_AMULET
        move MOVE_DRAIN_PUNCH
        move MOVE_ROCK_SLIDE
        move MOVE_SWORDS_DANCE
        move MOVE_BATON_PASS
        nature NATURE_JOLLY
        additionalflags 0
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 50
        pokemon SPECIES_PASSIMIAN
        item ITEM_WHITE_HERB
        move MOVE_DRAIN_PUNCH
        move MOVE_EARTHQUAKE
        move MOVE_SEED_BOMB
        move MOVE_BATON_PASS
        nature NATURE_JOLLY
        additionalflags 0
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 50
        pokemon SPECIES_MACHAMP
        item ITEM_BLACK_BELT
        move MOVE_DRAIN_PUNCH
        move MOVE_FACADE
        move MOVE_KNOCK_OFF
        move MOVE_MACH_PUNCH
        nature NATURE_ADAMANT
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 16
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 50
        pokemon SPECIES_CONKELDURR
        item ITEM_BLACK_BELT
        move MOVE_DRAIN_PUNCH
        move MOVE_FACADE
        move MOVE_KNOCK_OFF
        move MOVE_MACH_PUNCH
        nature NATURE_ADAMANT
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 16
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 50
        pokemon SPECIES_PRIMEAPE
        item ITEM_EVIOLITE
        move MOVE_DRAIN_PUNCH
        move MOVE_RAGE_FIST
        move MOVE_TEMPER_FLARE
        move MOVE_EARTHQUAKE
        nature NATURE_JOLLY
        additionalflags 0
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 32
        level 50
        pokemon SPECIES_HITMONTOP
        item ITEM_CLEAR_AMULET
        move MOVE_TRIPLE_KICK
        move MOVE_TRIPLE_AXEL
        move MOVE_PURSUIT
        move MOVE_MACH_PUNCH
        nature NATURE_ADAMANT
        additionalflags 0
        ballseal 0
    endparty

trainerdata 160, "Naoko"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_KIMONO_GIRL
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 160
        // mon 0
        ivs 255
        abilityslot 15
        level 71
        pokemon SPECIES_JOLTEON
        item ITEM_ASSAULT_VEST
        move MOVE_THUNDERBOLT
        move MOVE_SHADOW_BALL
        move MOVE_BUZZY_BUZZ
        move MOVE_ALLURING_VOICE
        nature NATURE_MODEST
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 71
        pokemon SPECIES_FLAREON
        item ITEM_ASSAULT_VEST
        move MOVE_FLARE_BLITZ
        move MOVE_SUPERPOWER
        move MOVE_SIZZLY_SLIDE
        move MOVE_TRAILBLAZE
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 161, "Sayo"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_KIMONO_GIRL
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 161
        // mon 0
        ivs 255
        abilityslot 15
        level 71
        pokemon SPECIES_GLACEON
        item ITEM_FOCUS_SASH
        move MOVE_FREEZY_FROST
        move MOVE_HYPER_VOICE
        move MOVE_FREEZE_DRY
        move MOVE_CHILLING_WATER
        nature NATURE_MODEST
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 71
        pokemon SPECIES_LEAFEON
        item ITEM_FOCUS_SASH
        move MOVE_SAPPY_SEED
        move MOVE_RETURN
        move MOVE_KNOCK_OFF
        move MOVE_QUICK_ATTACK
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 162, "Zuki"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_KIMONO_GIRL
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 162
        // mon 0
        ivs 255
        abilityslot 15
        level 71
        pokemon SPECIES_VAPOREON
        item ITEM_LEFTOVERS
        move MOVE_BOUNCY_BUBBLE
        move MOVE_ICE_BEAM
        move MOVE_CALM_MIND
        move MOVE_YAWN
        nature NATURE_BOLD
        ballseal 0
    endparty

trainerdata 163, "Kuni"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass TRAINERCLASS_KIMONO_GIRL
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 163
        // mon 0
        ivs 255
        abilityslot 2
        level 71
        pokemon SPECIES_SYLVEON
        item ITEM_FAIRY_FEATHER
        move MOVE_TRUMP_CARD
        move MOVE_SPARKLY_SWIRL
        move MOVE_PSYSHOCK
        move MOVE_MYSTICAL_FIRE
        nature NATURE_MODEST
        additionalflags TRAINER_DATA_EXTRA_TYPE_PP_COUNTS
        ppcounts 1, 24, 16, 16 
        ballseal 0
    endparty

trainerdata 164, "Miki"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_KIMONO_GIRL
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | F_PRIORITIZE_STATUS_MOVES | 0
    battletype DOUBLE_BATTLE
    endentry

    party 164
        // mon 0
        ivs 255
        abilityslot 2
        level 71
        pokemon SPECIES_ESPEON
        item ITEM_LEFTOVERS
        move MOVE_GLITZY_GLOW
        move MOVE_DAZZLING_GLEAM
        move MOVE_POWER_GEM
        move MOVE_MORNING_SUN
        nature NATURE_TIMID
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 71
        pokemon SPECIES_UMBREON
        item ITEM_LEFTOVERS
        move MOVE_BADDY_BAD
        move MOVE_SHADOW_BALL
        move MOVE_SNARL
        move MOVE_MOONLIGHT
        nature NATURE_BOLD
        ballseal 0
    endparty

trainerdata 165, "Jester"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass TRAINERCLASS_SWIMMER_F
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 165
        // mon 0
        ivs 255
        abilityslot 2
        level 75
        pokemon SPECIES_GOLISOPOD
        item ITEM_SILVER_POWDER
        move MOVE_FIRST_IMPRESSION
        move MOVE_LIQUIDATION
        move MOVE_LEECH_LIFE
        move MOVE_SPIKES
        nature NATURE_ADAMANT
        additionalflags TRAINER_DATA_EXTRA_TYPE_NICKNAME
        nickname _M, _e_, _l_, _i_, _s_, _s_, _a_, _endstr, 0, 0, 0
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 75
        monwithform SPECIES_TYPHLOSION, 1
        item ITEM_CHARCOAL
        move MOVE_BLAST_BURN
        move MOVE_SHADOW_BALL
        move MOVE_EARTH_POWER
        move MOVE_CALM_MIND
        nature NATURE_TIMID
        additionalflags TRAINER_DATA_EXTRA_TYPE_NICKNAME
        nickname _S, _h_, _r_, _a_, _p_, _n_, _e_, _l_, _endstr, 0, 0
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 75
        pokemon SPECIES_URSALUNA
        item ITEM_SILK_SCARF
        move MOVE_FACADE
        move MOVE_HEADLONG_RUSH
        move MOVE_DRAIN_PUNCH
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS | TRAINER_DATA_EXTRA_TYPE_NICKNAME 
        status 16
        nickname _M, _a_, _j_, _o_, _r_, _endstr, 0, 0, 0, 0, 0
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 75
        pokemon SPECIES_ANNIHILAPE
        item ITEM_LEFTOVERS
        move MOVE_RAGE_FIST
        move MOVE_DRAIN_PUNCH
        move MOVE_EARTHQUAKE
        move MOVE_BULK_UP
        nature NATURE_ADAMANT
        additionalflags TRAINER_DATA_EXTRA_TYPE_NICKNAME
        nickname _S, _c_, _u_, _r_, _g_, _e_, _endstr, 0, 0, 0, 0
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 15
        level 75
        pokemon SPECIES_WOBBUFFET
        item ITEM_CUSTAP_BERRY
        move MOVE_COUNTER
        move MOVE_MIRROR_COAT
        move MOVE_DESTINY_BOND
        move MOVE_NONE
        nature NATURE_BOLD
        additionalflags TRAINER_DATA_EXTRA_TYPE_NICKNAME
        nickname _F, _r_, _a_, _n_, _k_, _y_, _endstr, 0, 0, 0, 0
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 2
        level 75
        pokemon SPECIES_SABLEYE
        item ITEM_SABLENITE
        move MOVE_DARK_PULSE
        move MOVE_SHADOW_BALL
        move MOVE_WILL_O_WISP
        move MOVE_RECOVER
        nature NATURE_CALM
        additionalflags TRAINER_DATA_EXTRA_TYPE_NICKNAME
        nickname _G, _e_, _m_, _s_, _t_, _o_, _n_, _e_, _endstr, 0, 0
        ballseal 0
    endparty

trainerdata 166, "Mannequin"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass TRAINERCLASS_POKE_MANIAC
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 166
        // mon 4
        ivs 255
        abilityslot 32
        level 74
        pokemon SPECIES_HERACROSS
        item ITEM_EJECT_PACK
        move MOVE_MEGAHORN
        move MOVE_CLOSE_COMBAT
        move MOVE_EARTHQUAKE
        move MOVE_SPIKES
        ball ITEM_TIMER_BALL
        nature NATURE_JOLLY
        shinylock 0
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 16
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 74
        pokemon SPECIES_SCEPTILE
        item ITEM_LOADED_DICE
        move MOVE_BULLET_SEED
        move MOVE_SCALE_SHOT
        move MOVE_BULLDOZE
        move MOVE_SWORDS_DANCE
        ball ITEM_TIMER_BALL
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0
        ballseal 0        

        // mon 2
        ivs 255
        abilityslot 2
        level 74
        monwithform SPECIES_TOXTRICITY, 1
        item ITEM_BLACK_SLUDGE
        move MOVE_OVERDRIVE
        move MOVE_BOOMBURST
        move MOVE_PSYCHIC_NOISE
        move MOVE_VOLT_SWITCH
        ball ITEM_TIMER_BALL
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 74
        pokemon SPECIES_KECLEON
        item ITEM_SITRUS_BERRY
        move MOVE_DRAIN_PUNCH
        move MOVE_KNOCK_OFF
        move MOVE_SHADOW_SNEAK
        move MOVE_SHED_TAIL
        ball ITEM_TIMER_BALL
        nature NATURE_IMPISH
        shinylock 0
        additionalflags 0
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 32
        level 74
        pokemon SPECIES_KROOKODILE
        item ITEM_ASSAULT_VEST
        move MOVE_EARTHQUAKE
        move MOVE_LASH_OUT
        move MOVE_CLOSE_COMBAT
        move MOVE_PURSUIT
        ball ITEM_TIMER_BALL
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 32
        level 75
        pokemon SPECIES_BANETTE
        item ITEM_BANETTITE
        move MOVE_SHADOW_CLAW
        move MOVE_FRUSTRATION
        move MOVE_SHADOW_SNEAK
        move MOVE_SWORDS_DANCE
        ball ITEM_TIMER_BALL
        nature NATURE_ADAMANT
        shinylock 1
        additionalflags 0
        ballseal 0
    endparty

trainerdata 167, "Tomiz"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK
    trainerclass TRAINERCLASS_SWIMMER_F
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 167
        // mon 0
        ivs 255
        abilityslot 2
        level 75
        monwithform SPECIES_BRAVIARY, 1
        item ITEM_TWISTED_SPOON
        move MOVE_ESPER_WING
        move MOVE_AIR_SLASH
        move MOVE_HEAT_WAVE
        move MOVE_CALM_MIND
        nature NATURE_MODEST
        shinylock 1
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 75
        pokemon SPECIES_TYPHLOSION
        item ITEM_CHARCOAL
        move MOVE_ERUPTION
        move MOVE_FLAMETHROWER
        move MOVE_SHADOW_BALL
        move MOVE_SCORCHING_SANDS
        nature NATURE_TIMID
        shinylock 0
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 75
        pokemon SPECIES_GOLISOPOD
        item ITEM_SITRUS_BERRY
        move MOVE_FIRST_IMPRESSION
        move MOVE_RAZOR_SHELL
        move MOVE_LEECH_LIFE
        move MOVE_AQUA_JET
        nature NATURE_ADAMANT
        shinylock 0
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 75
        monwithform SPECIES_GOODRA, 1
        item ITEM_ASSAULT_VEST
        move MOVE_DRACO_METEOR
        move MOVE_FLASH_CANNON
        move MOVE_FLAMETHROWER
        move MOVE_ICE_BEAM
        nature NATURE_BOLD
        shinylock 0
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 75
        pokemon SPECIES_ROARING_MOON
        item ITEM_LEFTOVERS
        move MOVE_DRAGON_CLAW
        move MOVE_LASH_OUT
        move MOVE_DRAGON_DANCE
        move MOVE_ROOST
        nature NATURE_ADAMANT
        shinylock 0
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 75
        pokemon SPECIES_BLAZIKEN
        item ITEM_BLAZIKENITE
        move MOVE_BLAZE_KICK
        move MOVE_SKY_UPPERCUT
        move MOVE_ROCK_SLIDE
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        shinylock 0
        ballseal 0
    endparty

trainerdata 168, "Penny"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_BATTLE_GIRL
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 168
        // mon 0
        ivs 255
        abilityslot 15
        level 75
        pokemon SPECIES_KLEFKI
        item ITEM_LEFTOVERS
        move MOVE_DAZZLING_GLEAM
        move MOVE_FOUL_PLAY
        move MOVE_THUNDER_WAVE
        move MOVE_SPIKES
        nature NATURE_BOLD
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 74
        pokemon SPECIES_TOXAPEX
        item ITEM_BLACK_SLUDGE
        move MOVE_SURF
        move MOVE_TOXIC
        move MOVE_RECOVER
        move MOVE_TOXIC_SPIKES
        nature NATURE_BOLD
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 74
        pokemon SPECIES_FERROTHORN
        item ITEM_LEFTOVERS
        move MOVE_POWER_WHIP
        move MOVE_GYRO_BALL
        move MOVE_KNOCK_OFF
        move MOVE_LEECH_SEED
        nature NATURE_SASSY
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 74
        pokemon SPECIES_METAGROSS
        item ITEM_MUSCLE_BAND
        move MOVE_IRON_HEAD
        move MOVE_ZEN_HEADBUTT
        move MOVE_EXPLOSION
        move MOVE_STEALTH_ROCK
        nature NATURE_JOLLY
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 74
        pokemon SPECIES_ESPEON
        item ITEM_EJECT_BUTTON
        move MOVE_PSYCHIC
        move MOVE_ALLURING_VOICE
        move MOVE_POWER_GEM
        move MOVE_SHADOW_BALL
        nature NATURE_TIMID
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 32
        level 75
        pokemon SPECIES_GARDEVOIR
        item ITEM_GARDEVOIRITE
        move MOVE_PSYCHIC
        move MOVE_HYPER_VOICE
        move MOVE_AURA_SPHERE
        move MOVE_MYSTICAL_FIRE
        nature NATURE_TIMID
        ballseal 0
    endparty

trainerdata 169, "Sundzy"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass TRAINERCLASS_GENTLEMAN
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 169
        // mon 1
        ivs 255
        abilityslot 32
        level 74
        pokemon SPECIES_ARCANINE
        item ITEM_LEFTOVERS
        move MOVE_FLARE_BLITZ
        move MOVE_IRON_HEAD
        move MOVE_EXTREME_SPEED
        move MOVE_MORNING_SUN
        nature NATURE_JOLLY
        shinylock 0
        additionalflags TRAINER_DATA_EXTRA_TYPE_NICKNAME
        nickname _F, _u_, _k_, _a_, _n_, _o_, _endstr, 0, 0, 0, 0
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 74
        pokemon SPECIES_CETODDLE
        item ITEM_EVIOLITE
        move MOVE_ICICLE_CRASH
        move MOVE_EARTHQUAKE
        move MOVE_ICE_SHARD
        move MOVE_BELLY_DRUM
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags TRAINER_DATA_EXTRA_TYPE_NICKNAME
        nickname _S, _n_, _o_, _w_, _b_, _o_, _l_, _e_, _endstr, 0, 0
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 74
        pokemon SPECIES_CLODSIRE
        item ITEM_BLACK_SLUDGE
        move MOVE_EARTHQUAKE
        move MOVE_POISON_JAB
        move MOVE_CURSE
        move MOVE_RECOVER
        nature NATURE_IMPISH
        shinylock 0
        additionalflags TRAINER_DATA_EXTRA_TYPE_NICKNAME
        nickname _A, _x_, _o_, _l_, _o_, _b_, _o_, _u_, _e_, _endstr, 0
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 74
        pokemon SPECIES_AZUMARILL
        item ITEM_SITRUS_BERRY
        move MOVE_LIQUIDATION
        move MOVE_PLAY_ROUGH
        move MOVE_AQUA_JET
        move MOVE_BELLY_DRUM
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags TRAINER_DATA_EXTRA_TYPE_NICKNAME
        nickname _L, _a_, _z_, _u_, _l_, _i_, _endstr, 0, 0, 0, 0
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 75
        pokemon SPECIES_MUDKIP
        item ITEM_EVIOLITE
        move MOVE_LIQUIDATION
        move MOVE_MUD_SLAP
        move MOVE_YAWN
        move MOVE_ENDEAVOR
        nature NATURE_CAREFUL
        shinylock 0
        additionalflags 0
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 75
        pokemon SPECIES_AMPHAROS
        item ITEM_AMPHAROSITE
        move MOVE_PARABOLIC_CHARGE
        move MOVE_DRAGON_PULSE
        move MOVE_FOCUS_BLAST
        move MOVE_AGILITY
        nature NATURE_TIMID
        shinylock 1
        additionalflags TRAINER_DATA_EXTRA_TYPE_NICKNAME
        nickname _P, _i_, _n_, _k_, _w_, _a_, _t_, _t_, _endstr, 0, 0
        ballseal 0
    endparty

trainerdata 170, "Katina"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass TRAINERCLASS_ACE_TRAINER_F
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 170
        // mon 0
        ivs 255
        abilityslot 15
        level 74
        pokemon SPECIES_SALAZZLE
        item ITEM_EJECT_PACK
        move MOVE_OVERHEAT
        move MOVE_SLUDGE_BOMB
        move MOVE_FLAMETHROWER
        move MOVE_TOXIC_SPIKES
        nature NATURE_MODEST
        additionalflags 0
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 74
        pokemon SPECIES_CERULEDGE
        item ITEM_FOCUS_SASH
        move MOVE_SHADOW_CLAW
        move MOVE_BITTER_BLADE
        move MOVE_SHADOW_SNEAK
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        additionalflags 0
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 74
        pokemon SPECIES_GARCHOMP
        item ITEM_LOADED_DICE
        move MOVE_SCALE_SHOT
        move MOVE_EARTHQUAKE
        move MOVE_FIRE_FANG
        move MOVE_SWORDS_DANCE
        nature NATURE_JOLLY
        additionalflags 0
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 74
        monwithform SPECIES_GOODRA, 1
        item ITEM_ROCKY_HELMET
        move MOVE_DRACO_METEOR
        move MOVE_FLAMETHROWER
        move MOVE_FLASH_CANNON
        move MOVE_SLACK_OFF
        nature NATURE_MODEST
        additionalflags 0
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 74
        pokemon SPECIES_SCOLIPEDE
        item ITEM_BLACK_SLUDGE
        move MOVE_MEGAHORN
        move MOVE_POISON_TAIL
        move MOVE_EARTHQUAKE
        move MOVE_COIL
        nature NATURE_ADAMANT
        additionalflags 0
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 15
        level 75
        pokemon SPECIES_SCIZOR
        item ITEM_SCIZORITE
        move MOVE_BULLET_PUNCH
        move MOVE_CLOSE_COMBAT
        move MOVE_DUAL_WINGBEAT
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        additionalflags TRAINER_DATA_EXTRA_TYPE_NICKNAME 
        nickname _S, _o_, _l_, _d_, _i_, _e_, _r_, _endstr, 0, 0, 0
        ballseal 0
    endparty

trainerdata 171, "Matt"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass TRAINERCLASS_SWIMMER_M
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 171
        // mon 0
        ivs 255
        abilityslot 15
        level 75
        pokemon SPECIES_CHARIZARD
        item ITEM_CHARIZARDITE_Y
        move MOVE_WEATHER_BALL
        move MOVE_SOLAR_BEAM
        move MOVE_SCORCHING_SANDS
        move MOVE_ROOST
        nature NATURE_MODEST
        additionalflags TRAINER_DATA_EXTRA_TYPE_NICKNAME
        nickname _C, _h_, _a_, _r_, _c_, _o_, _a_, _l_, _endstr, 0, 0
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 74
        pokemon SPECIES_ROSERADE
        item ITEM_LIFE_ORB
        move MOVE_MEGA_DRAIN
        move MOVE_SLUDGE_BOMB
        move MOVE_WEATHER_BALL
        move MOVE_SPIKES
        nature NATURE_TIMID
        additionalflags TRAINER_DATA_EXTRA_TYPE_NICKNAME
        nickname _S, _a_, _k_, _u_, _r_, _a_, _endstr, 0, 0, 0, 0
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 74
        pokemon SPECIES_BOLTUND
        item ITEM_LIFE_ORB
        move MOVE_THUNDER_FANG
        move MOVE_FIRE_FANG
        move MOVE_ICE_FANG
        move MOVE_VOLT_SWITCH
        nature NATURE_ADAMANT
        additionalflags TRAINER_DATA_EXTRA_TYPE_NICKNAME
        nickname _Y, _o_, _p_, _p_, _e_, _r_, _s_, _endstr, 0, 0, 0
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 74
        pokemon SPECIES_MILOTIC
        item ITEM_LEFTOVERS
        move MOVE_DRAINING_KISS
        move MOVE_WEATHER_BALL
        move MOVE_SLEEP_TALK
        move MOVE_REST
        nature NATURE_BOLD
        additionalflags TRAINER_DATA_EXTRA_TYPE_NICKNAME
        nickname _A, _z_, _u_, _r_, _a_, _endstr, 0, _e_, _r_, 0, 0
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 74
        pokemon SPECIES_MAMOSWINE
        item ITEM_ASSAULT_VEST
        move MOVE_MOUNTAIN_GALE
        move MOVE_EARTHQUAKE
        move MOVE_ICE_SHARD
        move MOVE_TRAILBLAZE
        nature NATURE_JOLLY
        additionalflags TRAINER_DATA_EXTRA_TYPE_NICKNAME
        nickname _B, _e_, _r_, _t_, _h_, _a_, _endstr, 0, 0, 0, 0
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 15
        level 75
        pokemon SPECIES_MACHAMP
        item ITEM_EXPERT_BELT
        move MOVE_CLOSE_COMBAT
        move MOVE_EARTHQUAKE
        move MOVE_FIRE_PUNCH
        move MOVE_BULLET_PUNCH
        nature NATURE_JOLLY
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS | TRAINER_DATA_EXTRA_TYPE_NICKNAME
        status 16
        nickname _A, _t_, _l_, _a_, _s_, _endstr, 0, 0, 0, 0, 0
        ballseal 0
    endparty

trainerdata 172, "Brent"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_POKE_MANIAC
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 172
        // mon 0
        ivs 0
        abilityslot 15
        level 32
        pokemon SPECIES_NIDORINA
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 34
        pokemon SPECIES_NIDORINO
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 32
        pokemon SPECIES_GYARADOS
        ballseal 0
    endparty

trainerdata 173, "Brent"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_POKE_MANIAC
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 173
        // mon 0
        ivs 0
        abilityslot 15
        level 41
        pokemon SPECIES_GYARADOS
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 38
        pokemon SPECIES_LICKITUNG
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 38
        pokemon SPECIES_NIDORINA
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 15
        level 43
        pokemon SPECIES_NIDORINO
        ballseal 0
    endparty

trainerdata 174, "Snail"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass TRAINERCLASS_SNAIL
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 174

        // mon 0
        ivs 255
        abilityslot 15
        level 74
        pokemon SPECIES_VOLCARONA
        item ITEM_THROAT_SPRAY
        move MOVE_BUG_BUZZ
        move MOVE_FIERY_DANCE
        move MOVE_GIGA_DRAIN
        move MOVE_QUIVER_DANCE
        nature NATURE_TIMID
        additionalflags 0
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 75
        pokemon SPECIES_CONKELDURR
        item ITEM_CLEAR_AMULET
        move MOVE_DRAIN_PUNCH
        move MOVE_FACADE
        move MOVE_MACH_PUNCH
        move MOVE_KNOCK_OFF
        nature NATURE_ADAMANT
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS | TRAINER_DATA_EXTRA_TYPE_NICKNAME
        status 16
        nickname _G, _r_, _i_, _t_, _t_, _endstr, 0, 0, 0, 0, 0
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 75
        pokemon SPECIES_HERACROSS
        item ITEM_LOADED_DICE
        move MOVE_PIN_MISSILE
        move MOVE_ARM_THRUST
        move MOVE_ROCK_BLAST
        move MOVE_SWORDS_DANCE
        nature NATURE_JOLLY
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 16
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 74
        monwithform SPECIES_GOODRA, 1
        item ITEM_LEFTOVERS
        move MOVE_FLASH_CANNON
        move MOVE_DRAGON_PULSE
        move MOVE_FLAMETHROWER
        move MOVE_SLACK_OFF
        nature NATURE_MODEST
        additionalflags 0
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 75
        pokemon SPECIES_DEOXYS
        item ITEM_LEFTOVERS
        move MOVE_PSYCHIC
        move MOVE_THUNDERBOLT
        move MOVE_ICE_BEAM
        move MOVE_RECOVER
        nature NATURE_BOLD
        additionalflags 0
        ballseal 0        
        
        // mon 5
        ivs 255
        abilityslot 32
        level 75
        pokemon SPECIES_MAWILE
        item ITEM_MAWILITE
        move MOVE_PLAY_ROUGH
        move MOVE_IRON_HEAD
        move MOVE_SUCKER_PUNCH
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        additionalflags 0
        ballseal 0
    endparty

trainerdata 175, "XVoid"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass TRAINERCLASS_MEDIUM
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 175
        // mon 0
        ivs 255
        abilityslot 15
        level 74
        pokemon SPECIES_GLISCOR
        item ITEM_NONE
        move MOVE_EARTHQUAKE
        move MOVE_ACROBATICS
        move MOVE_U_TURN
        move MOVE_SPIKES
        nature NATURE_JOLLY
        shinylock 0
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 8
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 74
        pokemon SPECIES_MAGNEZONE
        item ITEM_ASSAULT_VEST
        move MOVE_THUNDERBOLT
        move MOVE_FLASH_CANNON
        move MOVE_VOLT_SWITCH
        move MOVE_OVERHEAT
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 75
        pokemon SPECIES_MACHAMP
        item ITEM_PUNCHING_GLOVE
        move MOVE_DRAIN_PUNCH
        move MOVE_EARTHQUAKE
        move MOVE_THUNDER_PUNCH
        move MOVE_ICE_PUNCH
        nature NATURE_JOLLY
        shinylock 0
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 16
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 75
        pokemon SPECIES_ZANGOOSE
        item ITEM_SILK_SCARF
        move MOVE_FACADE
        move MOVE_KNOCK_OFF
        move MOVE_QUICK_ATTACK
        move MOVE_SWORDS_DANCE
        nature NATURE_JOLLY
        shinylock 1
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 8
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 74
        pokemon SPECIES_SLOWBRO
        item ITEM_RED_CARD
        move MOVE_SURF
        move MOVE_PSYCHIC
        move MOVE_ICE_BEAM
        move MOVE_SLACK_OFF
        nature NATURE_BOLD
        shinylock 0
        additionalflags 0
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 75
        pokemon SPECIES_SALAMENCE
        item ITEM_SALAMENCITE
        move MOVE_BODY_SLAM
        move MOVE_EARTHQUAKE
        move MOVE_TEMPER_FLARE
        move MOVE_ROOST
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0
        ballseal 0
    endparty

trainerdata 176, "Kit"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_ACE_TRAINER_M_GS
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 176
        // mon 0
        ivs 255
        abilityslot 2
        level 74
        pokemon SPECIES_SLOWKING
        item ITEM_LEFTOVERS
        move MOVE_SCALD
        move MOVE_PSYCHIC
        move MOVE_SLACK_OFF
        move MOVE_TELEPORT
        nature NATURE_BOLD
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 74
        pokemon SPECIES_NIDOKING
        item ITEM_LIFE_ORB
        move MOVE_EARTH_POWER
        move MOVE_FLAMETHROWER
        move MOVE_ICE_BEAM
        move MOVE_TOXIC_SPIKES
        nature NATURE_TIMID
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 74
        pokemon SPECIES_ESCAVALIER
        item ITEM_ASSAULT_VEST
        move MOVE_MEGAHORN
        move MOVE_IRON_HEAD
        move MOVE_DRILL_RUN
        move MOVE_PURSUIT
        nature NATURE_CAREFUL
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 32
        level 74
        pokemon SPECIES_KINGAMBIT
        item ITEM_BLACK_GLASSES
        move MOVE_KOWTOW_CLEAVE
        move MOVE_IRON_HEAD
        move MOVE_SUCKER_PUNCH
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 74
        pokemon SPECIES_TYRANTRUM
        item ITEM_HARD_STONE
        move MOVE_HEAD_SMASH
        move MOVE_SCALE_SHOT
        move MOVE_EARTHQUAKE
        move MOVE_ROCK_POLISH
        nature NATURE_ADAMANT
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 2
        level 75
        pokemon SPECIES_GALLADE
        item ITEM_GALLADITE
        move MOVE_SACRED_SWORD
        move MOVE_PSYCHO_CUT
        move MOVE_NIGHT_SLASH
        move MOVE_SWORDS_DANCE
        nature NATURE_JOLLY
        ballseal 0
    endparty

trainerdata 177, "Rei"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK
    trainerclass TRAINERCLASS_PSYCHIC_F
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | F_DOUBLE_BATTLE | 0
    battletype DOUBLE_BATTLE
    endentry

    party 177
        // mon 0
        ivs 255
        abilityslot 2
        level 74
        pokemon SPECIES_DELPHOX
        item ITEM_LIFE_ORB
        move MOVE_HEAT_WAVE
        move MOVE_PSYCHIC
        move MOVE_SCORCHING_SANDS
        move MOVE_GRASS_KNOT
        nature NATURE_TIMID
        shinylock 1
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 74
        pokemon SPECIES_SERPERIOR
        item ITEM_SITRUS_BERRY
        move MOVE_LEAF_STORM
        move MOVE_BREAKING_SWIPE
        move MOVE_GLARE
        move MOVE_SHED_TAIL
        nature NATURE_SERIOUS
        shinylock 0
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 74
        pokemon SPECIES_PRIMARINA
        item ITEM_ASSAULT_VEST
        move MOVE_HYPER_VOICE
        move MOVE_MOONBLAST
        move MOVE_ENERGY_BALL
        move MOVE_ICE_BEAM
        nature NATURE_MODEST
        shinylock 0
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 32
        level 74
        pokemon SPECIES_SCIZOR
        item ITEM_METAL_COAT
        move MOVE_BULLET_PUNCH
        move MOVE_CLOSE_COMBAT
        move MOVE_U_TURN
        move MOVE_FEINT
        nature NATURE_ADAMANT
        shinylock 0
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 15
        level 74
        pokemon SPECIES_AEGISLASH
        item ITEM_LEFTOVERS
        move MOVE_SHADOW_BALL
        move MOVE_FLASH_CANNON
        move MOVE_SHADOW_SNEAK
        move MOVE_KINGS_SHIELD
        nature NATURE_QUIET
        shinylock 0
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 32
        level 75
        pokemon SPECIES_MAWILE
        item ITEM_MAWILITE
        move MOVE_PLAY_ROUGH
        move MOVE_IRON_HEAD
        move MOVE_SUCKER_PUNCH
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        shinylock 0
        ballseal 0
    endparty

trainerdata 178, "Jack"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_SCHOOL_KID_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 178
        // mon 0
        ivs 255
        abilityslot 15
        level 38
        pokemon SPECIES_ELECTRODE
        move MOVE_DISCHARGE
        move MOVE_EXPLOSION
        move MOVE_LIGHT_SCREEN
        move MOVE_MAGNET_RISE
        nature NATURE_HASTY
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 38
        pokemon SPECIES_VILEPLUME
        move MOVE_GIGA_DRAIN
        move MOVE_ACID
        move MOVE_MOONLIGHT
        move MOVE_TOXIC
        nature NATURE_CALM
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 38
        pokemon SPECIES_ARCANINE
        move MOVE_FIRE_FANG
        move MOVE_RETALIATE
        move MOVE_THUNDER_FANG
        move MOVE_EXTREME_SPEED
        nature NATURE_JOLLY
        ballseal 0
    endparty

trainerdata 179, "Kipp"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SCHOOL_KID_M
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 179
        // mon 0
        ivs 0
        abilityslot 32
        level 36
        pokemon SPECIES_VOLTORB
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 36
        pokemon SPECIES_MAGNEMITE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_VOLTORB
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 32
        level 40
        pokemon SPECIES_MAGNETON
        ballseal 0
    endparty

trainerdata 180, "Ethan" // giovanni multi
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_PKMN_TRAINER_ETHAN
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 180
        // mon 0
        ivs 0
        abilityslot 15
        level 15
        pokemon SPECIES_AZUMARILL
        ballseal 0
    endparty

trainerdata 181, "William"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_POKEFAN_M
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 181
        // mon 0
        ivs 255
        abilityslot 2
        level 38
        pokemon SPECIES_RAICHU
        move MOVE_VOLT_TACKLE
        move MOVE_RETURN
        move MOVE_IRON_TAIL
        move MOVE_SWEET_KISS
        nature NATURE_JOLLY
        ballseal 0
    endparty

trainerdata 182, "Beverly"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_POKEFAN
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 182
        // mon 0
        ivs 255
        abilityslot 15
        level 38
        pokemon SPECIES_GRANBULL
        move MOVE_PLAY_ROUGH
        move MOVE_RAGING_BULL
        move MOVE_JAW_LOCK
        move MOVE_THUNDER_FANG
        nature NATURE_JOLLY
        ballseal 0
    endparty

trainerdata 183, "Alice"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_LASS
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 183
        // mon 0
        ivs 0
        abilityslot 15
        level 41
        pokemon SPECIES_GLOOM
        move MOVE_TOXIC
        move MOVE_SLUDGE_BOMB
        move MOVE_SWEET_SCENT
        move MOVE_DRAIN_PUNCH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 45
        pokemon SPECIES_ARBOK
        move MOVE_POISON_JAB
        move MOVE_SCREECH
        move MOVE_CRUNCH
        move MOVE_MUD_BOMB
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 41
        pokemon SPECIES_VILEPLUME
        move MOVE_TOXIC
        move MOVE_SLUDGE_BOMB
        move MOVE_ATTRACT
        move MOVE_DRAIN_PUNCH
        ballseal 0
    endparty

trainerdata 184, "Krise"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_LASS
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 184
        // mon 1
        ivs 255
        abilityslot 2
        level 38
        pokemon SPECIES_MAROWAK
        move MOVE_BONE_CLUB
        move MOVE_RETALIATE
        move MOVE_THUNDER_PUNCH
        move MOVE_POWER_UP_PUNCH
        nature NATURE_ADAMANT
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 38
        pokemon SPECIES_BELLOSSOM
        move MOVE_GIGA_DRAIN
        move MOVE_ACID
        move MOVE_MOONLIGHT
        move MOVE_TOXIC
        nature NATURE_TIMID
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 38
        pokemon SPECIES_NINETALES
        move MOVE_FLAMETHROWER
        move MOVE_HEX
        move MOVE_WILL_O_WISP
        move MOVE_DISABLE
        nature NATURE_TIMID
        ballseal 0
    endparty

trainerdata 185, "Grunt" // GRT1F
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_TEAM_ROCKET
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 185
        // mon 0
        ivs 255
        abilityslot 32
        level 63
        pokemon SPECIES_SNORLAX
        item ITEM_LEFTOVERS
        move MOVE_BODY_SLAM
        move MOVE_SHADOW_BALL
        move MOVE_CURSE
        move MOVE_SLACK_OFF
        nature NATURE_CAREFUL
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 63
        pokemon SPECIES_GENGAR
        item ITEM_LIFE_ORB
        move MOVE_THUNDERBOLT
        move MOVE_ICE_PUNCH
        move MOVE_FIRE_PUNCH
        move MOVE_FOUL_PLAY
        nature NATURE_TIMID
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 63
        pokemon SPECIES_MACHAMP
        item ITEM_ASSAULT_VEST
        move MOVE_DYNAMIC_PUNCH
        move MOVE_EARTHQUAKE
        move MOVE_STONE_EDGE
        move MOVE_DRAIN_PUNCH
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 63
        pokemon SPECIES_GOLEM
        item ITEM_CUSTAP_BERRY
        move MOVE_HEAD_SMASH
        move MOVE_EARTHQUAKE
        move MOVE_SUPERPOWER
        move MOVE_EXPLOSION
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 63
        pokemon SPECIES_ALAKAZAM
        item ITEM_LIFE_ORB
        move MOVE_PSYCHIC
        move MOVE_FIRE_PUNCH
        move MOVE_THUNDER_PUNCH
        move MOVE_ICE_PUNCH
        nature NATURE_TIMID
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 63
        pokemon SPECIES_PINSIR
        item ITEM_PINSIRITE
        move MOVE_FRUSTRATION
        move MOVE_X_SCISSOR
        move MOVE_CLOSE_COMBAT
        move MOVE_EARTHQUAKE
        nature NATURE_JOLLY
        ballseal 0
    endparty

trainerdata 186, "Grunt" // GRT2F 4
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_TEAM_ROCKET
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | F_PRIORITIZE_STATUS_MOVES | 0
    battletype SINGLE_BATTLE
    endentry

    party 186
        // mon 0
        ivs 255
        abilityslot 15
        level 64
        pokemon SPECIES_WEEZING
        item ITEM_MENTAL_HERB
        move MOVE_SLUDGE_BOMB
        move MOVE_HEAT_WAVE
        move MOVE_EXPLOSION
        move MOVE_TOXIC_SPIKES
        nature NATURE_RELAXED
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 64
        pokemon SPECIES_NIDOKING
        item ITEM_LIFE_ORB
        move MOVE_SLUDGE_WAVE
        move MOVE_EARTH_POWER
        move MOVE_SHADOW_BALL
        move MOVE_ROCK_SLIDE
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 64
        pokemon SPECIES_ARBOK
        item ITEM_BLACK_SLUDGE
        move MOVE_VENOSHOCK
        move MOVE_EARTHQUAKE
        move MOVE_GLARE
        move MOVE_SHED_TAIL
        nature NATURE_IMPISH
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 64
        pokemon SPECIES_MUK
        item ITEM_BLACK_SLUDGE
        move MOVE_VENOSHOCK
        move MOVE_DRAIN_PUNCH
        move MOVE_HEX
        move MOVE_TOXIC_SPIKES
        nature NATURE_IMPISH
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 64
        monwithform SPECIES_SLOWBRO, 2
        item ITEM_ASSAULT_VEST
        move MOVE_VENOSHOCK
        move MOVE_PSYCHIC
        move MOVE_DRAIN_PUNCH
        move MOVE_FLAMETHROWER
        nature NATURE_RELAXED
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 64
        pokemon SPECIES_BEEDRILL
        item ITEM_BEEDRILLITE
        move MOVE_X_SCISSOR
        move MOVE_VENOSHOCK
        move MOVE_DRILL_RUN
        move MOVE_U_TURN
        nature NATURE_JOLLY
        ballseal 0
    endparty

trainerdata 187, "Grunt" // GRT2F 2
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_TEAM_ROCKET
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 187
        // mon 0
        ivs 255
        abilityslot 32
        level 64
        pokemon SPECIES_SANDSLASH
        item ITEM_LEFTOVERS
        move MOVE_HIGH_HORSEPOWER
        move MOVE_LEECH_LIFE
        move MOVE_POISON_JAB
        move MOVE_SPIKES
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 64
        pokemon SPECIES_RHYPERIOR
        item ITEM_ASSAULT_VEST
        move MOVE_EARTHQUAKE
        move MOVE_ROCK_WRECKER
        move MOVE_HAMMER_ARM
        move MOVE_MEGAHORN
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 64
        pokemon SPECIES_DONPHAN
        item ITEM_ASSAULT_VEST
        move MOVE_EARTHQUAKE
        move MOVE_ROCK_SLIDE
        move MOVE_POISON_JAB
        move MOVE_SUPERPOWER
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 64
        monwithform SPECIES_DUGTRIO, 1
        item ITEM_LIFE_ORB
        move MOVE_EARTHQUAKE
        move MOVE_IRON_HEAD
        move MOVE_ROCK_SLIDE
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 64
        pokemon SPECIES_MAROWAK
        item ITEM_THICK_CLUB
        move MOVE_BONEMERANG
        move MOVE_ROCK_SLIDE
        move MOVE_DOUBLE_EDGE
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 64
        pokemon SPECIES_CLODSIRE
        item ITEM_BLACK_SLUDGE
        move MOVE_EARTHQUAKE
        move MOVE_SLUDGE_BOMB
        move MOVE_CURSE
        move MOVE_RECOVER
        nature NATURE_IMPISH
        ballseal 0
    endparty

trainerdata 188, "Grunt" // GRT2F 3
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_TEAM_ROCKET
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 188
        // mon 0
        ivs 255
        abilityslot 32
        level 64
        pokemon SPECIES_SKARMORY
        item ITEM_CUSTAP_BERRY
        move MOVE_BRAVE_BIRD
        move MOVE_IRON_HEAD
        move MOVE_DRILL_RUN
        move MOVE_SPIKES
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 64
        pokemon SPECIES_TOGEKISS
        item ITEM_SCOPE_LENS
        move MOVE_MOONBLAST
        move MOVE_HEAT_WAVE
        move MOVE_GRASS_KNOT
        move MOVE_NASTY_PLOT
        nature NATURE_TIMID
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 64
        pokemon SPECIES_XATU
        item ITEM_LEFTOVERS
        move MOVE_PSYCHIC
        move MOVE_FOUL_PLAY
        move MOVE_THUNDER_WAVE
        move MOVE_U_TURN
        nature NATURE_TIMID
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 64
        pokemon SPECIES_MANTINE
        item ITEM_LEFTOVERS
        move MOVE_SURF
        move MOVE_ICE_BEAM
        move MOVE_SEED_BOMB
        move MOVE_AGILITY
        nature NATURE_MODEST
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 64
        pokemon SPECIES_HONCHKROW
        item ITEM_LIFE_ORB
        move MOVE_BRAVE_BIRD
        move MOVE_SUPERPOWER
        move MOVE_SHADOW_BALL
        move MOVE_ROOST
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 64
        pokemon SPECIES_CROBAT
        item ITEM_LIFE_ORB
        move MOVE_SLUDGE_BOMB
        move MOVE_BRAVE_BIRD
        move MOVE_SHADOW_BALL
        move MOVE_U_TURN
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 189, "Grunt" // GRT3F 1
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass TRAINERCLASS_TEAM_ROCKET
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 189
        // mon 0
        ivs 255
        abilityslot 32
        level 65
        pokemon SPECIES_GRANBULL
        item ITEM_CLEAR_AMULET
        move MOVE_SUPERPOWER
        move MOVE_SLUDGE_BOMB
        move MOVE_SHADOW_BALL
        move MOVE_JAW_LOCK
        nature NATURE_JOLLY
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 64
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 65
        pokemon SPECIES_BISHARP
        item ITEM_EVIOLITE
        move MOVE_IRON_HEAD
        move MOVE_FOUL_PLAY
        move MOVE_LOW_KICK
        move MOVE_SWORDS_DANCE
        nature NATURE_IMPISH
        additionalflags 0
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 65
        pokemon SPECIES_PANGORO
        item ITEM_PUNCHING_GLOVE
        move MOVE_DRAIN_PUNCH
        move MOVE_EARTHQUAKE
        move MOVE_BULLET_PUNCH
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        additionalflags 0
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 65
        pokemon SPECIES_HAWLUCHA
        item ITEM_RAWST_BERRY
        move MOVE_CLOSE_COMBAT
        move MOVE_ACROBATICS
        move MOVE_POISON_JAB
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 16
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 65
        pokemon SPECIES_DRAGONITE
        item ITEM_CLEAR_AMULET
        move MOVE_DUAL_WINGBEAT
        move MOVE_EARTHQUAKE
        move MOVE_EXTREME_SPEED
        move MOVE_ROOST
        nature NATURE_JOLLY
        additionalflags 0
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 65
        pokemon SPECIES_GALLADE
        item ITEM_GALLADITE
        move MOVE_SACRED_SWORD
        move MOVE_AIR_SLASH
        move MOVE_SLASH
        move MOVE_SWORDS_DANCE
        nature NATURE_JOLLY
        additionalflags 0
        ballseal 0
    endparty

trainerdata 190, "Grunt" // GRT3F 3 (PARTNER)
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_TEAM_ROCKET
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_DOUBLE_BATTLE | 0
    battletype SINGLE_BATTLE
    endentry

    party 190
        // mon 0
        ivs 255
        abilityslot 15
        level 66
        pokemon SPECIES_BUZZWOLE
        item ITEM_EJECT_PACK
        move MOVE_CLOSE_COMBAT
        move MOVE_LEECH_LIFE
        move MOVE_ROCK_SLIDE
        move MOVE_ROOST
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 66
        pokemon SPECIES_STONJOURNER
        item ITEM_FOCUS_SASH
        move MOVE_ROCK_SLIDE
        move MOVE_BODY_PRESS
        move MOVE_HIGH_HORSEPOWER
        move MOVE_LOW_SWEEP
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_SHARPEDO
        item ITEM_SHARPEDONITE
        move MOVE_CRUNCH
        move MOVE_PSYCHIC_FANGS
        move MOVE_ICE_FANG
        move MOVE_CLOSE_COMBAT
        nature NATURE_TIMID
        ballseal 0
    endparty

trainerdata 191, "Grunt" // GRT3F 4 (PARTNER)
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_TEAM_ROCKET
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_DOUBLE_BATTLE | 0
    battletype SINGLE_BATTLE
    endentry

    party 191
        // mon 0
        ivs 255
        abilityslot 15
        level 66
        pokemon SPECIES_PHEROMOSA
        item ITEM_FOCUS_SASH
        move MOVE_CLOSE_COMBAT
        move MOVE_LUNGE
        move MOVE_ICY_WIND
        move MOVE_U_TURN
        nature NATURE_HASTY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 66
        pokemon SPECIES_EISCUE
        item ITEM_ROCKY_HELMET
        move MOVE_FREEZE_DRY
        move MOVE_WATERFALL
        move MOVE_ICY_WIND
        move MOVE_WHIRLPOOL
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 66
        pokemon SPECIES_CAMERUPT
        item ITEM_CAMERUPTITE
        move MOVE_HEAT_WAVE
        move MOVE_EARTH_POWER
        move MOVE_LASH_OUT
        move MOVE_ROCK_SLIDE
        nature NATURE_BRAVE
        ballseal 0
    endparty

trainerdata 192, "Grunt" // GRT4F 1
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_TEAM_ROCKET
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 192
        // mon 0
        ivs 255
        abilityslot 2
        level 65
        pokemon SPECIES_TOXAPEX
        item ITEM_BLACK_SLUDGE
        move MOVE_SLUDGE_BOMB
        move MOVE_HEX
        move MOVE_INFESTATION
        move MOVE_TOXIC_SPIKES
        nature NATURE_ADAMANT
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 65
        pokemon SPECIES_ARCANINE
        item ITEM_ASSAULT_VEST
        move MOVE_FLARE_BLITZ
        move MOVE_DRAGON_PULSE
        move MOVE_PLAY_ROUGH
        move MOVE_CRUNCH
        nature NATURE_TIMID
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 65
        pokemon SPECIES_CLAWITZER
        item ITEM_LIFE_ORB
        move MOVE_SNIPE_SHOT
        move MOVE_FLASH_CANNON
        move MOVE_ICE_BEAM
        move MOVE_DARK_PULSE
        nature NATURE_MODEST
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 65
        pokemon SPECIES_REUNICLUS
        item ITEM_LIFE_ORB
        move MOVE_PSYCHIC
        move MOVE_ENERGY_BALL
        move MOVE_THUNDER_PUNCH
        move MOVE_FIRE_PUNCH
        nature NATURE_MODEST
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 65
        pokemon SPECIES_ZOROARK
        item ITEM_FOCUS_SASH
        move MOVE_KNOCK_OFF
        move MOVE_FLAMETHROWER
        move MOVE_FOUL_PLAY
        move MOVE_PARTING_SHOT
        nature NATURE_TIMID
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 65
        pokemon SPECIES_MEDICHAM
        item ITEM_MEDICHAMITE
        move MOVE_DRAIN_PUNCH
        move MOVE_SHADOW_BALL
        move MOVE_ROCK_SLIDE
        move MOVE_VACUUM_WAVE
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 193, "Grunt" // GTB2F 3
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_TEAM_ROCKET
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 193
        // mon 0
        ivs 255
        abilityslot 32
        level 66
        pokemon SPECIES_PROBOPASS
        item ITEM_ASSAULT_VEST
        move MOVE_POWER_GEM
        move MOVE_BODY_PRESS
        move MOVE_FIRE_PUNCH
        move MOVE_VOLT_SWITCH
        nature NATURE_RELAXED
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_CORVIKNIGHT
        item ITEM_ROCKY_HELMET
        move MOVE_BRAVE_BIRD
        move MOVE_IRON_HEAD
        move MOVE_BULK_UP
        move MOVE_ROOST
        nature NATURE_CAREFUL
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_ESCAVALIER
        item ITEM_ASSAULT_VEST
        move MOVE_BUG_BUZZ
        move MOVE_IRON_HEAD
        move MOVE_CLOSE_COMBAT
        move MOVE_DRILL_RUN
        nature NATURE_TIMID
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 66
        pokemon SPECIES_MAGNEZONE
        item ITEM_ASSAULT_VEST
        move MOVE_THUNDERBOLT
        move MOVE_OVERHEAT
        move MOVE_BODY_PRESS
        move MOVE_VOLT_SWITCH
        nature NATURE_TIMID
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 66
        pokemon SPECIES_TINKATON
        item ITEM_LEFTOVERS
        move MOVE_PLAY_ROUGH
        move MOVE_GIGATON_HAMMER
        move MOVE_ICE_HAMMER
        move MOVE_THUNDER_WAVE
        nature NATURE_SERIOUS
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_STEELIX
        item ITEM_STEELIXITE
        move MOVE_IRON_TAIL
        move MOVE_EARTH_POWER
        move MOVE_BODY_PRESS
        move MOVE_COIL
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 194, "Bea"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_SUPER_NERD
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 194
        // mon 0
        ivs 255
        abilityslot 15
        level 74
        pokemon SPECIES_GOODRA
        item ITEM_EJECT_PACK
        move MOVE_DRACO_METEOR
        move MOVE_EARTHQUAKE
        move MOVE_TOXIC
        move MOVE_RECOVER
        nature NATURE_SERIOUS
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 74
        pokemon SPECIES_MIMIKYU
        item ITEM_LIFE_ORB
        move MOVE_SHADOW_CLAW
        move MOVE_PLAY_ROUGH
        move MOVE_SHADOW_SNEAK
        move MOVE_SWORDS_DANCE
        nature NATURE_JOLLY
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 74
        pokemon SPECIES_VOLCARONA
        item ITEM_THROAT_SPRAY
        move MOVE_BUG_BUZZ
        move MOVE_FLAMETHROWER
        move MOVE_GIGA_DRAIN
        move MOVE_QUIVER_DANCE
        nature NATURE_TIMID
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 32
        level 74
        pokemon SPECIES_GASTRODON
        item ITEM_LEFTOVERS
        move MOVE_EARTH_POWER
        move MOVE_ICE_BEAM
        move MOVE_RECOVER
        move MOVE_SPIKES
        nature NATURE_BOLD
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 74
        pokemon SPECIES_TINKATON
        item ITEM_AIR_BALLOON
        move MOVE_GIGATON_HAMMER
        move MOVE_PLAY_ROUGH
        move MOVE_KNOCK_OFF
        move MOVE_THUNDER_WAVE
        nature NATURE_JOLLY
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 15
        level 75
        pokemon SPECIES_AMPHAROS
        item ITEM_AMPHAROSITE
        move MOVE_PARABOLIC_CHARGE
        move MOVE_DRAGON_PULSE
        move MOVE_FOCUS_BLAST
        move MOVE_VOLT_SWITCH
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 195, "Grunt" // GTB2F 1
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass TRAINERCLASS_TEAM_ROCKET
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 195
        // mon 0
        ivs 255
        abilityslot 32
        level 66
        pokemon SPECIES_FROSLASS
        item ITEM_FOCUS_SASH
        move MOVE_ICICLE_CRASH
        move MOVE_THUNDERBOLT
        move MOVE_WILL_O_WISP
        move MOVE_SPIKES
        nature NATURE_TIMID
        additionalflags 0
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 66
        pokemon SPECIES_MANDIBUZZ
        item ITEM_LEFTOVERS
        move MOVE_FOUL_PLAY
        move MOVE_DUAL_WINGBEAT
        move MOVE_ROOST
        move MOVE_TOXIC
        nature NATURE_IMPISH
        additionalflags 0
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 66
        pokemon SPECIES_MAMOSWINE
        item ITEM_EJECT_PACK
        move MOVE_HEADLONG_RUSH
        move MOVE_ROCK_SLIDE
        move MOVE_SUPERPOWER
        move MOVE_STEALTH_ROCK
        nature NATURE_JOLLY
        additionalflags 0
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 66
        pokemon SPECIES_WALREIN
        item ITEM_LEFTOVERS
        move MOVE_ICE_BEAM
        move MOVE_SURF
        move MOVE_BODY_PRESS
        move MOVE_YAWN
        nature NATURE_MODEST
        additionalflags 0
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 66
        monwithform SPECIES_RATICATE, 1
        item ITEM_SILK_SCARF
        move MOVE_HYPER_BEAM
        move MOVE_SHADOW_BALL
        move MOVE_STOMPING_TANTRUM
        move MOVE_SWORDS_DANCE
        nature NATURE_JOLLY
        additionalflags 0
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 66
        pokemon SPECIES_GLALIE
        item ITEM_GLALITITE
        move MOVE_FACADE
        move MOVE_FREEZE_DRY
        move MOVE_FIRE_FANG
        move MOVE_EXPLOSION
        nature NATURE_TIMID
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 16
        ballseal 0
    endparty

trainerdata 196, "Grunt" // GTW 1
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_TEAM_ROCKET
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 196
        // mon 0
        ivs 255
        abilityslot 32
        level 66
        pokemon SPECIES_MIENSHAO
        item ITEM_ASSAULT_VEST
        move MOVE_CLOSE_COMBAT
        move MOVE_ROCK_SLIDE
        move MOVE_U_TURN
        move MOVE_FAKE_OUT
        nature NATURE_JOLLY
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 66
        pokemon SPECIES_KOMMO_O
        item ITEM_THROAT_SPRAY
        move MOVE_CLANGING_SCALES
        move MOVE_THUNDER_PUNCH
        move MOVE_ICE_PUNCH
        move MOVE_CLANGOROUS_SOUL
        nature NATURE_TIMID
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_ANNIHILAPE
        item ITEM_SALAC_BERRY
        move MOVE_DRAIN_PUNCH
        move MOVE_RAGE_FIST
        move MOVE_EARTHQUAKE
        move MOVE_BULK_UP
        nature NATURE_ADAMANT
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 32
        level 66
        monwithform SPECIES_DECIDUEYE, 1
        item ITEM_LUM_BERRY
        move MOVE_TRIPLE_ARROWS
        move MOVE_DUAL_WINGBEAT
        move MOVE_SHADOW_SNEAK
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_HERACROSS
        item ITEM_COBA_BERRY
        move MOVE_CLOSE_COMBAT
        move MOVE_POUNCE
        move MOVE_EARTHQUAKE
        move MOVE_SPIKES
        nature NATURE_JOLLY
        ballseal 0
        
        // mon 2
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_SNEASLER
        item ITEM_NONE
        move MOVE_CLOSE_COMBAT
        move MOVE_DIRE_CLAW
        move MOVE_ACROBATICS
        move MOVE_SWORDS_DANCE
        nature NATURE_JOLLY
        ballseal 0
    endparty

trainerdata 197, "Grunt" // GTW 3
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_TEAM_ROCKET
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 197
        // mon 0
        ivs 255
        abilityslot 15
        level 66
        pokemon SPECIES_COFAGRIGUS
        item ITEM_LEFTOVERS
        move MOVE_INFESTATION
        move MOVE_TOXIC_SPIKES
        move MOVE_REST
        move MOVE_SLEEP_TALK
        nature NATURE_CALM
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 66
        monwithform SPECIES_ZOROARK, 1
        item ITEM_LEFTOVERS
        move MOVE_FRUSTRATION
        move MOVE_HEX
        move MOVE_LOW_KICK
        move MOVE_PARTING_SHOT
        nature NATURE_JOLLY
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 66
        pokemon SPECIES_AEGISLASH
        item ITEM_CLEAR_AMULET
        move MOVE_IRON_HEAD
        move MOVE_SHADOW_BALL
        move MOVE_CLOSE_COMBAT
        move MOVE_SWORDS_DANCE
        nature NATURE_JOLLY
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 66
        pokemon SPECIES_DRAGAPULT
        item ITEM_LUM_BERRY
        move MOVE_HEX
        move MOVE_RETURN
        move MOVE_DRAGON_DANCE
        move MOVE_BATON_PASS
        nature NATURE_ADAMANT
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 15
        level 66
        monwithform SPECIES_TYPHLOSION, 1
        item ITEM_SALAC_BERRY
        move MOVE_ERUPTION
        move MOVE_TEMPER_FLARE
        move MOVE_WILD_CHARGE
        move MOVE_PLAY_ROUGH
        nature NATURE_TIMID
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 15
        level 66
        pokemon SPECIES_GENGAR
        item ITEM_GENGARITE
        move MOVE_KNOCK_OFF
        move MOVE_THUNDERBOLT
        move MOVE_ICE_PUNCH
        move MOVE_NASTY_PLOT
        nature NATURE_TIMID
        ballseal 0
    endparty

trainerdata 198, "Grunt" // GRT2F 1
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass TRAINERCLASS_TEAM_ROCKET_F
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | F_MULTI_BATTLE_PARTNER | 0
    battletype SINGLE_BATTLE
    endentry

    party 198
        // mon 0
        ivs 255
        abilityslot 32
        level 64
        pokemon SPECIES_RATICATE
        item ITEM_CLEAR_AMULET
        move MOVE_FACADE
        move MOVE_SHADOW_BALL
        move MOVE_STOMPING_TANTRUM
        move MOVE_U_TURN
        nature NATURE_ADAMANT
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 16
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 64
        pokemon SPECIES_FARIGIRAF
        item ITEM_ASSAULT_VEST
        move MOVE_TWIN_BEAM
        move MOVE_THUNDERBOLT
        move MOVE_DAZZLING_GLEAM
        move MOVE_TRAILBLAZE
        nature NATURE_TIMID
        additionalflags 0
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 64
        pokemon SPECIES_TAUROS
        item ITEM_LIFE_ORB
        move MOVE_BODY_SLAM
        move MOVE_SHADOW_BALL
        move MOVE_IRON_HEAD
        move MOVE_ROCK_SLIDE
        nature NATURE_JOLLY
        additionalflags 0
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 64
        pokemon SPECIES_DUDUNSPARCE
        item ITEM_CLEAR_AMULET
        move MOVE_BOOMBURST
        move MOVE_HEX
        move MOVE_GLARE
        move MOVE_ROOST
        nature NATURE_IMPISH
        additionalflags 0
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 64
        pokemon SPECIES_DODRIO
        item ITEM_FOCUS_SASH
        move MOVE_RETURN
        move MOVE_DRILL_PECK
        move MOVE_ENDURE
        move MOVE_BATON_PASS
        nature NATURE_JOLLY
        additionalflags 0
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 64
        pokemon SPECIES_URSALUNA
        item ITEM_SILK_SCARF
        move MOVE_FACADE
        move MOVE_EARTHQUAKE
        move MOVE_DRAIN_PUNCH
        move MOVE_ROCK_SLIDE
        nature NATURE_ADAMANT
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 16
        ballseal 0
    endparty

trainerdata 199, "Grunt" // GTB2F 6
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass TRAINERCLASS_TEAM_ROCKET_F
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 199
        // mon 1
        ivs 255
        abilityslot 15
        level 66
        pokemon SPECIES_FORRETRESS
        item ITEM_CUSTAP_BERRY
        move MOVE_GYRO_BALL
        move MOVE_EXPLOSION
        move MOVE_STEALTH_ROCK
        move MOVE_TOXIC_SPIKES
        nature NATURE_ADAMANT
        additionalflags 0
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_SYLVEON
        item ITEM_FAIRY_FEATHER
        move MOVE_FACADE
        move MOVE_MYSTICAL_FIRE
        move MOVE_QUICK_ATTACK
        move MOVE_CALM_MIND
        nature NATURE_TIMID
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 16
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 66
        pokemon SPECIES_GOODRA
        item ITEM_LEFTOVERS
        move MOVE_DRAGON_TAIL
        move MOVE_SCALD
        move MOVE_ICE_BEAM
        move MOVE_RECOVER
        nature NATURE_TIMID
        additionalflags 0
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_DONDOZO
        item ITEM_CLEAR_AMULET
        move MOVE_CHILLING_WATER
        move MOVE_AVALANCHE
        move MOVE_SLEEP_TALK
        move MOVE_REST
        nature NATURE_CAREFUL
        additionalflags 0
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_SLAKING
        item ITEM_CLEAR_AMULET
        move MOVE_RETURN
        move MOVE_EARTHQUAKE
        move MOVE_SHADOW_BALL
        move MOVE_SLACK_OFF
        nature NATURE_ADAMANT
        additionalflags 0
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 66
        pokemon SPECIES_AMPHAROS
        item ITEM_AMPHAROSITE
        move MOVE_THUNDERBOLT
        move MOVE_DRAGON_PULSE
        move MOVE_FIRE_PUNCH
        move MOVE_TRAILBLAZE
        nature NATURE_TIMID
        additionalflags 0
        ballseal 0
    endparty

trainerdata 200, "Grunt" // GRT4F 3 OPT
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_TEAM_ROCKET_F
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 200
        // mon 0
        ivs 30
        abilityslot 15
        level 21
        pokemon SPECIES_EKANS
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 15
        level 23
        pokemon SPECIES_ODDISH
        ballseal 0

        // mon 2
        ivs 30
        abilityslot 32
        level 21
        pokemon SPECIES_EKANS
        ballseal 0

        // mon 3
        ivs 30
        abilityslot 15
        level 24
        pokemon SPECIES_GLOOM
        ballseal 0
    endparty

trainerdata 201, "Andrew"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_POKE_MANIAC
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 201
        // mon 0
        ivs 0
        abilityslot 15
        level 24
        pokemon SPECIES_MAROWAK
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 24
        pokemon SPECIES_MAROWAK
        ballseal 0
    endparty

trainerdata 202, "Calvin"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_POKE_MANIAC
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 202
        // mon 0
        ivs 0
        abilityslot 32
        level 26
        pokemon SPECIES_KANGASKHAN
        ballseal 0
    endparty

trainerdata 203, "Phillip"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_HIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 203
        // mon 0
        ivs 0
        abilityslot 32
        level 23
        pokemon SPECIES_GEODUDE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 25
        pokemon SPECIES_GRAVELER
        ballseal 0
    endparty

trainerdata 204, "Leonard"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_HIKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 204
        // mon 0
        ivs 255
        abilityslot 32
        level 46
        pokemon SPECIES_GEODUDE
        item ITEM_NONE
        move MOVE_NONE
        move MOVE_NONE
        move MOVE_NONE
        move MOVE_NONE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 46
        pokemon SPECIES_MACHOP
        item ITEM_NONE
        move MOVE_NONE
        move MOVE_NONE
        move MOVE_NONE
        move MOVE_NONE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 32
        level 46
        pokemon SPECIES_MACHOP
        item ITEM_NONE
        move MOVE_NONE
        move MOVE_NONE
        move MOVE_NONE
        move MOVE_NONE
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 205, "Nick"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_ACE_TRAINER_M_GS
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 205
        // mon 0
        ivs 50
        abilityslot 15
        level 26
        pokemon SPECIES_CHARMANDER
        move MOVE_FIRE_FANG
        move MOVE_SMOKESCREEN
        move MOVE_DRAGON_RAGE
        move MOVE_SCARY_FACE
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 15
        level 26
        pokemon SPECIES_SQUIRTLE
        move MOVE_WITHDRAW
        move MOVE_WATER_GUN
        move MOVE_BITE
        move MOVE_CURSE
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 15
        level 26
        pokemon SPECIES_BULBASAUR
        move MOVE_LEECH_SEED
        move MOVE_POISON_POWDER
        move MOVE_SLEEP_POWDER
        move MOVE_RAZOR_LEAF
        ballseal 0
    endparty

trainerdata 206, "Gwen"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_ACE_TRAINER_F_GS
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 206
        // mon 0
        ivs 50
        abilityslot 32
        level 26
        pokemon SPECIES_EEVEE
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 15
        level 22
        pokemon SPECIES_FLAREON
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 15
        level 22
        pokemon SPECIES_VAPOREON
        ballseal 0

        // mon 3
        ivs 50
        abilityslot 15
        level 22
        pokemon SPECIES_JOLTEON
        ballseal 0
    endparty

trainerdata 207, "Scarlett"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_BIKER
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 207
        // mon 0
        ivs 255
        abilityslot 15
        level 74
        pokemon SPECIES_PROBOPASS
        item ITEM_CUSTAP_BERRY
        move MOVE_POWER_GEM
        move MOVE_BODY_PRESS
        move MOVE_EXPLOSION
        move MOVE_STEALTH_ROCK
        nature NATURE_RELAXED
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 74
        pokemon SPECIES_PARASECT
        item ITEM_BIG_ROOT
        move MOVE_LEECH_LIFE
        move MOVE_SHADOW_CLAW
        move MOVE_SEED_BOMB
        move MOVE_SPORE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 74
        pokemon SPECIES_MR_RIME
        item ITEM_LEFTOVERS
        move MOVE_ICE_BEAM
        move MOVE_PSYCHIC
        move MOVE_FREEZE_DRY
        move MOVE_SLACK_OFF
        nature NATURE_TIMID
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 74
        pokemon SPECIES_KLINKLANG
        item ITEM_METAL_COAT
        move MOVE_GEAR_GRIND
        move MOVE_WILD_CHARGE
        move MOVE_FRUSTRATION
        move MOVE_SHIFT_GEAR
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 74
        pokemon SPECIES_PORYGON_Z
        item ITEM_LIFE_ORB
        move MOVE_TRI_ATTACK
        move MOVE_THUNDERBOLT
        move MOVE_ICE_BEAM
        move MOVE_AGILITY
        nature NATURE_MODEST
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 75
        pokemon SPECIES_MAWILE
        item ITEM_MAWILITE
        move MOVE_IRON_HEAD
        move MOVE_PLAY_ROUGH
        move MOVE_SUCKER_PUNCH
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 208, "JJo & G'ma"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_DOUBLE_TEAM
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 208
        // mon 0
        ivs 0
        abilityslot 15
        level 16
        pokemon SPECIES_FURRET
        ballseal 0

        // mon 0
        ivs 0
        abilityslot 15
        level 16
        pokemon SPECIES_FURRET
        ballseal 0
    endparty

trainerdata 209, "Cassie"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BEAUTY
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 209
        // mon 0
        ivs 0
        abilityslot 15
        level 36
        pokemon SPECIES_VILEPLUME
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 42
        pokemon SPECIES_BUTTERFREE
        ballseal 0
    endparty

trainerdata 210, "Caroline"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BEAUTY
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 210
        // mon 0
        ivs 0
        abilityslot 15
        level 38
        pokemon SPECIES_MARILL
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_SEEL
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 2
        level 38
        pokemon SPECIES_MARILL
        ballseal 0
    endparty

trainerdata 211, "Huey"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_SAILOR
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 211
        // mon 0
        ivs 255
        abilityslot 15
        level 46
        pokemon SPECIES_POLIWRATH
        item ITEM_SITRUS_BERRY
        move MOVE_LIQUIDATION
        move MOVE_DRAIN_PUNCH
        move MOVE_BATON_PASS
        move MOVE_BELLY_DRUM
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 46
        pokemon SPECIES_CLOYSTER
        item ITEM_WHITE_HERB
        move MOVE_ICICLE_SPEAR
        move MOVE_DRILL_RUN
        move MOVE_EXPLOSION
        move MOVE_SHELL_SMASH
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 46
        pokemon SPECIES_CLAWITZER
        item ITEM_ASSAULT_VEST
        move MOVE_BUBBLE_BEAM
        move MOVE_ICE_BEAM
        move MOVE_AURA_SPHERE
        move MOVE_U_TURN
        nature NATURE_MODEST
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 46
        pokemon SPECIES_BARBARACLE
        item ITEM_WHITE_HERB
        move MOVE_ROCK_SLIDE
        move MOVE_LIQUIDATION
        move MOVE_SUPERPOWER
        move MOVE_SHELL_SMASH
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 46
        pokemon SPECIES_POLITOED
        item ITEM_MYSTIC_WATER
        move MOVE_SURF
        move MOVE_EARTH_POWER
        move MOVE_SLEEP_TALK
        move MOVE_REST
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 212, "Terrell"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_SAILOR
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 212
        // mon 0
        ivs 255
        abilityslot 2
        level 46
        pokemon SPECIES_QWILFISH
        item ITEM_ROCKY_HELMET
        move MOVE_BARB_BARRAGE
        move MOVE_AQUA_TAIL
        move MOVE_FLIP_TURN
        move MOVE_SPIKES
        nature NATURE_JOLLY
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 46
        pokemon SPECIES_PELIPPER
        item ITEM_LEFTOVERS
        move MOVE_SURF
        move MOVE_AIR_SLASH
        move MOVE_U_TURN
        move MOVE_ROOST
        nature NATURE_BOLD
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 46
        pokemon SPECIES_WAILORD
        item ITEM_CUSTAP_BERRY
        move MOVE_SURF
        move MOVE_BODY_SLAM
        move MOVE_BOUNCE
        move MOVE_SELF_DESTRUCT
        nature NATURE_LONELY
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 46
        pokemon SPECIES_FLOATZEL
        item ITEM_MYSTIC_WATER
        move MOVE_WAVE_CRASH
        move MOVE_ICE_SPINNER
        move MOVE_LOW_KICK
        move MOVE_PURSUIT
        nature NATURE_ADAMANT
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 46
        pokemon SPECIES_TENTACRUEL
        item ITEM_BLACK_SLUDGE
        move MOVE_SURF
        move MOVE_SLUDGE_WAVE
        move MOVE_FLIP_TURN
        move MOVE_TOXIC_SPIKES
        nature NATURE_TIMID
        ballseal 0
    endparty

trainerdata 213, "Kent"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_SAILOR
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 213
        // mon 0
        ivs 255
        abilityslot 15
        level 46
        pokemon SPECIES_KLAWF
        item ITEM_ASSAULT_VEST
        move MOVE_ROCK_SLIDE
        move MOVE_HIGH_HORSEPOWER
        move MOVE_CRABHAMMER
        move MOVE_TEMPER_FLARE
        nature NATURE_JOLLY
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 46
        pokemon SPECIES_CRUSTLE
        item ITEM_WHITE_HERB
        move MOVE_X_SCISSOR
        move MOVE_ROCK_SLIDE
        move MOVE_CRABHAMMER
        move MOVE_SHELL_SMASH
        nature NATURE_ADAMANT
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 32
        level 46
        pokemon SPECIES_PARASECT
        item ITEM_SITRUS_BERRY
        move MOVE_LEECH_LIFE
        move MOVE_SHADOW_CLAW
        move MOVE_CRABHAMMER
        move MOVE_SPORE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 46
        pokemon SPECIES_CRAWDAUNT
        item ITEM_EJECT_PACK
        move MOVE_CRABHAMMER
        move MOVE_CRUNCH
        move MOVE_CLOSE_COMBAT
        move MOVE_DRAGON_DANCE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 15
        level 46
        pokemon SPECIES_KINGLER
        item ITEM_MYSTIC_WATER
        move MOVE_CRABHAMMER
        move MOVE_KNOCK_OFF
        move MOVE_STOMPING_TANTRUM
        move MOVE_AGILITY
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 214, "Roberto"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_SAILOR
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 214
        // mon 0
        ivs 255
        abilityslot 2
        level 46
        pokemon SPECIES_DRAGALGE
        item ITEM_BLACK_SLUDGE
        move MOVE_SLUDGE_BOMB
        move MOVE_DRACO_METEOR
        move MOVE_TOXIC_SPIKES
        move MOVE_FLIP_TURN
        nature NATURE_MODEST
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 46
        pokemon SPECIES_MACHAMP
        item ITEM_BLACK_BELT
        move MOVE_DYNAMIC_PUNCH
        move MOVE_STONE_EDGE
        move MOVE_BULLET_PUNCH
        move MOVE_BULK_UP
        nature NATURE_ADAMANT
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 46
        pokemon SPECIES_DIGGERSBY
        item ITEM_CLEAR_AMULET
        move MOVE_QUICK_ATTACK
        move MOVE_EARTHQUAKE
        move MOVE_FIRE_PUNCH
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 46
        pokemon SPECIES_KOMMO_O
        item ITEM_EJECT_PACK
        move MOVE_CLANGING_SCALES
        move MOVE_BODY_PRESS
        move MOVE_FLASH_CANNON
        move MOVE_STEALTH_ROCK
        nature NATURE_JOLLY
        ballseal 0        
        
        // mon 4
        ivs 255
        abilityslot 15
        level 46
        pokemon SPECIES_DHELMISE
        item ITEM_LEFTOVERS
        move MOVE_POWER_WHIP
        move MOVE_POLTERGEIST
        move MOVE_ANCHOR_SHOT
        move MOVE_SYNTHESIS
        nature NATURE_ADAMANT
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 2
        level 46
        pokemon SPECIES_ANNIHILAPE
        item ITEM_CHESTO_BERRY
        move MOVE_RAGE_FIST
        move MOVE_DRAIN_PUNCH
        move MOVE_EARTHQUAKE
        move MOVE_REST
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 215, "Connie"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_LASS
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 215
        // mon 0
        ivs 255
        abilityslot 15
        level 46
        pokemon SPECIES_KLEFKI
        item ITEM_LEFTOVERS
        move MOVE_DAZZLING_GLEAM
        move MOVE_FOUL_PLAY
        move MOVE_THUNDER_WAVE
        move MOVE_SPIKES
        nature NATURE_BOLD
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 46
        pokemon SPECIES_TOGEDEMARU
        item ITEM_LEFTOVERS
        move MOVE_ZING_ZAP
        move MOVE_IRON_HEAD
        move MOVE_U_TURN
        move MOVE_SPIKY_SHIELD
        nature NATURE_JOLLY
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 46
        pokemon SPECIES_MAWILE
        item ITEM_LEFTOVERS
        move MOVE_IRON_HEAD
        move MOVE_SUCKER_PUNCH
        move MOVE_BATON_PASS
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 32
        level 46
        monwithform SPECIES_DUGTRIO, 1
        item ITEM_SOFT_SAND
        move MOVE_EARTHQUAKE
        move MOVE_IRON_HEAD
        move MOVE_ROCK_SLIDE
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 32
        level 46
        pokemon SPECIES_TINKATON
        item ITEM_ASSAULT_VEST
        move MOVE_GIGATON_HAMMER
        move MOVE_PLAY_ROUGH
        move MOVE_KNOCK_OFF
        move MOVE_FAKE_OUT
        nature NATURE_JOLLY
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 15
        level 46
        pokemon SPECIES_FORRETRESS
        item ITEM_CUSTAP_BERRY
        move MOVE_GYRO_BALL
        move MOVE_LUNGE
        move MOVE_BODY_PRESS
        move MOVE_EXPLOSION
        nature NATURE_BRAVE
        ballseal 0
    endparty

trainerdata 216, "Grunt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_TEAM_ROCKET
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 216
        // mon 0
        ivs 30
        abilityslot 32
        level 16
        pokemon SPECIES_RATTATA
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 32
        level 16
        pokemon SPECIES_RATTATA
        ballseal 0

        // mon 2
        ivs 30
        abilityslot 32
        level 16
        pokemon SPECIES_RATTATA
        ballseal 0

        // mon 3
        ivs 30
        abilityslot 32
        level 16
        pokemon SPECIES_RATTATA
        ballseal 0
    endparty

trainerdata 217, "Denis"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_BIRD_KEEPER_GS
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 217
        // mon 0
        ivs 255
        abilityslot 32
        level 46
        pokemon SPECIES_SKARMORY
        item ITEM_CUSTAP_BERRY
        move MOVE_STEEL_WING
        move MOVE_DRILL_PECK
        move MOVE_PURSUIT
        move MOVE_SPIKES
        nature NATURE_ADAMANT
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 46
        pokemon SPECIES_XATU
        item ITEM_LEFTOVERS
        move MOVE_AIR_SLASH
        move MOVE_ROOST
        move MOVE_COSMIC_POWER
        move MOVE_BATON_PASS
        nature NATURE_CALM
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 46
        pokemon SPECIES_ALTARIA
        item ITEM_LEFTOVERS
        move MOVE_BRAVE_BIRD
        move MOVE_DRAGON_CLAW
        move MOVE_WILL_O_WISP
        move MOVE_ROOST
        nature NATURE_IMPISH
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 32
        level 46
        pokemon SPECIES_TOGEKISS
        item ITEM_LEFTOVERS
        move MOVE_DAZZLING_GLEAM
        move MOVE_AIR_SLASH
        move MOVE_AURA_SPHERE
        move MOVE_NASTY_PLOT
        nature NATURE_TIMID
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 46
        pokemon SPECIES_FEAROW
        item ITEM_SCOPE_LENS
        move MOVE_DRILL_PECK
        move MOVE_FRUSTRATION
        move MOVE_DRILL_RUN
        move MOVE_PURSUIT
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 218, "Grunt" // TRHQB2F 2
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_TEAM_ROCKET
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | F_PRIORITIZE_STATUS_MOVES | 0
    battletype SINGLE_BATTLE
    endentry

    party 218
        // mon 0
        ivs 255
        abilityslot 15
        level 60
        pokemon SPECIES_ARBOK
        item ITEM_SITRUS_BERRY
        move MOVE_POISON_JAB
        move MOVE_EARTHQUAKE
        move MOVE_SHED_TAIL
        move MOVE_TOXIC_SPIKES
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 60
        pokemon SPECIES_TOXAPEX
        item ITEM_BLACK_SLUDGE
        move MOVE_SLUDGE_BOMB
        move MOVE_INFESTATION
        move MOVE_BANEFUL_BUNKER
        move MOVE_RECOVER
        nature NATURE_BOLD
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 60
        pokemon SPECIES_SCOLIPEDE
        item ITEM_MUSCLE_BAND
        move MOVE_MEGAHORN
        move MOVE_POISON_TAIL
        move MOVE_COIL
        move MOVE_BATON_PASS
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 60
        pokemon SPECIES_DRAPION
        item ITEM_ASSAULT_VEST
        move MOVE_CROSS_POISON
        move MOVE_LASH_OUT
        move MOVE_EARTHQUAKE
        move MOVE_PURSUIT
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 60
        pokemon SPECIES_CROBAT
        item ITEM_LIFE_ORB
        move MOVE_AIR_SLASH
        move MOVE_SLUDGE_BOMB
        move MOVE_HEAT_WAVE
        move MOVE_NASTY_PLOT
        nature NATURE_TIMID
        ballseal 0
    endparty

trainerdata 219, "Grunt" // TRHQB2F 3
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_TEAM_ROCKET
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 219
        // mon 0
        ivs 255
        abilityslot 15
        level 60
        pokemon SPECIES_SHUCKLE
        item ITEM_MENTAL_HERB
        move MOVE_FINAL_GAMBIT
        move MOVE_INFESTATION
        move MOVE_STEALTH_ROCK
        move MOVE_STICKY_WEB
        nature NATURE_BOLD
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 60
        pokemon SPECIES_RELICANTH
        item ITEM_HARD_STONE
        move MOVE_HEAD_SMASH
        move MOVE_LIQUIDATION
        move MOVE_EARTHQUAKE
        move MOVE_ROCK_POLISH
        nature NATURE_ADAMANT
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 60
        pokemon SPECIES_PROBOPASS
        item ITEM_ASSAULT_VEST
        move MOVE_POWER_GEM
        move MOVE_FLASH_CANNON
        move MOVE_BODY_PRESS
        move MOVE_VOLT_SWITCH
        nature NATURE_MODEST
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 60
        pokemon SPECIES_CRUSTLE
        item ITEM_WHITE_HERB
        move MOVE_X_SCISSOR
        move MOVE_ROCK_SLIDE
        move MOVE_EARTHQUAKE
        move MOVE_SHELL_SMASH
        nature NATURE_ADAMANT
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 60
        monwithform SPECIES_AVALUGG, 1
        item ITEM_CUSTAP_BERRY
        move MOVE_MOUNTAIN_GALE
        move MOVE_ROCK_SLIDE
        move MOVE_BODY_PRESS
        move MOVE_RECOVER
        nature NATURE_ADAMANT
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 32
        level 60
        pokemon SPECIES_AERODACTYL
        item ITEM_AERODACTYLITE
        move MOVE_DUAL_WINGBEAT
        move MOVE_ROCK_SLIDE
        move MOVE_FIRE_FANG
        move MOVE_PURSUIT
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 220, "Grunt" // TRHQB2F 1
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_TEAM_ROCKET
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 220
        // mon 0
        ivs 255
        abilityslot 2
        level 60
        pokemon SPECIES_KLEAVOR
        item ITEM_CLEAR_AMULET
        move MOVE_X_SCISSOR
        move MOVE_STONE_AXE
        move MOVE_CLOSE_COMBAT
        move MOVE_TRAILBLAZE
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 60
        pokemon SPECIES_ESCAVALIER
        item ITEM_CUSTAP_BERRY
        move MOVE_X_SCISSOR
        move MOVE_IRON_HEAD
        move MOVE_DRILL_RUN
        move MOVE_PURSUIT
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 60
        pokemon SPECIES_PARASECT
        item ITEM_SITRUS_BERRY
        move MOVE_LEECH_LIFE
        move MOVE_SHADOW_CLAW
        move MOVE_SPORE
        move MOVE_CURSE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 60
        pokemon SPECIES_GALVANTULA
        item ITEM_MIRACLE_SEED
        move MOVE_THUNDER
        move MOVE_BUG_BUZZ
        move MOVE_ENERGY_BALL
        move MOVE_VOLT_SWITCH
        nature NATURE_TIMID
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 60
        pokemon SPECIES_VENOMOTH
        item ITEM_BLACK_SLUDGE
        move MOVE_BUG_BUZZ
        move MOVE_SLUDGE_BOMB
        move MOVE_PSYCHIC
        move MOVE_QUIVER_DANCE
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 221, "Louis"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_ACE_TRAINER_M_GS
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 221
        // mon 0
        ivs 255
        abilityslot 2
        level 75
        monwithform SPECIES_ARCANINE, 1
        item ITEM_CLEAR_AMULET
        move MOVE_HEAD_SMASH
        move MOVE_FLARE_BLITZ
        move MOVE_WILD_CHARGE
        move MOVE_STEALTH_ROCK
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 75
        pokemon SPECIES_PALAFIN
        item ITEM_EJECT_PACK
        move MOVE_JET_PUNCH
        move MOVE_CLOSE_COMBAT
        move MOVE_ICE_PUNCH
        move MOVE_FLIP_TURN
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 75
        pokemon SPECIES_ABSOL
        item ITEM_SCOPE_LENS
        move MOVE_NIGHT_SLASH
        move MOVE_PSYCHO_CUT
        move MOVE_X_SCISSOR
        move MOVE_STONE_EDGE
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 75
        pokemon SPECIES_TERRAKION
        item ITEM_CLEAR_AMULET
        move MOVE_MIGHTY_CLEAVE
        move MOVE_SACRED_SWORD
        move MOVE_EARTHQUAKE
        move MOVE_SWORDS_DANCE
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 75
        monwithform SPECIES_KELDEO, 1
        item ITEM_WISE_GLASSES
        move MOVE_SURF
        move MOVE_SACRED_SWORD
        move MOVE_AIR_SLASH
        move MOVE_CALM_MIND
        nature NATURE_TIMID
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 75
        pokemon SPECIES_GALLADE
        item ITEM_GALLADITE
        move MOVE_SACRED_SWORD
        move MOVE_PSYCHO_CUT
        move MOVE_KNOCK_OFF
        move MOVE_SWORDS_DANCE
        nature NATURE_JOLLY
        ballseal 0
    endparty

trainerdata 222, "Grunt" // TRHQB3F PASSWORD L
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_TEAM_ROCKET
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 222
        // mon 0
        ivs 255
        abilityslot 15
        level 60
        pokemon SPECIES_COFAGRIGUS
        item ITEM_CHESTO_BERRY
        move MOVE_HEX
        move MOVE_BODY_PRESS
        move MOVE_TOXIC_SPIKES
        move MOVE_REST
        nature NATURE_BOLD
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 60
        pokemon SPECIES_PALOSSAND
        item ITEM_LEFTOVERS
        move MOVE_SCORCHING_SANDS
        move MOVE_HEX
        move MOVE_GIGA_DRAIN
        move MOVE_SHORE_UP
        nature NATURE_MODEST
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 60
        pokemon SPECIES_DUSKNOIR
        item ITEM_ASSAULT_VEST
        move MOVE_SHADOW_PUNCH
        move MOVE_THUNDER_PUNCH
        move MOVE_ICE_PUNCH
        move MOVE_DRAIN_PUNCH
        nature NATURE_CAREFUL
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 32
        level 60
        monwithform SPECIES_ZOROARK, 1
        item ITEM_FOCUS_SASH
        move MOVE_HYPER_VOICE
        move MOVE_BITTER_MALICE
        move MOVE_FLAMETHROWER
        move MOVE_PARTING_SHOT
        nature NATURE_TIMID
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 60
        pokemon SPECIES_CERULEDGE
        item ITEM_FOCUS_SASH
        move MOVE_BITTER_BLADE
        move MOVE_POLTERGEIST
        move MOVE_CLOSE_COMBAT
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 15
        level 60
        pokemon SPECIES_GENGAR
        item ITEM_GENGARITE
        move MOVE_SHADOW_BALL
        move MOVE_SLUDGE_WAVE
        move MOVE_THUNDERBOLT
        move MOVE_PSYCHIC
        nature NATURE_TIMID
        ballseal 0
    endparty

trainerdata 223, "Grunt" // TRHB1F GUARD 1 
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass TRAINERCLASS_TEAM_ROCKET
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 223
        // mon 0
        ivs 255
        abilityslot 2
        level 60
        pokemon SPECIES_ANNIHILAPE
        item ITEM_ASSAULT_VEST
        move MOVE_RAGE_FIST
        move MOVE_DRAIN_PUNCH
        move MOVE_EARTHQUAKE
        move MOVE_U_TURN
        nature NATURE_JOLLY
        additionalflags 0
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 60
        pokemon SPECIES_PERSIAN
        item ITEM_FOCUS_SASH
        move MOVE_FRUSTRATION
        move MOVE_TRAILBLAZE
        move MOVE_GLARE
        move MOVE_U_TURN
        nature NATURE_JOLLY
        additionalflags 0
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 60
        pokemon SPECIES_DODRIO
        item ITEM_FOCUS_SASH
        move MOVE_FRUSTRATION
        move MOVE_BRAVE_BIRD
        move MOVE_STOMPING_TANTRUM
        move MOVE_BATON_PASS
        nature NATURE_ADAMANT
        additionalflags 0
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 60
        pokemon SPECIES_DONPHAN
        item ITEM_CUSTAP_BERRY
        move MOVE_EARTHQUAKE
        move MOVE_KNOCK_OFF
        move MOVE_ICE_SPINNER
        move MOVE_ENDEAVOR
        nature NATURE_ADAMANT
        additionalflags 0
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 60
        pokemon SPECIES_GLISCOR
        item ITEM_LEFTOVERS
        move MOVE_EARTHQUAKE
        move MOVE_FACADE
        move MOVE_TOXIC
        move MOVE_U_TURN
        nature NATURE_JOLLY
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 8
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 60
        pokemon SPECIES_HERACROSS
        item ITEM_LOADED_DICE
        move MOVE_PIN_MISSILE
        move MOVE_ARM_THRUST
        move MOVE_ROCK_BLAST
        move MOVE_TRAILBLAZE
        nature NATURE_JOLLY
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 16
        ballseal 0
    endparty

trainerdata 224, "Grunt" // TRHB1F GUARD 2 
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK
    trainerclass TRAINERCLASS_TEAM_ROCKET
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 224
        // mon 0
        ivs 255
        abilityslot 15
        level 60
        pokemon SPECIES_TYRANITAR
        item ITEM_CHOPLE_BERRY
        move MOVE_ROCK_SLIDE
        move MOVE_CRUNCH
        move MOVE_EARTHQUAKE
        move MOVE_DRAGON_DANCE
        nature NATURE_ADAMANT
        shinylock 0
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 60
        pokemon SPECIES_TOGEKISS
        item ITEM_LEFTOVERS
        move MOVE_MOONBLAST
        move MOVE_AIR_SLASH
        move MOVE_YAWN
        move MOVE_BATON_PASS
        nature NATURE_MODEST
        shinylock 0
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 32
        level 60
        pokemon SPECIES_SCIZOR
        item ITEM_METAL_COAT
        move MOVE_BUG_BITE
        move MOVE_BULLET_PUNCH
        move MOVE_CLOSE_COMBAT
        move MOVE_ROOST
        nature NATURE_ADAMANT
        shinylock 0
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 32
        level 60
        pokemon SPECIES_DRAGONITE
        item ITEM_ASSAULT_VEST
        move MOVE_OUTRAGE
        move MOVE_DUAL_WINGBEAT
        move MOVE_EXTREME_SPEED
        move MOVE_POWER_UP_PUNCH
        nature NATURE_JOLLY
        shinylock 0
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 15
        level 60
        pokemon SPECIES_MAGNEZONE
        item ITEM_CUSTAP_BERRY
        move MOVE_FLASH_CANNON
        move MOVE_OVERHEAT
        move MOVE_VOLT_SWITCH
        move MOVE_EXPLOSION
        nature NATURE_QUIET
        shinylock 0
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 15
        level 60
        pokemon SPECIES_GYARADOS
        item ITEM_GYARADOSITE
        move MOVE_WATERFALL
        move MOVE_CRUNCH
        move MOVE_EARTHQUAKE
        move MOVE_DRAGON_DANCE
        nature NATURE_JOLLY
        shinylock 1
        ballseal 0
    endparty

trainerdata 225, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_TEAM_ROCKET
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 225
        // mon 0
        ivs 10
        abilityslot 15
        level 36
        pokemon SPECIES_GOLBAT
        ballseal 0
    endparty

trainerdata 226, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_TEAM_ROCKET
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 226
        // mon 0
        ivs 0
        abilityslot 15
        level 30
        pokemon SPECIES_KOFFING
        ballseal 0
    endparty

trainerdata 227, "Grunt" // GTW 2
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_TEAM_ROCKET
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 227
        // mon 0
        ivs 255
        abilityslot 15
        level 66
        pokemon SPECIES_ZOROARK
        item ITEM_LIFE_ORB
        move MOVE_KNOCK_OFF
        move MOVE_FLAMETHROWER
        move MOVE_PURSUIT
        move MOVE_PARTING_SHOT
        nature NATURE_TIMID
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 66
        pokemon SPECIES_HONCHKROW
        item ITEM_FOCUS_SASH
        move MOVE_NIGHT_SLASH
        move MOVE_HEAT_WAVE
        move MOVE_SUCKER_PUNCH
        move MOVE_NASTY_PLOT
        nature NATURE_MODEST
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 66
        pokemon SPECIES_SCRAFTY
        item ITEM_LEFTOVERS
        move MOVE_DRAIN_PUNCH
        move MOVE_IRON_HEAD
        move MOVE_ROCK_SLIDE
        move MOVE_DRAGON_DANCE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_HYDREIGON
        item ITEM_ASSAULT_VEST
        move MOVE_LASH_OUT
        move MOVE_SCALE_SHOT
        move MOVE_FLAMETHROWER
        move MOVE_FLASH_CANNON
        nature NATURE_HASTY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 66
        monwithform SPECIES_SAMUROTT, 1
        item ITEM_ASSAULT_VEST
        move MOVE_CEASELESS_EDGE
        move MOVE_AQUA_CUTTER
        move MOVE_ICE_BEAM
        move MOVE_SUCKER_PUNCH
        nature NATURE_MODEST
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 66
        pokemon SPECIES_OVERQWIL
        item ITEM_BLACK_SLUDGE
        move MOVE_BARB_BARRAGE
        move MOVE_HEX
        move MOVE_CURSE
        move MOVE_PAIN_SPLIT
        nature NATURE_IMPISH
        ballseal 0
    endparty

trainerdata 228, "Grunt" // GTB2F 2
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_TEAM_ROCKET
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 228
        // mon 0
        ivs 255
        abilityslot 15
        level 66
        monwithform SPECIES_MUK, 1
        item ITEM_ASSAULT_VEST
        move MOVE_POISON_JAB
        move MOVE_DRAIN_PUNCH
        move MOVE_SHADOW_SNEAK
        move MOVE_EXPLOSION
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_DRAGALGE
        item ITEM_BLACK_SLUDGE
        move MOVE_DRAGON_PULSE
        move MOVE_PLAY_ROUGH
        move MOVE_SURF
        move MOVE_FLIP_TURN
        nature NATURE_MODEST
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 66
        pokemon SPECIES_DUSKNOIR
        item ITEM_LEFTOVERS
        move MOVE_HEX
        move MOVE_DRAIN_PUNCH
        move MOVE_SHADOW_SNEAK
        move MOVE_WILL_O_WISP
        nature NATURE_ADAMANT
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_CACTURNE
        item ITEM_LEFTOVERS
        move MOVE_POWER_TRIP
        move MOVE_GIGA_DRAIN
        move MOVE_NASTY_PLOT
        move MOVE_SPIKY_SHIELD
        nature NATURE_MODEST
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_HYDRAPPLE
        item ITEM_ASSAULT_VEST
        move MOVE_GIGA_DRAIN
        move MOVE_FICKLE_BEAM
        move MOVE_HYDRO_PUMP
        move MOVE_DRAGON_TAIL
        nature NATURE_MODEST
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 66
        pokemon SPECIES_AGGRON
        item ITEM_AGGRONITE
        move MOVE_HEAVY_SLAM
        move MOVE_BODY_PRESS
        move MOVE_CURSE
        move MOVE_REST
        nature NATURE_CAREFUL
        ballseal 0
    endparty

trainerdata 229, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_TEAM_ROCKET
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 229
        // mon 0
        ivs 0
        abilityslot 15
        level 15
        pokemon SPECIES_RATTATA
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 15
        pokemon SPECIES_RATTATA
        ballseal 0
    endparty

trainerdata 230, "Franklin"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_PSYCHIC_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 230
        // mon 0
        ivs 0
        abilityslot 32
        level 44
        pokemon SPECIES_KADABRA
        move MOVE_HEADBUTT
        move MOVE_SKILL_SWAP
        move MOVE_PSYCHIC
        move MOVE_DISABLE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 47
        pokemon SPECIES_GIRAFARIG
        move MOVE_CRUNCH
        move MOVE_SKILL_SWAP
        move MOVE_DOUBLE_HIT
        move MOVE_PSYCHIC
        ballseal 0
    endparty

trainerdata 231, "Edward"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_GENTLEMAN
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 231
        // mon 0
        ivs 0
        abilityslot 15
        level 41
        pokemon SPECIES_PERSIAN
        ballseal 0
    endparty

trainerdata 232, "Vincent"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_GUITARIST
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 232
        // mon 0
        ivs 0
        abilityslot 15
        level 45
        pokemon SPECIES_JOLTEON
        move MOVE_SHOCK_WAVE
        move MOVE_QUICK_ATTACK
        move MOVE_PIN_MISSILE
        move MOVE_HELPING_HAND
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 43
        pokemon SPECIES_VOLTORB
        move MOVE_SHOCK_WAVE
        move MOVE_SWIFT
        move MOVE_GYRO_BALL
        move MOVE_SCREECH
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 42
        pokemon SPECIES_MAGNEMITE
        move MOVE_SHOCK_WAVE
        move MOVE_SUPERSONIC
        move MOVE_THUNDER_WAVE
        move MOVE_MAGNET_BOMB
        ballseal 0
    endparty

trainerdata 233, "Eric"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_SUPER_NERD
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 233
        // mon 0
        ivs 255
        abilityslot 15
        level 36
        pokemon SPECIES_GRIMER
        item ITEM_EVIOLITE
        move MOVE_SLUDGE_BOMB
        move MOVE_MUD_SHOT
        move MOVE_RECOVER
        move MOVE_TOXIC
        nature NATURE_CALM
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 36
        monwithform SPECIES_GRIMER, 1
        item ITEM_EVIOLITE
        move MOVE_POISON_FANG
        move MOVE_KNOCK_OFF
        move MOVE_RECOVER
        move MOVE_TOXIC
        nature NATURE_CAREFUL
        ballseal 0
    endparty

trainerdata 234, "Eoin"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_HIKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 234
        // mon 0
        ivs 0
        abilityslot 32
        level 42
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 42
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 42
        pokemon SPECIES_GRAVELER
        ballseal 0
    endparty

trainerdata 235, "Noland"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_HIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 235
        // mon 0
        ivs 0
        abilityslot 15
        level 39
        pokemon SPECIES_BRONZOR
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 42
        pokemon SPECIES_GOLEM
        ballseal 0
    endparty

trainerdata 236, "Shaye"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_ACE_TRAINER_M_GS
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 236
        // mon 0
        ivs 50
        abilityslot 15
        level 43
        pokemon SPECIES_JOLTEON
        move MOVE_DOUBLE_KICK
        move MOVE_THUNDERBOLT
        move MOVE_QUICK_ATTACK
        move MOVE_SAND_ATTACK
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 15
        level 43
        pokemon SPECIES_TANGELA
        move MOVE_ANCIENT_POWER
        move MOVE_STUN_SPORE
        move MOVE_GIGA_DRAIN
        move MOVE_INGRAIN
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 32
        level 43
        pokemon SPECIES_TAUROS
        move MOVE_TAKE_DOWN
        move MOVE_ZEN_HEADBUTT
        move MOVE_PAYBACK
        move MOVE_SCARY_FACE
        ballseal 0
    endparty

trainerdata 237, "Carol"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_ACE_TRAINER_F_GS
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 237
        // mon 0
        ivs 50
        abilityslot 32
        level 43
        pokemon SPECIES_ELECTRODE
        move MOVE_THUNDER
        move MOVE_SELF_DESTRUCT
        move MOVE_SWIFT
        move MOVE_RAIN_DANCE
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 32
        level 43
        pokemon SPECIES_STARMIE
        move MOVE_RECOVER
        move MOVE_BRINE
        move MOVE_THUNDER
        move MOVE_PSYCHIC
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 15
        level 43
        pokemon SPECIES_NINETALES
        move MOVE_NASTY_PLOT
        move MOVE_FIRE_BLAST
        move MOVE_CONFUSE_RAY
        move MOVE_WILL_O_WISP
        ballseal 0
    endparty

trainerdata 238, "Stanly"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SAILOR
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 238
        // mon 0
        ivs 0
        abilityslot 32
        level 39
        pokemon SPECIES_MACHOP
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 41
        pokemon SPECIES_MACHOKE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 34
        pokemon SPECIES_PSYDUCK
        ballseal 0
    endparty

trainerdata 239, "Jeff"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SAILOR
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 239
        // mon 0
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_MAKUHITA
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 40
        pokemon SPECIES_RATICATE
        ballseal 0
    endparty

trainerdata 240, "Garrett"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SAILOR
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 240
        // mon 0
        ivs 0
        abilityslot 15
        level 42
        pokemon SPECIES_KINGLER
        ballseal 0
    endparty

trainerdata 241, "Kenneth"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SAILOR
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 241
        // mon 0
        ivs 0
        abilityslot 15
        level 36
        pokemon SPECIES_MACHOP
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 36
        pokemon SPECIES_MACHOP
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 36
        pokemon SPECIES_POLIWRATH
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 32
        level 36
        pokemon SPECIES_MACHOP
        ballseal 0
    endparty

trainerdata 242, "Fritz"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_JUGGLER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 242
        // mon 0
        ivs 0
        abilityslot 32
        level 37
        pokemon SPECIES_MR_MIME
        move MOVE_SUBSTITUTE
        move MOVE_PSYCHIC
        move MOVE_ENCORE
        move MOVE_DOUBLE_SLAP
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 37
        pokemon SPECIES_MAGMAR
        move MOVE_LAVA_PLUME
        move MOVE_FIRE_PUNCH
        move MOVE_CONFUSE_RAY
        move MOVE_FEINT_ATTACK
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 37
        pokemon SPECIES_MACHOKE
        move MOVE_FOCUS_ENERGY
        move MOVE_KARATE_CHOP
        move MOVE_SEISMIC_TOSS
        move MOVE_REVENGE
        ballseal 0
    endparty

trainerdata 243, "Katie"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SWIMMER_F
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 243
        // mon 0
        ivs 0
        abilityslot 15
        level 41
        pokemon SPECIES_DEWGONG
        ballseal 0
    endparty

trainerdata 244, "Lance"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_CHAMPION
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 244
        // mon 0
        ivs 255
        abilityslot 32
        level 76
        pokemon SPECIES_DRAGONITE
        item ITEM_LEFTOVERS
        move MOVE_DUAL_WINGBEAT
        move MOVE_EARTHQUAKE
        move MOVE_EXTREME_SPEED
        move MOVE_ROOST
        nature NATURE_ADAMANT
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 76
        pokemon SPECIES_LATIAS
        item ITEM_SOUL_DEW
        move MOVE_MIST_BALL
        move MOVE_DRAGON_PULSE
        move MOVE_DRAINING_KISS
        move MOVE_CALM_MIND
        nature NATURE_BOLD
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 76
        pokemon SPECIES_MELMETAL
        item ITEM_ASSAULT_VEST
        move MOVE_DOUBLE_IRON_BASH
        move MOVE_EARTHQUAKE
        move MOVE_THUNDER_PUNCH
        move MOVE_ICE_PUNCH
        nature NATURE_ADAMANT
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 76
        pokemon SPECIES_WALKING_WAKE
        item ITEM_BOOSTER_ENERGY
        move MOVE_SCALD
        move MOVE_DRAGON_PULSE
        move MOVE_FLAMETHROWER
        move MOVE_FLIP_TURN
        nature NATURE_TIMID
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 15
        level 76
        monwithform SPECIES_ZYGARDE, 3
        item ITEM_LEFTOVERS
        move MOVE_THOUSAND_ARROWS
        move MOVE_GLARE
        move MOVE_SUBSTITUTE
        move MOVE_DRAGON_DANCE
        nature NATURE_JOLLY
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 2
        level 76
        pokemon SPECIES_TYRANITAR
        item ITEM_TYRANITARITE
        move MOVE_KNOCK_OFF
        move MOVE_ROCK_SLIDE
        move MOVE_PURSUIT
        move MOVE_EARTHQUAKE
        nature NATURE_JOLLY
        ballseal 0
    endparty

trainerdata 245, "Will"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_ELITE_FOUR_WILL
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 245
        // mon 0
        ivs 255
        abilityslot 15
        level 75
        monwithform SPECIES_HOOPA, 1
        item ITEM_EJECT_PACK
        move MOVE_HYPERSPACE_FURY
        move MOVE_EXPANDING_FORCE
        move MOVE_DRAIN_PUNCH
        move MOVE_FIRE_PUNCH
        ball ITEM_DREAM_BALL
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 0, 0, 0, 0, 0, 0
        nature NATURE_BRAVE
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 75
        pokemon SPECIES_RABSCA
        item ITEM_LEPPA_BERRY
        move MOVE_EXPANDING_FORCE
        move MOVE_BUG_BUZZ
        move MOVE_SLUDGE_BOMB
        move MOVE_REVIVAL_BLESSING
        ball ITEM_DREAM_BALL
        setivs 31, 0, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 0, 0, 0, 0, 0, 0
        nature NATURE_QUIET
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 32
        level 75
        pokemon SPECIES_REUNICLUS
        item ITEM_LIFE_ORB
        move MOVE_EXPANDING_FORCE
        move MOVE_SHADOW_BALL
        move MOVE_FOCUS_BLAST
        move MOVE_RECOVER
        ball ITEM_DREAM_BALL
        setivs 31, 0, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 0, 0, 0, 0, 0, 0
        nature NATURE_QUIET
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 75
        pokemon SPECIES_METAGROSS
        item ITEM_CLEAR_AMULET
        move MOVE_METEOR_MASH
        move MOVE_ZEN_HEADBUTT
        move MOVE_HAMMER_ARM
        move MOVE_POWER_UP_PUNCH
        ball ITEM_DREAM_BALL
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 0, 0, 0, 0, 0, 0
        nature NATURE_BRAVE
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 15
        level 75
        pokemon SPECIES_WYRDEER
        item ITEM_LEFTOVERS
        move MOVE_FRUSTRATION
        move MOVE_PSYSHIELD_BASH
        move MOVE_EARTHQUAKE
        move MOVE_CURSE
        ball ITEM_DREAM_BALL
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 0, 0, 0, 0, 0, 0
        nature NATURE_BRAVE
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 2
        level 75
        pokemon SPECIES_SLOWBRO
        item ITEM_SLOWBRONITE
        move MOVE_EXPANDING_FORCE
        move MOVE_SCALD
        move MOVE_SIGNAL_BEAM
        move MOVE_NASTY_PLOT
        ball ITEM_DREAM_BALL
        setivs 31, 0, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 0, 0, 0, 0, 0, 0
        nature NATURE_QUIET
        ballseal 0
    endparty

trainerdata 246, "Karen"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_ELITE_FOUR_KAREN
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | F_MULTI_BATTLE_PARTNER | 0
    battletype SINGLE_BATTLE
    endentry

    party 246
        // mon 0
        ivs 255
        abilityslot 15
        level 75
        monwithform SPECIES_FLOETTE, 5
        item ITEM_LIFE_ORB
        move MOVE_LIGHT_OF_RUIN
        move MOVE_EARTH_POWER
        move MOVE_MYSTICAL_FIRE
        move MOVE_FLOWER_SHIELD
        ball ITEM_LUXURY_BALL
        nature NATURE_MODEST
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 75
        pokemon SPECIES_UMBREON
        item ITEM_CLEAR_AMULET
        move MOVE_BADDY_BAD
        move MOVE_WORK_UP
        move MOVE_MOONLIGHT
        move MOVE_BATON_PASS
        ball ITEM_LUXURY_BALL
        nature NATURE_CALM
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 75
        pokemon SPECIES_IRON_VALIANT
        item ITEM_EXPERT_BELT
        move MOVE_MOONBLAST
        move MOVE_CLOSE_COMBAT
        move MOVE_THUNDERBOLT
        move MOVE_ICE_PUNCH
        ball ITEM_LUXURY_BALL
        nature NATURE_NAIVE
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 75
        pokemon SPECIES_ROARING_MOON
        item ITEM_ROSELI_BERRY
        move MOVE_LASH_OUT
        move MOVE_EARTHQUAKE
        move MOVE_IRON_HEAD
        move MOVE_DRAGON_DANCE
        ball ITEM_LUXURY_BALL
        nature NATURE_ADAMANT
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 75
        pokemon SPECIES_FLUTTER_MANE
        item ITEM_LIFE_ORB
        move MOVE_SHADOW_BALL
        move MOVE_DRAINING_KISS
        move MOVE_POWER_GEM
        move MOVE_MYSTICAL_FIRE
        ball ITEM_LUXURY_BALL
        nature NATURE_MODEST
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 2
        level 75
        pokemon SPECIES_ABSOL
        item ITEM_ABSOLITE
        move MOVE_NIGHT_SLASH
        move MOVE_SACRED_SWORD
        move MOVE_PSYCHO_CUT
        move MOVE_SWORDS_DANCE
        ball ITEM_LUXURY_BALL
        nature NATURE_JOLLY
        ballseal 0
    endparty

trainerdata 247, "Koga"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_ELITE_FOUR_KOGA
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 247
        // mon 0
        ivs 255
        abilityslot 2
        level 75
        pokemon SPECIES_NIDOKING
        item ITEM_LIFE_ORB
        move MOVE_EARTH_POWER
        move MOVE_THUNDERBOLT
        move MOVE_ICE_BEAM
        move MOVE_STEALTH_ROCK
        ball ITEM_DUSK_BALL
        nature NATURE_MODEST
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 75
        monwithform SPECIES_SLOWKING, 1
        item ITEM_ASSAULT_VEST
        move MOVE_EERIE_SPELL
        move MOVE_SLUDGE_BOMB
        move MOVE_FLAMETHROWER
        move MOVE_ICE_BEAM
        ball ITEM_DUSK_BALL
        nature NATURE_TIMID
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 75
        pokemon SPECIES_DRAGALGE
        item ITEM_EJECT_PACK
        move MOVE_DRACO_METEOR
        move MOVE_SLUDGE_WAVE
        move MOVE_FLIP_TURN
        move MOVE_TOXIC_SPIKES
        ball ITEM_DUSK_BALL
        nature NATURE_MODEST
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 75
        pokemon SPECIES_PECHARUNT
        item ITEM_BLACK_SLUDGE
        move MOVE_MALIGNANT_CHAIN
        move MOVE_SHADOW_BALL
        move MOVE_NASTY_PLOT
        move MOVE_RECOVER
        ball ITEM_DUSK_BALL
        nature NATURE_CALM
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 75
        pokemon SPECIES_OVERQWIL
        item ITEM_BLACK_SLUDGE
        move MOVE_BARB_BARRAGE
        move MOVE_LASH_OUT
        move MOVE_SPIKY_SHIELD
        move MOVE_SPIKES
        ball ITEM_DUSK_BALL
        nature NATURE_ADAMANT
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 2
        level 75
        pokemon SPECIES_VENUSAUR
        item ITEM_VENUSAURITE
        move MOVE_GIGA_DRAIN
        move MOVE_SLUDGE_WAVE
        move MOVE_EARTH_POWER
        move MOVE_SYNTHESIS
        ball ITEM_DUSK_BALL
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 248, "Ed"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BUG_CATCHER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 248
        // mon 0
        ivs 0
        abilityslot 15
        level 43
        pokemon SPECIES_BURMY
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 43
        pokemon SPECIES_BUTTERFREE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 43
        pokemon SPECIES_BEEDRILL
        ballseal 0
    endparty

trainerdata 249, "Don"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_BUG_CATCHER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 249
        // mon 0
        ivs 255
        abilityslot 2
        level 9
        pokemon SPECIES_CATERPIE
        move MOVE_TACKLE
        move MOVE_STRING_SHOT
        move MOVE_NONE
        move MOVE_NONE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 9
        pokemon SPECIES_WEEDLE
        move MOVE_POISON_STING
        move MOVE_STRING_SHOT
        move MOVE_NONE
        move MOVE_NONE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 10
        pokemon SPECIES_LEDYBA
        move MOVE_COMET_PUNCH
        move MOVE_SUPERSONIC
        move MOVE_TACKLE
        move MOVE_NONE
        nature NATURE_JOLLY
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 10
        pokemon SPECIES_SPINARAK
        move MOVE_POISON_STING
        move MOVE_SCARY_FACE
        move MOVE_CONSTRICT
        move MOVE_ABSORB
        nature NATURE_BRAVE
        ballseal 0
    endparty

trainerdata 250, "Kenji"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BLACK_BELT
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 250
        // mon 0
        ivs 30
        abilityslot 15
        level 27
        pokemon SPECIES_ONIX
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 15
        level 32
        pokemon SPECIES_HITMONLEE
        ballseal 0

        // mon 2
        ivs 30
        abilityslot 15
        level 27
        pokemon SPECIES_ONIX
        ballseal 0

        // mon 3
        ivs 30
        abilityslot 15
        level 32
        pokemon SPECIES_MACHOKE
        ballseal 0
    endparty

trainerdata 251, "Nob"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS  | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_BLACK_BELT
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 251
        // mon 0
        ivs 255
        abilityslot 32
        level 50
        pokemon SPECIES_FLAMIGO
        item ITEM_NONE
        move MOVE_CLOSE_COMBAT
        move MOVE_ACROBATICS
        move MOVE_LIQUIDATION
        move MOVE_U_TURN
        nature NATURE_JOLLY
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 50
        pokemon SPECIES_SCRAFTY
        item ITEM_LEFTOVERS
        move MOVE_DRAIN_PUNCH
        move MOVE_LASH_OUT
        move MOVE_POISON_JAB
        move MOVE_DRAGON_DANCE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 32
        level 50
        pokemon SPECIES_TOXICROAK
        item ITEM_BLACK_SLUDGE
        move MOVE_POISON_JAB
        move MOVE_DRAIN_PUNCH
        move MOVE_THUNDER_PUNCH
        move MOVE_FAKE_OUT
        nature NATURE_JOLLY
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 50
        pokemon SPECIES_LUCARIO
        item ITEM_LIFE_ORB
        move MOVE_AURA_SPHERE
        move MOVE_FLASH_CANNON
        move MOVE_VACUUM_WAVE
        move MOVE_NASTY_PLOT
        nature NATURE_TIMID
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 32
        level 50
        pokemon SPECIES_CRABOMINABLE
        item ITEM_ASSAULT_VEST
        move MOVE_ICE_HAMMER
        move MOVE_DRAIN_PUNCH
        move MOVE_THUNDER_PUNCH
        move MOVE_EARTHQUAKE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 2
        level 50
        pokemon SPECIES_BRELOOM
        item ITEM_LOADED_DICE
        move MOVE_BULLET_SEED
        move MOVE_MACH_PUNCH
        move MOVE_ROCK_TOMB
        move MOVE_SPORE
        nature NATURE_JOLLY
        ballseal 0
    endparty

trainerdata 252, "Harold"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SWIMMER_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 252
        // mon 0
        ivs 0
        abilityslot 32
        level 42
        pokemon SPECIES_REMORAID
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_SEADRA
        ballseal 0
    endparty

trainerdata 253, "Brock"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_LEADER_BROCK
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 253
        // mon 0
        ivs 200
        abilityslot 32
        level 51
        pokemon SPECIES_GRAVELER
        item ITEM_NONE
        move MOVE_DEFENSE_CURL
        move MOVE_ROCK_SLIDE
        move MOVE_ROLLOUT
        move MOVE_EARTHQUAKE
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 15
        level 51
        pokemon SPECIES_RHYHORN
        item ITEM_NONE
        move MOVE_SANDSTORM
        move MOVE_SCARY_FACE
        move MOVE_EARTHQUAKE
        move MOVE_HORN_DRILL
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 32
        level 53
        pokemon SPECIES_OMASTAR
        item ITEM_NONE
        move MOVE_ANCIENT_POWER
        move MOVE_BRINE
        move MOVE_PROTECT
        move MOVE_SPIKE_CANNON
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 15
        level 54
        pokemon SPECIES_ONIX
        item ITEM_SITRUS_BERRY
        move MOVE_IRON_TAIL
        move MOVE_ROCK_SLIDE
        move MOVE_SCREECH
        move MOVE_SANDSTORM
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 32
        level 52
        pokemon SPECIES_KABUTOPS
        item ITEM_NONE
        move MOVE_ROCK_SLIDE
        move MOVE_AQUA_JET
        move MOVE_ENDURE
        move MOVE_GIGA_DRAIN
        ballseal 0
    endparty

trainerdata 254, "Misty"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_LEADER_MISTY
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 254
        // mon 0
        ivs 200
        abilityslot 15
        level 49
        pokemon SPECIES_GOLDUCK
        item ITEM_NONE
        move MOVE_WATER_PULSE
        move MOVE_DISABLE
        move MOVE_PSYCH_UP
        move MOVE_PSYCHIC
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 32
        level 49
        pokemon SPECIES_QUAGSIRE
        item ITEM_NONE
        move MOVE_WATER_PULSE
        move MOVE_AMNESIA
        move MOVE_EARTHQUAKE
        move MOVE_RAIN_DANCE
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 15
        level 52
        pokemon SPECIES_LAPRAS
        item ITEM_NONE
        move MOVE_WATER_PULSE
        move MOVE_SING
        move MOVE_ICE_BEAM
        move MOVE_BODY_SLAM
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 32
        level 54
        pokemon SPECIES_STARMIE
        item ITEM_SITRUS_BERRY
        move MOVE_WATER_PULSE
        move MOVE_CONFUSE_RAY
        move MOVE_RECOVER
        move MOVE_ICE_BEAM
        ballseal 0
    endparty

trainerdata 255, "Lt. Surge"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_LEADER_LT_SURGE
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 255
        // mon 0
        ivs 200
        abilityslot 15
        level 51
        pokemon SPECIES_RAICHU
        item ITEM_NONE
        move MOVE_THUNDER_WAVE
        move MOVE_QUICK_ATTACK
        move MOVE_SHOCK_WAVE
        move MOVE_DOUBLE_TEAM
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 32
        level 47
        pokemon SPECIES_ELECTRODE
        item ITEM_NONE
        move MOVE_THUNDER_WAVE
        move MOVE_DOUBLE_TEAM
        move MOVE_SHOCK_WAVE
        move MOVE_LIGHT_SCREEN
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 15
        level 47
        pokemon SPECIES_MAGNETON
        item ITEM_NONE
        move MOVE_SUPERSONIC
        move MOVE_DOUBLE_TEAM
        move MOVE_SHOCK_WAVE
        move MOVE_MIRROR_SHOT
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 32
        level 47
        pokemon SPECIES_ELECTRODE
        item ITEM_NONE
        move MOVE_SCREECH
        move MOVE_DOUBLE_TEAM
        move MOVE_SELF_DESTRUCT
        move MOVE_CHARGE_BEAM
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 15
        level 53
        pokemon SPECIES_ELECTABUZZ
        item ITEM_SITRUS_BERRY
        move MOVE_QUICK_ATTACK
        move MOVE_SHOCK_WAVE
        move MOVE_LIGHT_SCREEN
        move MOVE_LOW_KICK
        ballseal 0
    endparty

trainerdata 256, "Erika"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_LEADER_ERIKA
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | F_USE_WEATHER | 0
    battletype SINGLE_BATTLE
    endentry

    party 256
        // mon 0
        ivs 200
        abilityslot 15
        level 51
        pokemon SPECIES_JUMPLUFF
        item ITEM_NONE
        move MOVE_U_TURN
        move MOVE_LEECH_SEED
        move MOVE_SUNNY_DAY
        move MOVE_GIGA_DRAIN
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 15
        level 52
        pokemon SPECIES_TANGELA
        item ITEM_NONE
        move MOVE_ANCIENT_POWER
        move MOVE_WRING_OUT
        move MOVE_GIGA_DRAIN
        move MOVE_SLEEP_POWDER
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 15
        level 56
        pokemon SPECIES_VICTREEBEL
        item ITEM_NONE
        move MOVE_SUNNY_DAY
        move MOVE_SYNTHESIS
        move MOVE_GRASS_KNOT
        move MOVE_LEAF_STORM
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 15
        level 56
        pokemon SPECIES_BELLOSSOM
        item ITEM_SITRUS_BERRY
        move MOVE_SUNNY_DAY
        move MOVE_SYNTHESIS
        move MOVE_GIGA_DRAIN
        move MOVE_SOLAR_BEAM
        ballseal 0
    endparty

trainerdata 257, "Janine"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_LEADER_JANINE
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 257
        // mon 0
        ivs 200
        abilityslot 15
        level 47
        pokemon SPECIES_CROBAT
        item ITEM_NONE
        move MOVE_SCREECH
        move MOVE_SUPERSONIC
        move MOVE_CONFUSE_RAY
        move MOVE_WING_ATTACK
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 15
        level 44
        pokemon SPECIES_WEEZING
        item ITEM_NONE
        move MOVE_DOUBLE_HIT
        move MOVE_SLUDGE_BOMB
        move MOVE_TOXIC
        move MOVE_EXPLOSION
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 32
        level 47
        pokemon SPECIES_ARIADOS
        item ITEM_NONE
        move MOVE_SCARY_FACE
        move MOVE_POISON_JAB
        move MOVE_PIN_MISSILE
        move MOVE_PSYCHIC
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 15
        level 47
        pokemon SPECIES_ARIADOS
        item ITEM_NONE
        move MOVE_PIN_MISSILE
        move MOVE_POISON_JAB
        move MOVE_SWAGGER
        move MOVE_NIGHT_SHADE
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 15
        level 50
        pokemon SPECIES_VENOMOTH
        item ITEM_SITRUS_BERRY
        move MOVE_SLUDGE_BOMB
        move MOVE_DOUBLE_TEAM
        move MOVE_SIGNAL_BEAM
        move MOVE_PSYCHIC
        ballseal 0
    endparty

trainerdata 258, "Sabrina"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_LEADER_SABRINA
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 258
        // mon 0
        ivs 200
        abilityslot 15
        level 53
        pokemon SPECIES_ESPEON
        item ITEM_NONE
        move MOVE_SHADOW_BALL
        move MOVE_SKILL_SWAP
        move MOVE_CALM_MIND
        move MOVE_PSYCHIC
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 32
        level 53
        pokemon SPECIES_MR_MIME
        item ITEM_NONE
        move MOVE_MIMIC
        move MOVE_LIGHT_SCREEN
        move MOVE_SKILL_SWAP
        move MOVE_PSYCHIC
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 15
        level 55
        pokemon SPECIES_ALAKAZAM
        item ITEM_SITRUS_BERRY
        move MOVE_SKILL_SWAP
        move MOVE_PSYCHIC
        move MOVE_ENERGY_BALL
        move MOVE_REFLECT
        ballseal 0
    endparty

trainerdata 259, "Blaine"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_LEADER_BLAINE
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | F_USE_WEATHER | 0
    battletype SINGLE_BATTLE
    endentry

    party 259
        // mon 0
        ivs 200
        abilityslot 32
        level 54
        pokemon SPECIES_MAGCARGO
        item ITEM_WHITE_HERB
        move MOVE_SUNNY_DAY
        move MOVE_SMOG
        move MOVE_OVERHEAT
        move MOVE_ROCK_SLIDE
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 15
        level 54
        pokemon SPECIES_MAGMAR
        item ITEM_WHITE_HERB
        move MOVE_THUNDER_PUNCH
        move MOVE_OVERHEAT
        move MOVE_SUNNY_DAY
        move MOVE_CONFUSE_RAY
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 32
        level 59
        pokemon SPECIES_RAPIDASH
        item ITEM_WHITE_HERB
        move MOVE_QUICK_ATTACK
        move MOVE_FLARE_BLITZ
        move MOVE_BOUNCE
        move MOVE_OVERHEAT
        ballseal 0
    endparty

trainerdata 260, "Red"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_PKMN_TRAINER_RED
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 260
        // mon 0
        ivs 250
        abilityslot 15
        level 88
        pokemon SPECIES_PIKACHU
        item ITEM_LIGHT_BALL
        move MOVE_VOLT_TACKLE
        move MOVE_IRON_TAIL
        move MOVE_QUICK_ATTACK
        move MOVE_THUNDERBOLT
        ballseal 0

        // mon 1
        ivs 250
        abilityslot 32
        level 80
        pokemon SPECIES_LAPRAS
        item ITEM_NONE
        move MOVE_BLIZZARD
        move MOVE_BRINE
        move MOVE_PSYCHIC
        move MOVE_BODY_SLAM
        ballseal 0

        // mon 2
        ivs 250
        abilityslot 32
        level 82
        pokemon SPECIES_SNORLAX
        item ITEM_NONE
        move MOVE_SHADOW_BALL
        move MOVE_CRUNCH
        move MOVE_BLIZZARD
        move MOVE_GIGA_IMPACT
        ballseal 0

        // mon 3
        ivs 250
        abilityslot 15
        level 84
        pokemon SPECIES_VENUSAUR
        item ITEM_NONE
        move MOVE_SLUDGE_BOMB
        move MOVE_GIGA_DRAIN
        move MOVE_SLEEP_POWDER
        move MOVE_FRENZY_PLANT
        ballseal 0

        // mon 4
        ivs 250
        abilityslot 15
        level 84
        pokemon SPECIES_CHARIZARD
        item ITEM_NONE
        move MOVE_FLARE_BLITZ
        move MOVE_AIR_SLASH
        move MOVE_BLAST_BURN
        move MOVE_DRAGON_PULSE
        ballseal 0

        // mon 5
        ivs 250
        abilityslot 15
        level 84
        pokemon SPECIES_BLASTOISE
        item ITEM_NONE
        move MOVE_FOCUS_BLAST
        move MOVE_HYDRO_CANNON
        move MOVE_BLIZZARD
        move MOVE_FLASH_CANNON
        ballseal 0
    endparty

trainerdata 261, "Blue"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_LEADER_BLUE
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 261
        // mon 0
        ivs 250
        abilityslot 15
        level 55
        pokemon SPECIES_EXEGGUTOR
        item ITEM_NONE
        move MOVE_LEAF_STORM
        move MOVE_PSYCHIC
        move MOVE_HYPNOSIS
        move MOVE_TRICK_ROOM
        ballseal 0

        // mon 1
        ivs 250
        abilityslot 15
        level 58
        pokemon SPECIES_ARCANINE
        item ITEM_NONE
        move MOVE_ROAR
        move MOVE_DRAGON_PULSE
        move MOVE_FLARE_BLITZ
        move MOVE_EXTREME_SPEED
        ballseal 0

        // mon 2
        ivs 250
        abilityslot 32
        level 58
        pokemon SPECIES_RHYDON
        item ITEM_NONE
        move MOVE_MEGAHORN
        move MOVE_STONE_EDGE
        move MOVE_THUNDER_FANG
        move MOVE_EARTHQUAKE
        ballseal 0

        // mon 3
        ivs 250
        abilityslot 15
        level 52
        pokemon SPECIES_GYARADOS
        item ITEM_NONE
        move MOVE_ICE_FANG
        move MOVE_WATERFALL
        move MOVE_DRAGON_DANCE
        move MOVE_RETURN
        ballseal 0

        // mon 4
        ivs 250
        abilityslot 32
        level 56
        pokemon SPECIES_MACHAMP
        item ITEM_NONE
        move MOVE_DYNAMIC_PUNCH
        move MOVE_EARTHQUAKE
        move MOVE_STONE_EDGE
        move MOVE_THUNDER_PUNCH
        ballseal 0

        // mon 5
        ivs 250
        abilityslot 15
        level 60
        pokemon SPECIES_PIDGEOT
        item ITEM_SITRUS_BERRY
        move MOVE_RETURN
        move MOVE_HEAT_WAVE
        move MOVE_AIR_SLASH
        move MOVE_MIRROR_MOVE
        ballseal 0
    endparty

trainerdata 262, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_TEAM_ROCKET
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 262
        // mon 0
        ivs 30
        abilityslot 15
        level 25
        pokemon SPECIES_GOLBAT
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 15
        level 25
        pokemon SPECIES_GOLBAT
        ballseal 0

        // mon 2
        ivs 30
        abilityslot 15
        level 30
        pokemon SPECIES_ARBOK
        ballseal 0
    endparty

trainerdata 263, "Silver" // BT SILVER TOTO
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass TRAINERCLASS_RIVAL
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 263
        // mon 0
        ivs 255
        abilityslot 2
        level 40
        pokemon SPECIES_FORRETRESS
        item ITEM_CUSTAP_BERRY
        move MOVE_LUNGE
        move MOVE_VOLT_SWITCH
        move MOVE_EXPLOSION
        move MOVE_STEALTH_ROCK
        ball ITEM_ULTRA_BALL
        nature NATURE_ADAMANT
        additionalflags 0
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 40
        pokemon SPECIES_WEAVILE
        item ITEM_NEVER_MELT_ICE
        move MOVE_ICICLE_CRASH
        move MOVE_BITE
        move MOVE_ICE_SHARD
        move MOVE_BATON_PASS
        ball ITEM_GREAT_BALL
        nature NATURE_ADAMANT
        additionalflags 0
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 40
        pokemon SPECIES_URSARING
        item ITEM_EVIOLITE
        move MOVE_FACADE
        move MOVE_SHADOW_CLAW
        move MOVE_TRAILBLAZE
        move MOVE_SWORDS_DANCE
        ball ITEM_ULTRA_BALL
        nature NATURE_JOLLY
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 16
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 40
        pokemon SPECIES_GLISCOR
        item ITEM_LEFTOVERS
        move MOVE_EARTHQUAKE
        move MOVE_DUAL_WINGBEAT
        move MOVE_ROOST
        move MOVE_TOXIC
        ball ITEM_GREAT_BALL
        nature NATURE_CAREFUL
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 8
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 40
        pokemon SPECIES_SNEASLER
        item ITEM_PROTECTIVE_PADS
        move MOVE_CLOSE_COMBAT
        move MOVE_DIRE_CLAW
        move MOVE_FIRE_PUNCH
        move MOVE_U_TURN
        ball ITEM_GREAT_BALL
        nature NATURE_JOLLY
        additionalflags 0
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 2
        level 40
        pokemon SPECIES_MEGANIUM
        item ITEM_LEFTOVERS
        move MOVE_GIGA_DRAIN
        move MOVE_EARTH_POWER
        move MOVE_DRAINING_KISS
        move MOVE_SYNTHESIS
        ball ITEM_POKE_BALL
        nature NATURE_CALM
        additionalflags 0
        ballseal 0
    endparty

trainerdata 264, "Silver" // VR3F SILVER CYND
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass TRAINERCLASS_RIVAL
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 264
        // mon 0
        ivs 255
        abilityslot 2
        level 75
        pokemon SPECIES_GLISCOR
        item ITEM_LEFTOVERS
        move MOVE_EARTHQUAKE
        move MOVE_DUAL_WINGBEAT
        move MOVE_U_TURN
        move MOVE_ROOST
        ball ITEM_GREAT_BALL
        nature NATURE_CAREFUL
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 8
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 75
        pokemon SPECIES_RAIKOU
        item ITEM_LEFTOVERS
        move MOVE_THUNDERBOLT
        move MOVE_SCALD
        move MOVE_HURRICANE
        move MOVE_VOLT_SWITCH
        ball ITEM_MASTER_BALL
        nature NATURE_MODEST
        additionalflags 0
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 75
        pokemon SPECIES_SNEASLER
        item ITEM_EJECT_PACK
        move MOVE_CLOSE_COMBAT
        move MOVE_DIRE_CLAW
        move MOVE_SHADOW_CLAW
        move MOVE_SWORDS_DANCE
        ball ITEM_GREAT_BALL
        nature NATURE_JOLLY
        additionalflags 0
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 75
        pokemon SPECIES_TYRANITAR
        item ITEM_ASSAULT_VEST
        move MOVE_ROCK_SLIDE
        move MOVE_CRUNCH
        move MOVE_EARTHQUAKE
        move MOVE_PURSUIT
        ball ITEM_MASTER_BALL
        nature NATURE_ADAMANT
        additionalflags 0
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 75
        pokemon SPECIES_MEGANIUM
        item ITEM_LEFTOVERS
        move MOVE_FRENZY_PLANT
        move MOVE_EARTH_POWER
        move MOVE_GIGA_DRAIN
        move MOVE_SYNTHESIS
        ball ITEM_POKE_BALL
        nature NATURE_CALM
        additionalflags 0
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 15
        level 75
        pokemon SPECIES_SCIZOR
        item ITEM_SCIZORITE
        move MOVE_BULLET_PUNCH
        move MOVE_SUPERPOWER
        move MOVE_SWORDS_DANCE
        move MOVE_ROOST
        ball ITEM_CHERISH_BALL
        nature NATURE_ADAMANT
        additionalflags 0
        ballseal 0
    endparty

trainerdata 265, "Silver" // unused
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_RIVAL
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 265
        // mon 0
        ivs 0
        abilityslot 15
        level 5
        pokemon SPECIES_CHIKORITA
        ballseal 0
    endparty

trainerdata 266, "Silver" // AT SILVER CHIK
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_RIVAL    
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 266
        // mon 0
        ivs 255
        abilityslot 2
        level 30
        pokemon SPECIES_GLIGAR
        item ITEM_EVIOLITE
        move MOVE_BULLDOZE
        move MOVE_ROCK_TOMB
        move MOVE_ROOST
        move MOVE_U_TURN
        nature NATURE_CAREFUL
        ball ITEM_GREAT_BALL
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 30
        pokemon SPECIES_FURRET
        item ITEM_SILK_SCARF
        move MOVE_RETURN
        move MOVE_SUCKER_PUNCH
        move MOVE_ME_FIRST
        move MOVE_REST
        nature NATURE_ADAMANT
        ball ITEM_POKE_BALL
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 30
        pokemon SPECIES_SNEASEL
        item ITEM_EVIOLITE
        move MOVE_BITE
        move MOVE_ICICLE_CRASH
        move MOVE_ICE_SHARD
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        ball ITEM_GREAT_BALL
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 30
        monwithform SPECIES_SNEASEL, 1
        item ITEM_EVIOLITE
        move MOVE_LOW_SWEEP
        move MOVE_CROSS_POISON
        move MOVE_MACH_PUNCH
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        ball ITEM_GREAT_BALL
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 32
        level 30
        pokemon SPECIES_YANMEGA
        item ITEM_THROAT_SPRAY
        move MOVE_DRAGON_BREATH
        move MOVE_UPROAR
        move MOVE_AIR_CUTTER
        move MOVE_ANCIENT_POWER
        nature NATURE_MODEST
        ball ITEM_NET_BALL
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 2
        level 30
        pokemon SPECIES_QUILAVA
        item ITEM_EVIOLITE
        move MOVE_FLAMETHROWER
        move MOVE_EXTRASENSORY
        move MOVE_SWIFT
        move MOVE_QUICK_ATTACK
        ball ITEM_POKE_BALL
        nature NATURE_HASTY
        ballseal 0
    endparty

trainerdata 267, "Silver" // BT SILVER CHIK
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass TRAINERCLASS_RIVAL
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 267
        // mon 0
        ivs 255
        abilityslot 2
        level 40
        pokemon SPECIES_FORRETRESS
        item ITEM_CUSTAP_BERRY
        move MOVE_LUNGE
        move MOVE_VOLT_SWITCH
        move MOVE_EXPLOSION
        move MOVE_STEALTH_ROCK
        ball ITEM_ULTRA_BALL
        nature NATURE_ADAMANT
        additionalflags 0
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 40
        pokemon SPECIES_WEAVILE
        item ITEM_NEVER_MELT_ICE
        move MOVE_ICICLE_CRASH
        move MOVE_BITE
        move MOVE_ICE_SHARD
        move MOVE_BATON_PASS
        ball ITEM_GREAT_BALL
        nature NATURE_ADAMANT
        additionalflags 0
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 40
        pokemon SPECIES_URSARING
        item ITEM_EVIOLITE
        move MOVE_FACADE
        move MOVE_SHADOW_CLAW
        move MOVE_TRAILBLAZE
        move MOVE_SWORDS_DANCE
        ball ITEM_ULTRA_BALL
        nature NATURE_JOLLY
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 16
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 40
        pokemon SPECIES_GLISCOR
        item ITEM_LEFTOVERS
        move MOVE_EARTHQUAKE
        move MOVE_DUAL_WINGBEAT
        move MOVE_ROOST
        move MOVE_TOXIC
        ball ITEM_GREAT_BALL
        nature NATURE_CAREFUL
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 8
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 40
        pokemon SPECIES_SNEASLER
        item ITEM_PROTECTIVE_PADS
        move MOVE_CLOSE_COMBAT
        move MOVE_DIRE_CLAW
        move MOVE_FIRE_PUNCH
        move MOVE_U_TURN
        ball ITEM_GREAT_BALL
        nature NATURE_JOLLY
        additionalflags 0
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 2
        level 40
        pokemon SPECIES_TYPHLOSION
        item ITEM_ASSAULT_VEST
        move MOVE_FLAMETHROWER
        move MOVE_EARTH_POWER
        move MOVE_SHADOW_BALL
        move MOVE_FOCUS_BLAST
        ball ITEM_POKE_BALL
        nature NATURE_TIMID
        additionalflags 0
        ballseal 0
    endparty

trainerdata 268, "Silver" // VR3F SILVER CHIK
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass TRAINERCLASS_RIVAL
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 268
        // mon 0
        ivs 255
        abilityslot 2
        level 75
        pokemon SPECIES_GLISCOR
        item ITEM_LEFTOVERS
        move MOVE_EARTHQUAKE
        move MOVE_DUAL_WINGBEAT
        move MOVE_U_TURN
        move MOVE_ROOST
        ball ITEM_GREAT_BALL
        nature NATURE_CAREFUL
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 8
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 75
        pokemon SPECIES_RAIKOU
        item ITEM_LEFTOVERS
        move MOVE_THUNDERBOLT
        move MOVE_SCALD
        move MOVE_HURRICANE
        move MOVE_VOLT_SWITCH
        ball ITEM_MASTER_BALL
        nature NATURE_MODEST
        additionalflags 0
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 75
        pokemon SPECIES_SNEASLER
        item ITEM_EJECT_PACK
        move MOVE_CLOSE_COMBAT
        move MOVE_DIRE_CLAW
        move MOVE_SHADOW_CLAW
        move MOVE_SWORDS_DANCE
        ball ITEM_GREAT_BALL
        nature NATURE_JOLLY
        additionalflags 0
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 75
        pokemon SPECIES_TYRANITAR
        item ITEM_ASSAULT_VEST
        move MOVE_ROCK_SLIDE
        move MOVE_CRUNCH
        move MOVE_EARTHQUAKE
        move MOVE_PURSUIT
        ball ITEM_MASTER_BALL
        nature NATURE_ADAMANT
        additionalflags 0
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 75
        pokemon SPECIES_TYPHLOSION
        item ITEM_CHARCOAL
        move MOVE_BLAST_BURN
        move MOVE_SCORCHING_SANDS
        move MOVE_FLAMETHROWER
        move MOVE_SHADOW_BALL
        ball ITEM_POKE_BALL
        nature NATURE_TIMID
        additionalflags 0
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 15
        level 75
        pokemon SPECIES_SCIZOR
        item ITEM_SCIZORITE
        move MOVE_BULLET_PUNCH
        move MOVE_SUPERPOWER
        move MOVE_SWORDS_DANCE
        move MOVE_ROOST
        ball ITEM_CHERISH_BALL
        nature NATURE_ADAMANT
        additionalflags 0
        ballseal 0
    endparty

trainerdata 269, "Silver" // AT SILVER CYND
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_RIVAL
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 269
        // mon 0
        ivs 255
        abilityslot 2
        level 30
        pokemon SPECIES_GLIGAR
        item ITEM_EVIOLITE
        move MOVE_BULLDOZE
        move MOVE_ROCK_TOMB
        move MOVE_ROOST
        move MOVE_U_TURN
        nature NATURE_CAREFUL
        ball ITEM_GREAT_BALL
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 30
        pokemon SPECIES_FURRET
        item ITEM_SILK_SCARF
        move MOVE_RETURN
        move MOVE_SUCKER_PUNCH
        move MOVE_ME_FIRST
        move MOVE_REST
        nature NATURE_ADAMANT
        ball ITEM_POKE_BALL
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 30
        pokemon SPECIES_SNEASEL
        item ITEM_EVIOLITE
        move MOVE_BITE
        move MOVE_ICICLE_CRASH
        move MOVE_ICE_SHARD
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        ball ITEM_GREAT_BALL
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 30
        monwithform SPECIES_SNEASEL, 1
        item ITEM_EVIOLITE
        move MOVE_LOW_SWEEP
        move MOVE_CROSS_POISON
        move MOVE_MACH_PUNCH
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        ball ITEM_GREAT_BALL
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 32
        level 30
        pokemon SPECIES_YANMEGA
        item ITEM_THROAT_SPRAY
        move MOVE_DRAGON_BREATH
        move MOVE_UPROAR
        move MOVE_AIR_CUTTER
        move MOVE_ANCIENT_POWER
        nature NATURE_MODEST
        ball ITEM_NET_BALL
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 32
        level 30
        pokemon SPECIES_CROCONAW
        item ITEM_EVIOLITE
        move MOVE_CRUNCH
        move MOVE_ICE_FANG
        move MOVE_LOW_KICK
        move MOVE_DRAGON_DANCE
        ball ITEM_POKE_BALL
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 270, "Silver" // BT SILVER CYND
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass TRAINERCLASS_RIVAL
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 270
        // mon 0
        ivs 255
        abilityslot 2
        level 40
        pokemon SPECIES_FORRETRESS
        item ITEM_CUSTAP_BERRY
        move MOVE_LUNGE
        move MOVE_VOLT_SWITCH
        move MOVE_EXPLOSION
        move MOVE_STEALTH_ROCK
        ball ITEM_ULTRA_BALL
        nature NATURE_ADAMANT
        additionalflags 0
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 40
        pokemon SPECIES_WEAVILE
        item ITEM_NEVER_MELT_ICE
        move MOVE_ICICLE_CRASH
        move MOVE_BITE
        move MOVE_ICE_SHARD
        move MOVE_BATON_PASS
        ball ITEM_GREAT_BALL
        nature NATURE_ADAMANT
        additionalflags 0
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 40
        pokemon SPECIES_URSARING
        item ITEM_EVIOLITE
        move MOVE_FACADE
        move MOVE_SHADOW_CLAW
        move MOVE_TRAILBLAZE
        move MOVE_SWORDS_DANCE
        ball ITEM_ULTRA_BALL
        nature NATURE_JOLLY
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 16
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 40
        pokemon SPECIES_GLISCOR
        item ITEM_LEFTOVERS
        move MOVE_EARTHQUAKE
        move MOVE_DUAL_WINGBEAT
        move MOVE_ROOST
        move MOVE_TOXIC
        ball ITEM_GREAT_BALL
        nature NATURE_CAREFUL
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 8
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 40
        pokemon SPECIES_SNEASLER
        item ITEM_PROTECTIVE_PADS
        move MOVE_CLOSE_COMBAT
        move MOVE_DIRE_CLAW
        move MOVE_FIRE_PUNCH
        move MOVE_U_TURN
        ball ITEM_GREAT_BALL
        nature NATURE_JOLLY
        additionalflags 0
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 32
        level 40
        pokemon SPECIES_FERALIGATR
        item ITEM_LIFE_ORB
        move MOVE_LIQUIDATION
        move MOVE_CRUNCH
        move MOVE_ICE_PUNCH
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        ball ITEM_POKE_BALL
        additionalflags 0
        ballseal 0
    endparty

trainerdata 271, "Silver" // GTB2F SILVER CYND
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass TRAINERCLASS_RIVAL
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 271
        // mon 0
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_RAIKOU
        item ITEM_LEFTOVERS
        move MOVE_THUNDERBOLT
        move MOVE_DRAGON_PULSE
        move MOVE_SCALD
        move MOVE_VOLT_SWITCH
        ball ITEM_MASTER_BALL
        nature NATURE_TIMID
        additionalflags 0
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_GLISCOR
        item ITEM_LEFTOVERS
        move MOVE_EARTHQUAKE
        move MOVE_DUAL_WINGBEAT
        move MOVE_U_TURN
        move MOVE_TOXIC_SPIKES
        ball ITEM_GREAT_BALL
        nature NATURE_CAREFUL
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 8
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 66
        pokemon SPECIES_UMBREON
        item ITEM_CLEAR_AMULET
        move MOVE_FOUL_PLAY
        move MOVE_CURSE
        move MOVE_WISH
        move MOVE_BATON_PASS
        ball ITEM_ULTRA_BALL
        nature NATURE_IMPISH
        additionalflags 0
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_SNEASLER
        item ITEM_EJECT_PACK
        move MOVE_CLOSE_COMBAT
        move MOVE_DIRE_CLAW
        move MOVE_VENOSHOCK
        move MOVE_U_TURN
        ball ITEM_GREAT_BALL
        nature NATURE_JOLLY
        additionalflags 0
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_FERALIGATR
        item ITEM_LEFTOVERS
        move MOVE_FISHIOUS_REND
        move MOVE_CRUNCH
        move MOVE_PSYCHIC_FANGS
        move MOVE_AGILITY
        ball ITEM_POKE_BALL
        nature NATURE_ADAMANT
        additionalflags 0
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 15
        level 66
        pokemon SPECIES_SCIZOR
        item ITEM_SCIZORITE
        move MOVE_BULLET_PUNCH
        move MOVE_SUPERPOWER
        move MOVE_SWORDS_DANCE
        move MOVE_ROOST
        ball ITEM_CHERISH_BALL
        nature NATURE_ADAMANT
        additionalflags 0
        ballseal 0
    endparty

trainerdata 272, "Silver" // VR3F SILVER CYND
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass TRAINERCLASS_RIVAL
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 272
        // mon 0
        ivs 255
        abilityslot 2
        level 75
        pokemon SPECIES_GLISCOR
        item ITEM_LEFTOVERS
        move MOVE_EARTHQUAKE
        move MOVE_DUAL_WINGBEAT
        move MOVE_U_TURN
        move MOVE_ROOST
        ball ITEM_GREAT_BALL
        nature NATURE_CAREFUL
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 8
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 75
        pokemon SPECIES_RAIKOU
        item ITEM_LEFTOVERS
        move MOVE_THUNDERBOLT
        move MOVE_SCALD
        move MOVE_HURRICANE
        move MOVE_VOLT_SWITCH
        ball ITEM_MASTER_BALL
        nature NATURE_MODEST
        additionalflags 0
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 75
        pokemon SPECIES_SNEASLER
        item ITEM_EJECT_PACK
        move MOVE_CLOSE_COMBAT
        move MOVE_DIRE_CLAW
        move MOVE_SHADOW_CLAW
        move MOVE_SWORDS_DANCE
        ball ITEM_GREAT_BALL
        nature NATURE_JOLLY
        additionalflags 0
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 75
        pokemon SPECIES_TYRANITAR
        item ITEM_ASSAULT_VEST
        move MOVE_ROCK_SLIDE
        move MOVE_CRUNCH
        move MOVE_EARTHQUAKE
        move MOVE_PURSUIT
        ball ITEM_MASTER_BALL
        nature NATURE_ADAMANT
        additionalflags 0
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 75
        pokemon SPECIES_FERALIGATR
        item ITEM_MYSTIC_WATER
        move MOVE_HYDRO_CANNON
        move MOVE_ICE_FANG
        move MOVE_FISHIOUS_REND
        move MOVE_DRAGON_DANCE
        ball ITEM_POKE_BALL
        nature NATURE_ADAMANT
        additionalflags 0
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 15
        level 75
        pokemon SPECIES_SCIZOR
        item ITEM_SCIZORITE
        move MOVE_BULLET_PUNCH
        move MOVE_SUPERPOWER
        move MOVE_SWORDS_DANCE
        move MOVE_ROOST
        ball ITEM_CHERISH_BALL
        nature NATURE_ADAMANT
        additionalflags 0
        ballseal 0
    endparty

trainerdata 273, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SWIMMER_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 273
        // mon 0
        ivs 0
        abilityslot 15
        level 13
        pokemon SPECIES_STARYU
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 18
        pokemon SPECIES_STARMIE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 16
        pokemon SPECIES_HORSEA
        ballseal 0
    endparty

trainerdata 274, "Todd"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_CAMPER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 274
        // mon 0
        ivs 0
        abilityslot 15
        level 17
        pokemon SPECIES_GEODUDE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 17
        pokemon SPECIES_GEODUDE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 31
        pokemon SPECIES_PSYDUCK
        ballseal 0
    endparty

trainerdata 275, "Todd"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_CAMPER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 275
        // mon 0
        ivs 0
        abilityslot 15
        level 23
        pokemon SPECIES_GEODUDE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 33
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 36
        pokemon SPECIES_GOLDUCK
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 15
        level 32
        pokemon SPECIES_SLUGMA
        ballseal 0
    endparty

trainerdata 276, "Liz"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_PICNICKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 276
        // mon 0
        ivs 0
        abilityslot 15
        level 35
        pokemon SPECIES_WEEPINBELL
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 38
        pokemon SPECIES_NIDORINA
        ballseal 0
    endparty

trainerdata 277, "Liz"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_PICNICKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 277
        // mon 0
        ivs 0
        abilityslot 15
        level 39
        pokemon SPECIES_WEEPINBELL
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 38
        pokemon SPECIES_NIDORINO
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 40
        pokemon SPECIES_NIDOQUEEN
        ballseal 0
    endparty

trainerdata 278, "Kenji"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BLACK_BELT
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 278
        // mon 0
        ivs 30
        abilityslot 15
        level 30
        pokemon SPECIES_ONIX
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 15
        level 37
        pokemon SPECIES_MACHAMP
        ballseal 0

        // mon 2
        ivs 30
        abilityslot 15
        level 33
        pokemon SPECIES_ONIX
        ballseal 0

        // mon 3
        ivs 30
        abilityslot 15
        level 41
        pokemon SPECIES_HITMONLEE
        ballseal 0
    endparty

trainerdata 279, "Joey" // REMATCH 1
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass TRAINERCLASS_YOUNGSTER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 279
        // mon 0
        ivs 255
        abilityslot 32
        level 66
        pokemon SPECIES_RATICATE
        item ITEM_SILK_SCARF
        move MOVE_FACADE
        move MOVE_THROAT_CHOP
        move MOVE_FLAME_WHEEL
        move MOVE_QUICK_ATTACK
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 252, 252, 252, 252, 0, 252 
        nature NATURE_ADAMANT
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 16
        ballseal 0
    endparty

trainerdata 280, "Joey" // REMATCH 2
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass TRAINERCLASS_YOUNGSTER
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 280
        // mon 0
        ivs 255
        abilityslot 32
        level 66
        pokemon SPECIES_RATICATE
        item ITEM_SILK_SCARF
        move MOVE_FACADE
        move MOVE_THROAT_CHOP
        move MOVE_FLAME_WHEEL
        move MOVE_QUICK_ATTACK
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 252, 252, 252, 252, 0, 252 
        nature NATURE_ADAMANT
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 16
        ballseal 0
    endparty

trainerdata 281, "Richard"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_FIREBREATHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 281
        // mon 0
        ivs 255
        abilityslot 15
        level 42
        pokemon SPECIES_CHARMELEON
        item ITEM_EVIOLITE
        move MOVE_FLAMETHROWER
        move MOVE_DRAGON_BREATH
        move MOVE_ANCIENT_POWER
        move MOVE_WORK_UP
        nature NATURE_TIMID
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 42
        pokemon SPECIES_HEATMOR
        item ITEM_MUSCLE_BAND
        move MOVE_FIRE_PUNCH
        move MOVE_STOMPING_TANTRUM
        move MOVE_DRAIN_PUNCH
        move MOVE_THUNDER_PUNCH
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 282, "Ned"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_FIREBREATHER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 282
        // mon 0
        ivs 255
        abilityslot 15
        level 41
        pokemon SPECIES_TORKOAL
        item ITEM_WHITE_HERB
        move MOVE_FLAMETHROWER
        move MOVE_CLEAR_SMOG
        move MOVE_PROTECT
        move MOVE_OVERHEAT
        nature NATURE_MODEST
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 41
        pokemon SPECIES_WEEZING
        item ITEM_CUSTAP_BERRY
        move MOVE_SLUDGE_BOMB
        move MOVE_HEAT_WAVE
        move MOVE_TOXIC
        move MOVE_EXPLOSION
        nature NATURE_RELAXED
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 41
        pokemon SPECIES_ARCANINE
        item ITEM_WHITE_HERB
        move MOVE_FIRE_FANG
        move MOVE_CRUNCH
        move MOVE_EXTREME_SPEED
        move MOVE_OVERHEAT
        nature NATURE_HASTY
        ballseal 0
    endparty

trainerdata 283, "Orson"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_BURGLAR
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 283
        // mon 0
        ivs 255
        abilityslot 15
        level 66
        pokemon SPECIES_CHARIZARD
        item ITEM_CHARIZARDITE_Y
        move MOVE_HEAT_WAVE
        move MOVE_SOLAR_BEAM
        move MOVE_DRAGON_PULSE
        move MOVE_THUNDER_PUNCH
        nature NATURE_TIMID
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 66
        monwithform SPECIES_EEVEE, 1
        item ITEM_LIGHT_CLAY
        move MOVE_VEEVEE_VOLLEY
        move MOVE_GLITZY_GLOW
        move MOVE_BADDY_BAD
        move MOVE_QUICK_ATTACK
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_ARMAROUGE
        item ITEM_CHARCOAL
        move MOVE_HEAT_WAVE
        move MOVE_PSYCHIC
        move MOVE_SOLAR_BEAM
        move MOVE_DARK_PULSE
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 284, "Corey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BURGLAR
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 284
        // mon 0
        ivs 0
        abilityslot 15
        level 33
        pokemon SPECIES_KOFFING
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 36
        pokemon SPECIES_MAGMAR
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 33
        pokemon SPECIES_KOFFING
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 15
        level 38
        pokemon SPECIES_KOFFING
        ballseal 0
    endparty

trainerdata 285, "Silver"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_RIVAL
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 285
        // mon 0
        ivs 200
        abilityslot 15
        level 46
        pokemon SPECIES_SNEASEL
        move MOVE_QUICK_ATTACK
        move MOVE_ICY_WIND
        move MOVE_FEINT_ATTACK
        move MOVE_SHADOW_CLAW
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 15
        level 47
        pokemon SPECIES_GOLBAT
        move MOVE_POISON_FANG
        move MOVE_BITE
        move MOVE_CONFUSE_RAY
        move MOVE_AIR_CUTTER
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 15
        level 46
        pokemon SPECIES_MAGNETON
        move MOVE_DISCHARGE
        move MOVE_SUPERSONIC
        move MOVE_THUNDER_WAVE
        move MOVE_MAGNET_BOMB
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 15
        level 48
        pokemon SPECIES_GENGAR
        move MOVE_MEAN_LOOK
        move MOVE_CURSE
        move MOVE_SHADOW_BALL
        move MOVE_CONFUSE_RAY
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 15
        level 48
        pokemon SPECIES_ALAKAZAM
        move MOVE_DISABLE
        move MOVE_RECOVER
        move MOVE_REFLECT
        move MOVE_PSYCHIC
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 15
        level 50
        pokemon SPECIES_MEGANIUM
        move MOVE_PETAL_DANCE
        move MOVE_POISON_POWDER
        move MOVE_SYNTHESIS
        move MOVE_LIGHT_SCREEN
        ballseal 0
    endparty

trainerdata 286, "Silver"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_RIVAL
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 286
        // mon 0
        ivs 200
        abilityslot 15
        level 46
        pokemon SPECIES_SNEASEL
        move MOVE_QUICK_ATTACK
        move MOVE_ICY_WIND
        move MOVE_FEINT_ATTACK
        move MOVE_SHADOW_CLAW
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 15
        level 47
        pokemon SPECIES_GOLBAT
        move MOVE_POISON_FANG
        move MOVE_BITE
        move MOVE_CONFUSE_RAY
        move MOVE_AIR_CUTTER
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 15
        level 46
        pokemon SPECIES_MAGNETON
        move MOVE_DISCHARGE
        move MOVE_SUPERSONIC
        move MOVE_THUNDER_WAVE
        move MOVE_MAGNET_BOMB
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 15
        level 48
        pokemon SPECIES_GENGAR
        move MOVE_MEAN_LOOK
        move MOVE_CURSE
        move MOVE_SHADOW_BALL
        move MOVE_CONFUSE_RAY
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 15
        level 48
        pokemon SPECIES_ALAKAZAM
        move MOVE_DISABLE
        move MOVE_RECOVER
        move MOVE_REFLECT
        move MOVE_PSYCHIC
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 15
        level 50
        pokemon SPECIES_TYPHLOSION
        move MOVE_FLAMETHROWER
        move MOVE_QUICK_ATTACK
        move MOVE_FLAME_WHEEL
        move MOVE_SWIFT
        ballseal 0
    endparty

trainerdata 287, "Silver"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_RIVAL
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 287
        // mon 0
        ivs 200
        abilityslot 15
        level 46
        pokemon SPECIES_SNEASEL
        move MOVE_QUICK_ATTACK
        move MOVE_ICY_WIND
        move MOVE_FEINT_ATTACK
        move MOVE_SHADOW_CLAW
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 15
        level 47
        pokemon SPECIES_GOLBAT
        move MOVE_POISON_FANG
        move MOVE_BITE
        move MOVE_CONFUSE_RAY
        move MOVE_AIR_CUTTER
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 15
        level 46
        pokemon SPECIES_MAGNETON
        move MOVE_DISCHARGE
        move MOVE_SUPERSONIC
        move MOVE_THUNDER_WAVE
        move MOVE_MAGNET_BOMB
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 15
        level 48
        pokemon SPECIES_GENGAR
        move MOVE_MEAN_LOOK
        move MOVE_CURSE
        move MOVE_SHADOW_BALL
        move MOVE_CONFUSE_RAY
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 15
        level 48
        pokemon SPECIES_ALAKAZAM
        move MOVE_DISABLE
        move MOVE_RECOVER
        move MOVE_REFLECT
        move MOVE_PSYCHIC
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 15
        level 50
        pokemon SPECIES_FERALIGATR
        move MOVE_WATERFALL
        move MOVE_ICE_FANG
        move MOVE_CRUNCH
        move MOVE_SLASH
        ballseal 0
    endparty

trainerdata 288, "Silver" // GTB2F SILVER TOTO
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass TRAINERCLASS_RIVAL
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 288
        // mon 0
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_RAIKOU
        item ITEM_LEFTOVERS
        move MOVE_THUNDERBOLT
        move MOVE_DRAGON_PULSE
        move MOVE_SCALD
        move MOVE_VOLT_SWITCH
        ball ITEM_MASTER_BALL
        nature NATURE_TIMID
        additionalflags 0
        ballseal 0    
        
        // mon 1        
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_GLISCOR
        item ITEM_LEFTOVERS
        move MOVE_EARTHQUAKE
        move MOVE_DUAL_WINGBEAT
        move MOVE_U_TURN
        move MOVE_TOXIC_SPIKES
        ball ITEM_GREAT_BALL
        nature NATURE_CAREFUL
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 8
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 66
        pokemon SPECIES_UMBREON
        item ITEM_CLEAR_AMULET
        move MOVE_FOUL_PLAY
        move MOVE_CURSE
        move MOVE_WISH
        move MOVE_BATON_PASS
        ball ITEM_ULTRA_BALL
        nature NATURE_IMPISH
        additionalflags 0
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_SNEASLER
        item ITEM_EJECT_PACK
        move MOVE_CLOSE_COMBAT
        move MOVE_DIRE_CLAW
        move MOVE_VENOSHOCK
        move MOVE_U_TURN
        ball ITEM_GREAT_BALL
        nature NATURE_JOLLY
        additionalflags 0
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 32
        level 66
        pokemon SPECIES_MEGANIUM
        item ITEM_LEFTOVERS
        move MOVE_GIGA_DRAIN
        move MOVE_KNOCK_OFF
        move MOVE_DRAGON_TAIL
        move MOVE_SYNTHESIS
        ball ITEM_POKE_BALL
        nature NATURE_CALM
        additionalflags 0
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 15
        level 66
        pokemon SPECIES_SCIZOR
        item ITEM_SCIZORITE
        move MOVE_BULLET_PUNCH
        move MOVE_SUPERPOWER
        move MOVE_SWORDS_DANCE
        move MOVE_ROOST
        ball ITEM_CHERISH_BALL
        nature NATURE_ADAMANT
        additionalflags 0
        ballseal 0
    endparty

trainerdata 289, "Silver" // GTB2F SILVER CHIK
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass TRAINERCLASS_RIVAL
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 289
        // mon 0
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_RAIKOU
        item ITEM_LEFTOVERS
        move MOVE_THUNDERBOLT
        move MOVE_DRAGON_PULSE
        move MOVE_SCALD
        move MOVE_VOLT_SWITCH
        ball ITEM_MASTER_BALL
        nature NATURE_TIMID
        additionalflags 0
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_GLISCOR
        item ITEM_LEFTOVERS
        move MOVE_EARTHQUAKE
        move MOVE_DUAL_WINGBEAT
        move MOVE_U_TURN
        move MOVE_TOXIC_SPIKES
        ball ITEM_GREAT_BALL
        nature NATURE_CAREFUL
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 8
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 66
        pokemon SPECIES_UMBREON
        item ITEM_CLEAR_AMULET
        move MOVE_FOUL_PLAY
        move MOVE_CURSE
        move MOVE_WISH
        move MOVE_BATON_PASS
        ball ITEM_ULTRA_BALL
        nature NATURE_IMPISH
        additionalflags 0
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_SNEASLER
        item ITEM_EJECT_PACK
        move MOVE_CLOSE_COMBAT
        move MOVE_DIRE_CLAW
        move MOVE_VENOSHOCK
        move MOVE_U_TURN
        ball ITEM_GREAT_BALL
        nature NATURE_JOLLY
        additionalflags 0
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 32
        level 66
        pokemon SPECIES_TYPHLOSION
        item ITEM_ASSAULT_VEST
        move MOVE_ERUPTION
        move MOVE_FLARE_BLITZ
        move MOVE_PLAY_ROUGH
        move MOVE_THROAT_CHOP
        ball ITEM_POKE_BALL
        nature NATURE_TIMID
        additionalflags 0
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 15
        level 66
        pokemon SPECIES_SCIZOR
        item ITEM_SCIZORITE
        move MOVE_BULLET_PUNCH
        move MOVE_SUPERPOWER
        move MOVE_SWORDS_DANCE
        move MOVE_ROOST
        ball ITEM_CHERISH_BALL
        nature NATURE_ADAMANT
        additionalflags 0
        ballseal 0
    endparty

trainerdata 290, "Li"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS | TRAINER_DATA_TYPE_SHINY_LOCK
    trainerclass TRAINERCLASS_ELDER
    nummons 0x80 | 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | F_USE_WEATHER | F_DOUBLE_BATTLE | 0
    battletype DOUBLE_BATTLE
    endentry

    party 290
        // mon 0
        ivs 255
        abilityslot 15
        level 15
        pokemon SPECIES_BELLSPROUT
        item ITEM_OCCA_BERRY
        move MOVE_MAGICAL_LEAF
        move MOVE_WEATHER_BALL
        move MOVE_ACID_SPRAY
        move MOVE_GROWTH
        nature NATURE_MODEST
        shinylock 1
        additionalflags 0
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 15
        pokemon SPECIES_WOBBUFFET
        item ITEM_LEFTOVERS
        move MOVE_COUNTER
        move MOVE_MIRROR_COAT
        move MOVE_CHARM
        move MOVE_ENCORE
        nature NATURE_CALM
        shinylock 0
        additionalflags 0
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 15
        pokemon SPECIES_MISDREAVUS
        item ITEM_SPELL_TAG
        move MOVE_OMINOUS_WIND
        move MOVE_DRAINING_KISS
        move MOVE_SHADOW_SNEAK
        move MOVE_GRASS_KNOT
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 15
        pokemon SPECIES_DRATINI
        item ITEM_EVIOLITE
        move MOVE_DRAGON_RAGE
        move MOVE_INCINERATE
        move MOVE_EXTREME_SPEED
        move MOVE_REST
        nature NATURE_IMPISH
        shinylock 0
        additionalflags 0
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 15
        level 15
        pokemon SPECIES_LARVITAR
        item ITEM_EVIOLITE
        move MOVE_ROCK_SLIDE
        move MOVE_STOMPING_TANTRUM
        move MOVE_FACADE
        move MOVE_PURSUIT
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 16
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 32
        level 15
        pokemon SPECIES_SUNFLORA
        item ITEM_OCCA_BERRY
        move MOVE_MEGA_DRAIN
        move MOVE_WEATHER_BALL
        move MOVE_GRASS_WHISTLE
        move MOVE_FLOWER_SHIELD
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0
        ballseal 0
    endparty

trainerdata 291, "Debbie"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SWIMMER_F
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 291
        // mon 0
        ivs 0
        abilityslot 15
        level 46
        pokemon SPECIES_CLAMPERL
        ballseal 0
    endparty

trainerdata 292, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SWIMMER_F
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 292
        // mon 0
        ivs 0
        abilityslot 15
        level 20
        pokemon SPECIES_SEAKING
        ballseal 0
    endparty

trainerdata 293, "Nicole"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SWIMMER_F
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 293
        // mon 0
        ivs 0
        abilityslot 32
        level 39
        pokemon SPECIES_MARILL
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 39
        pokemon SPECIES_MARILL
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 42
        pokemon SPECIES_LAPRAS
        ballseal 0
    endparty

trainerdata 294, "Lori"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_SWIMMER_F
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 294
        // mon 0
        ivs 0
        abilityslot 32
        level 42
        pokemon SPECIES_STARMIE
        move MOVE_THUNDERBOLT
        move MOVE_SURF
        move MOVE_ICE_BEAM
        move MOVE_RECOVER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 42
        pokemon SPECIES_STARMIE
        move MOVE_THUNDERBOLT
        move MOVE_SURF
        move MOVE_ICE_BEAM
        move MOVE_RECOVER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 42
        pokemon SPECIES_STARMIE
        move MOVE_RECOVER
        move MOVE_WATER_PULSE
        move MOVE_THUNDER
        move MOVE_BLIZZARD
        ballseal 0
    endparty

trainerdata 295, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SWIMMER_F
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 295
        // mon 0
        ivs 0
        abilityslot 15
        level 20
        pokemon SPECIES_SEAKING
        ballseal 0
    endparty

trainerdata 296, "Nikki"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SWIMMER_F
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 296
        // mon 0
        ivs 0
        abilityslot 15
        level 37
        pokemon SPECIES_SEEL
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 42
        pokemon SPECIES_DEWGONG
        ballseal 0
    endparty

trainerdata 297, "Diana"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_SWIMMER_F
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 297
        // mon 0
        ivs 0
        abilityslot 32
        level 48
        pokemon SPECIES_GOLDUCK
        move MOVE_WATER_PULSE
        move MOVE_ZEN_HEADBUTT
        move MOVE_PSYCH_UP
        move MOVE_DISABLE
        ballseal 0
    endparty

trainerdata 298, "Briana"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_SWIMMER_F
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 298
        // mon 0
        ivs 0
        abilityslot 32
        level 46
        pokemon SPECIES_SEAKING
        move MOVE_WATER_PULSE
        move MOVE_AQUA_RING
        move MOVE_SUPERSONIC
        move MOVE_POISON_JAB
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 46
        pokemon SPECIES_SEAKING
        move MOVE_WATER_PULSE
        move MOVE_AQUA_RING
        move MOVE_SUPERSONIC
        move MOVE_POISON_JAB
        ballseal 0
    endparty

trainerdata 299, "Hank"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIRD_KEEPER_GS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 299
        // mon 0
        ivs 50
        abilityslot 15
        level 13
        pokemon SPECIES_PIDGEY
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 32
        level 44
        pokemon SPECIES_PIDGEOT
        ballseal 0
    endparty

trainerdata 300, "Roy"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIRD_KEEPER_GS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 300
        // mon 0
        ivs 50
        abilityslot 15
        level 38
        pokemon SPECIES_FEAROW
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 15
        level 44
        pokemon SPECIES_FEAROW
        ballseal 0
    endparty

trainerdata 301, "Boris"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIRD_KEEPER_GS
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 301
        // mon 0
        ivs 50
        abilityslot 32
        level 39
        pokemon SPECIES_DODUO
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 32
        level 37
        pokemon SPECIES_DODUO
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 32
        level 41
        pokemon SPECIES_DODRIO
        ballseal 0
    endparty

trainerdata 302, "Bob"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIRD_KEEPER_GS
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 302
        // mon 0
        ivs 50
        abilityslot 15
        level 48
        pokemon SPECIES_NOCTOWL
        ballseal 0
    endparty

trainerdata 303, "Jose"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIRD_KEEPER_GS
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 303
        // mon 0
        ivs 50
        abilityslot 15
        level 44
        pokemon SPECIES_FARFETCHD
        ballseal 0
    endparty

trainerdata 304, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_CAMPER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 304
        // mon 0
        ivs 0
        abilityslot 15
        level 33
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 36
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_GOLBAT
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 15
        level 42
        pokemon SPECIES_GOLDUCK
        ballseal 0
    endparty

trainerdata 305, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_CAMPER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 305
        // mon 0
        ivs 0
        abilityslot 15
        level 33
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 36
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_GOLBAT
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 15
        level 42
        pokemon SPECIES_GOLDUCK
        ballseal 0
    endparty

trainerdata 306, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_CAMPER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 306
        // mon 0
        ivs 0
        abilityslot 15
        level 33
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 36
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_GOLBAT
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 15
        level 42
        pokemon SPECIES_GOLDUCK
        ballseal 0
    endparty

trainerdata 307, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_CAMPER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 307
        // mon 0
        ivs 0
        abilityslot 15
        level 33
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 36
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_GOLBAT
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 15
        level 42
        pokemon SPECIES_GOLDUCK
        ballseal 0
    endparty

trainerdata 308, "Jerry"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_CAMPER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 308
        // mon 0
        ivs 80
        abilityslot 32
        level 50
        pokemon SPECIES_RHYDON
        move MOVE_ROCK_SLIDE
        move MOVE_AVALANCHE
        move MOVE_HAMMER_ARM
        move MOVE_TAKE_DOWN
        ballseal 0
    endparty

trainerdata 309, "Dwayne"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIKER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 309
        // mon 0
        ivs 0
        abilityslot 15
        level 38
        pokemon SPECIES_KOFFING
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 39
        pokemon SPECIES_KOFFING
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_KOFFING
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 15
        level 41
        pokemon SPECIES_KOFFING
        ballseal 0
    endparty

trainerdata 310, "Harris"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIKER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 310
        // mon 0
        ivs 0
        abilityslot 15
        level 45
        pokemon SPECIES_FLAREON
        ballseal 0
    endparty

trainerdata 311, "Zeke"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 311
        // mon 0
        ivs 0
        abilityslot 15
        level 43
        pokemon SPECIES_KOFFING
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 43
        pokemon SPECIES_KOFFING
        ballseal 0
    endparty

trainerdata 312, "Charles"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 312
        // mon 0
        ivs 0
        abilityslot 15
        level 41
        pokemon SPECIES_KOFFING
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 41
        pokemon SPECIES_CHARMELEON
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 42
        pokemon SPECIES_WEEZING
        ballseal 0
    endparty

trainerdata 313, "Reese"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIKER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 313
        // mon 0
        ivs 0
        abilityslot 15
        level 45
        pokemon SPECIES_WEEZING
        ballseal 0
    endparty

trainerdata 314, "Joel"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 314
        // mon 0
        ivs 0
        abilityslot 15
        level 43
        pokemon SPECIES_MAGMAR
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 43
        pokemon SPECIES_MAGMAR
        ballseal 0
    endparty

trainerdata 315, "Glenn"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 315
        // mon 0
        ivs 0
        abilityslot 15
        level 39
        pokemon SPECIES_KOFFING
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 41
        pokemon SPECIES_MAGMAR
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 43
        pokemon SPECIES_WEEZING
        ballseal 0
    endparty

trainerdata 316, "Herman"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_PSYCHIC_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 316
        // mon 0
        ivs 0
        abilityslot 15
        level 39
        pokemon SPECIES_EXEGGCUTE
        move MOVE_PSYCHIC
        move MOVE_HYPNOSIS
        move MOVE_BARRAGE
        move MOVE_DREAM_EATER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 39
        pokemon SPECIES_EXEGGCUTE
        move MOVE_PSYCHIC
        move MOVE_HYPNOSIS
        move MOVE_BARRAGE
        move MOVE_DREAM_EATER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 39
        pokemon SPECIES_EXEGGUTOR
        move MOVE_PSYCHIC
        move MOVE_HYPNOSIS
        move MOVE_WOOD_HAMMER
        move MOVE_DREAM_EATER
        ballseal 0
    endparty

trainerdata 317, "Fidel"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_PSYCHIC_M
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 317
        // mon 0
        ivs 0
        abilityslot 32
        level 43
        pokemon SPECIES_XATU
        move MOVE_FUTURE_SIGHT
        move MOVE_PSYCHO_SHIFT
        move MOVE_CONFUSE_RAY
        move MOVE_ME_FIRST
        ballseal 0
    endparty

trainerdata 318, "Burt"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_FIREBREATHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 318
        // mon 0
        ivs 0
        abilityslot 15
        level 42
        pokemon SPECIES_WEEZING
        move MOVE_FLAMETHROWER
        move MOVE_EXPLOSION
        move MOVE_DOUBLE_HIT
        move MOVE_SLUDGE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 45
        pokemon SPECIES_MAGCARGO
        move MOVE_LAVA_PLUME
        move MOVE_AMNESIA
        move MOVE_ANCIENT_POWER
        move MOVE_RECOVER
        ballseal 0
    endparty

trainerdata 319, "Bill"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_FIREBREATHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 319
        // mon 0
        ivs 255
        abilityslot 15
        level 23
        pokemon SPECIES_KOFFING
        move MOVE_SLUDGE
        move MOVE_GYRO_BALL
        move MOVE_SELF_DESTRUCT
        move MOVE_POISON_GAS
        nature NATURE_BRAVE
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 23
        pokemon SPECIES_MAGBY
        move MOVE_FIRE_SPIN
        move MOVE_CLEAR_SMOG
        move MOVE_FEINT_ATTACK
        move MOVE_LOW_KICK
        nature NATURE_HASTY
        ballseal 0
    endparty

trainerdata 320, "Martin"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_FISHERMAN
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 320
        // mon 0
        ivs 0
        abilityslot 15
        level 36
        pokemon SPECIES_REMORAID
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 42
        pokemon SPECIES_OCTILLERY
        ballseal 0
    endparty

trainerdata 321, "Stephen"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_FISHERMAN
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 321
        // mon 0
        ivs 0
        abilityslot 15
        level 43
        pokemon SPECIES_QUAGSIRE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 38
        pokemon SPECIES_QWILFISH
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 38
        pokemon SPECIES_TENTACRUEL
        ballseal 0
    endparty

trainerdata 322, "Barney"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_FISHERMAN
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 322
        // mon 0
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_GYARADOS
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 37
        pokemon SPECIES_GYARADOS
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 37
        pokemon SPECIES_GYARADOS
        ballseal 0
    endparty

trainerdata 323, "Tully"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_FISHERMAN
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 323
        // mon 0
        ivs 0
        abilityslot 15
        level 33
        pokemon SPECIES_QWILFISH
        ballseal 0
    endparty

trainerdata 324, "Tully"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_FISHERMAN
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 324
        // mon 0
        ivs 0
        abilityslot 15
        level 30
        pokemon SPECIES_GOLDEEN
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 30
        pokemon SPECIES_GOLDEEN
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 38
        pokemon SPECIES_QWILFISH
        ballseal 0
    endparty

trainerdata 325, "Wilton"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_FISHERMAN
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 325
        // mon 0
        ivs 0
        abilityslot 15
        level 32
        pokemon SPECIES_GOLDEEN
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 32
        pokemon SPECIES_GOLDEEN
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 36
        pokemon SPECIES_SEAKING
        ballseal 0
    endparty

trainerdata 326, "Jo & Zoe"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_TWINS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 326
        // mon 0
        ivs 0
        abilityslot 15
        level 47
        pokemon SPECIES_VICTREEBEL
        move MOVE_GIGA_DRAIN
        move MOVE_SLEEP_POWDER
        move MOVE_SLUDGE_BOMB
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 47
        pokemon SPECIES_VILEPLUME
        move MOVE_GIGA_DRAIN
        move MOVE_STUN_SPORE
        move MOVE_DRAIN_PUNCH
        move MOVE_ATTRACT
        ballseal 0
    endparty

trainerdata 327, "Danny"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SCHOOL_KID_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 327
        // mon 0
        ivs 0
        abilityslot 32
        level 43
        pokemon SPECIES_JYNX
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 43
        pokemon SPECIES_ELECTABUZZ
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 43
        pokemon SPECIES_MAGMAR
        ballseal 0
    endparty

trainerdata 328, "Tommy"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_SCHOOL_KID_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 328
        // mon 0
        ivs 0
        abilityslot 15
        level 41
        pokemon SPECIES_XATU
        move MOVE_CONFUSE_RAY
        move MOVE_NIGHT_SHADE
        move MOVE_FLY
        move MOVE_PSYCHIC
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 43
        pokemon SPECIES_ALAKAZAM
        move MOVE_PSYCHIC
        move MOVE_CALM_MIND
        move MOVE_REFLECT
        move MOVE_FOCUS_BLAST
        ballseal 0
    endparty

trainerdata 329, "Dudley"
    trainermontype TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_SCHOOL_KID_M
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 329
        // mon 0
        ivs 0
        abilityslot 15
        level 45
        pokemon SPECIES_ODDISH
        item ITEM_SITRUS_BERRY
        ballseal 0
    endparty

trainerdata 330, "Joe"
    trainermontype TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_SCHOOL_KID_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 330
        // mon 0
        ivs 0
        abilityslot 15
        level 44
        pokemon SPECIES_TANGELA
        item ITEM_SITRUS_BERRY
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 42
        pokemon SPECIES_VAPOREON
        item ITEM_NONE
        ballseal 0
    endparty

trainerdata 331, "Billy"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SCHOOL_KID_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 331
        // mon 0
        ivs 0
        abilityslot 32
        level 39
        pokemon SPECIES_PARASECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 37
        pokemon SPECIES_POLIWHIRL
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 35
        pokemon SPECIES_DITTO
        ballseal 0
    endparty

trainerdata 332, "Heidi"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_PICNICKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 332
        // mon 0
        ivs 0
        abilityslot 32
        level 43
        pokemon SPECIES_SKIPLOOM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 43
        pokemon SPECIES_SKIPLOOM
        ballseal 0
    endparty

trainerdata 333, "Edna"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_PICNICKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 333
        // mon 0
        ivs 0
        abilityslot 32
        level 41
        pokemon SPECIES_NIDORINA
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 45
        pokemon SPECIES_RAICHU
        ballseal 0
    endparty

trainerdata 334, "Gina"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_PICNICKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 334
        // mon 0
        ivs 0
        abilityslot 15
        level 26
        pokemon SPECIES_SKIPLOOM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 26
        pokemon SPECIES_SKIPLOOM
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 44
        pokemon SPECIES_IVYSAUR
        ballseal 0
    endparty

trainerdata 335, "Erin"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_PICNICKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 335
        // mon 0
        ivs 0
        abilityslot 15
        level 32
        pokemon SPECIES_GLOOM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 41
        pokemon SPECIES_RAPIDASH
        ballseal 0
    endparty

trainerdata 336, "Tanya"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_PICNICKER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 336
        // mon 0
        ivs 0
        abilityslot 15
        level 49
        pokemon SPECIES_EXEGGUTOR
        move MOVE_GIGA_DRAIN
        move MOVE_LIGHT_SCREEN
        move MOVE_EGG_BOMB
        move MOVE_HYPNOSIS
        ballseal 0
    endparty

trainerdata 337, "Gregory"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_GENTLEMAN
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 337
        // mon 0
        ivs 0
        abilityslot 15
        level 46
        pokemon SPECIES_PIKACHU
        move MOVE_DISCHARGE
        move MOVE_LIGHT_SCREEN
        move MOVE_THUNDER_WAVE
        move MOVE_DOUBLE_TEAM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 43
        pokemon SPECIES_FLAAFFY
        move MOVE_SHOCK_WAVE
        move MOVE_SIGNAL_BEAM
        move MOVE_CHARGE_BEAM
        move MOVE_DOUBLE_TEAM
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 42
        pokemon SPECIES_ELECTRIKE
        move MOVE_SHOCK_WAVE
        move MOVE_ROAR
        move MOVE_THUNDER_WAVE
        move MOVE_THUNDER_FANG
        ballseal 0
    endparty

trainerdata 338, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_GENTLEMAN
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 338
        // mon 0
        ivs 0
        abilityslot 15
        level 20
        pokemon SPECIES_PONYTA
        ballseal 0
    endparty

trainerdata 339, "Wai"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BLACK_BELT
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 339
        // mon 0
        ivs 30
        abilityslot 32
        level 38
        pokemon SPECIES_MACHOKE
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 32
        level 40
        pokemon SPECIES_MACHOKE
        ballseal 0

        // mon 2
        ivs 30
        abilityslot 15
        level 42
        pokemon SPECIES_MEDITITE
        ballseal 0
    endparty

trainerdata 340, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BEAUTY
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 340
        // mon 0
        ivs 0
        abilityslot 15
        level 15
        pokemon SPECIES_SENTRET
        ballseal 0
    endparty

trainerdata 341, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BEAUTY
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 341
        // mon 0
        ivs 0
        abilityslot 15
        level 15
        pokemon SPECIES_SENTRET
        ballseal 0
    endparty

trainerdata 342, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BEAUTY
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 342
        // mon 0
        ivs 0
        abilityslot 15
        level 15
        pokemon SPECIES_SENTRET
        ballseal 0
    endparty

trainerdata 343, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BEAUTY
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 343
        // mon 0
        ivs 0
        abilityslot 15
        level 15
        pokemon SPECIES_SENTRET
        ballseal 0
    endparty

trainerdata 344, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BEAUTY
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 344
        // mon 0
        ivs 0
        abilityslot 15
        level 15
        pokemon SPECIES_SENTRET
        ballseal 0
    endparty

trainerdata 345, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BEAUTY
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 345
        // mon 0
        ivs 0
        abilityslot 15
        level 15
        pokemon SPECIES_SENTRET
        ballseal 0
    endparty

trainerdata 346, "Julia"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_BEAUTY
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 346
        // mon 0
        ivs 0
        abilityslot 15
        level 44
        pokemon SPECIES_PARAS
        move MOVE_GIGA_DRAIN
        move MOVE_SPORE
        move MOVE_SLASH
        move MOVE_ATTRACT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 44
        pokemon SPECIES_CARNIVINE
        move MOVE_GIGA_DRAIN
        move MOVE_WRING_OUT
        move MOVE_INGRAIN
        move MOVE_ATTRACT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 47
        pokemon SPECIES_PARASECT
        move MOVE_GIGA_DRAIN
        move MOVE_SPORE
        move MOVE_ATTRACT
        move MOVE_X_SCISSOR
        ballseal 0
    endparty

trainerdata 347, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BEAUTY
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 347
        // mon 0
        ivs 0
        abilityslot 15
        level 15
        pokemon SPECIES_SENTRET
        ballseal 0
    endparty

trainerdata 348, "Robert"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_POKEFAN_M
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 348
        // mon 0
        ivs 0
        abilityslot 32
        level 43
        pokemon SPECIES_QUAGSIRE
        ballseal 0
    endparty

trainerdata 349, "Joshua"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_POKEFAN_M
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 349
        // mon 0
        ivs 0
        abilityslot 15
        level 32
        pokemon SPECIES_PIKACHU
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 32
        pokemon SPECIES_PIKACHU
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 32
        pokemon SPECIES_PIKACHU
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 15
        level 32
        pokemon SPECIES_PIKACHU
        ballseal 0

        // mon 4
        ivs 0
        abilityslot 15
        level 32
        pokemon SPECIES_PIKACHU
        ballseal 0

        // mon 5
        ivs 0
        abilityslot 15
        level 32
        pokemon SPECIES_PIKACHU
        ballseal 0
    endparty

trainerdata 350, "Carter"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_POKEFAN_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 350
        // mon 0
        ivs 0
        abilityslot 15
        level 38
        pokemon SPECIES_BULBASAUR
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 38
        pokemon SPECIES_CHARMANDER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 38
        pokemon SPECIES_SQUIRTLE
        ballseal 0
    endparty

trainerdata 351, "Trevor"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_POKEFAN_M
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 351
        // mon 0
        ivs 0
        abilityslot 32
        level 42
        pokemon SPECIES_PSYDUCK
        ballseal 0
    endparty

trainerdata 352, "Georgia"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_POKEFAN
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 352
        // mon 0
        ivs 0
        abilityslot 32
        level 31
        pokemon SPECIES_SENTRET
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 31
        pokemon SPECIES_SENTRET
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 31
        pokemon SPECIES_SENTRET
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 32
        level 36
        pokemon SPECIES_FURRET
        ballseal 0

        // mon 4
        ivs 0
        abilityslot 32
        level 31
        pokemon SPECIES_SENTRET
        ballseal 0
    endparty

trainerdata 353, "Grunt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_TEAM_ROCKET
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 353
        // mon 0
        ivs 30
        abilityslot 15
        level 39
        pokemon SPECIES_GOLBAT
        ballseal 0
    endparty

trainerdata 354, "Laura"
    trainermontype TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_LASS
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 354
        // mon 0
        ivs 0
        abilityslot 15
        level 38
        pokemon SPECIES_GLOOM
        item ITEM_SITRUS_BERRY
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 41
        pokemon SPECIES_PIDGEOTTO
        item ITEM_NONE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 41
        pokemon SPECIES_BELLOSSOM
        item ITEM_NONE
        ballseal 0
    endparty

trainerdata 355, "Shannon"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_LASS
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 355
        // mon 0
        ivs 0
        abilityslot 15
        level 38
        pokemon SPECIES_PARAS
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 38
        pokemon SPECIES_PARAS
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 42
        pokemon SPECIES_PARASECT
        ballseal 0
    endparty

trainerdata 356, "Michelle"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_LASS
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | F_USE_WEATHER | 0
    battletype SINGLE_BATTLE
    endentry

    party 356
        // mon 0
        ivs 0
        abilityslot 15
        level 44
        pokemon SPECIES_SKIPLOOM
        move MOVE_GIGA_DRAIN
        move MOVE_U_TURN
        move MOVE_LEECH_SEED
        move MOVE_SUNNY_DAY
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 45
        pokemon SPECIES_HOPPIP
        move MOVE_GIGA_DRAIN
        move MOVE_U_TURN
        move MOVE_STUN_SPORE
        move MOVE_BOUNCE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 46
        pokemon SPECIES_JUMPLUFF
        move MOVE_GIGA_DRAIN
        move MOVE_U_TURN
        move MOVE_SLEEP_POWDER
        move MOVE_SUNNY_DAY
        ballseal 0
    endparty

trainerdata 357, "Clarke"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_HIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 357
        // mon 0
        ivs 0
        abilityslot 32
        level 43
        pokemon SPECIES_ONIX
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 45
        pokemon SPECIES_DUGTRIO
        ballseal 0
    endparty

trainerdata 358, "Kenny"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_HIKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 358
        // mon 0
        ivs 0
        abilityslot 15
        level 27
        pokemon SPECIES_SANDSLASH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 29
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 33
        pokemon SPECIES_GOLEM
        ballseal 0
    endparty

trainerdata 359, "Jim"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_HIKER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 359
        // mon 0
        ivs 0
        abilityslot 32
        level 45
        pokemon SPECIES_MACHAMP
        ballseal 0
    endparty

trainerdata 360, "Arnie"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BUG_CATCHER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 360
        // mon 0
        ivs 0
        abilityslot 15
        level 36
        pokemon SPECIES_VENONAT
        ballseal 0
    endparty

trainerdata 361, "Kevin"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_ACE_TRAINER_M_GS
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 361
        // mon 0
        ivs 50
        abilityslot 32
        level 48
        pokemon SPECIES_RHYHORN
        move MOVE_TAKE_DOWN
        move MOVE_STONE_EDGE
        move MOVE_HORN_DRILL
        move MOVE_EARTHQUAKE
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 15
        level 46
        pokemon SPECIES_CHARMELEON
        move MOVE_FLAMETHROWER
        move MOVE_SLASH
        move MOVE_SCARY_FACE
        move MOVE_AERIAL_ACE
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 15
        level 46
        pokemon SPECIES_WARTORTLE
        move MOVE_HYDRO_PUMP
        move MOVE_ICE_BEAM
        move MOVE_BITE
        move MOVE_SWAGGER
        ballseal 0
    endparty

trainerdata 362, "Quinn"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_ACE_TRAINER_F_GS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | F_USE_WEATHER | 0
    battletype SINGLE_BATTLE
    endentry

    party 362
        // mon 0
        ivs 50
        abilityslot 15
        level 47
        pokemon SPECIES_IVYSAUR
        move MOVE_SOLAR_BEAM
        move MOVE_DOUBLE_EDGE
        move MOVE_SYNTHESIS
        move MOVE_SLUDGE_BOMB
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 32
        level 47
        pokemon SPECIES_STARMIE
        move MOVE_BLIZZARD
        move MOVE_CONFUSE_RAY
        move MOVE_THUNDERBOLT
        move MOVE_WATER_PULSE
        ballseal 0
    endparty

trainerdata 363, "Emma"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_ACE_TRAINER_F_GS
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 363
        // mon 0
        ivs 50
        abilityslot 15
        level 28
        pokemon SPECIES_POLIWHIRL
        ballseal 0
    endparty

trainerdata 364, "Sam"
    trainermontype TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_SUPER_NERD
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 364
        // mon 0
        ivs 0
        abilityslot 15
        level 44
        pokemon SPECIES_GRIMER
        item ITEM_NONE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 44
        pokemon SPECIES_MUK
        item ITEM_TOXIC_ORB
        ballseal 0
    endparty

trainerdata 365, "Tyrone"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SUPER_NERD
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 365
        // mon 0
        ivs 0
        abilityslot 32
        level 40
        pokemon SPECIES_MAGNEMITE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_MAGNEMITE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 40
        pokemon SPECIES_MAGNEMITE
        ballseal 0
    endparty

trainerdata 366, "Pat"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_SUPER_NERD
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 366
        // mon 0
        ivs 50
        abilityslot 32
        level 47
        pokemon SPECIES_PORYGON
        item ITEM_NONE
        move MOVE_CHARGE_BEAM
        move MOVE_SIGNAL_BEAM
        move MOVE_ICE_BEAM
        move MOVE_SOLAR_BEAM
        ballseal 0
    endparty

trainerdata 367, "Shawn"
    trainermontype TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_SUPER_NERD
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 367
        // mon 0
        ivs 0
        abilityslot 32
        level 39
        pokemon SPECIES_MAGNEMITE
        item ITEM_NONE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 41
        pokemon SPECIES_MUK
        item ITEM_NUGGET
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 39
        pokemon SPECIES_MAGNEMITE
        item ITEM_NONE
        ballseal 0
    endparty

trainerdata 368, "Rebecca"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_MEDIUM
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 368
        // mon 0
        ivs 0
        abilityslot 32
        level 45
        pokemon SPECIES_BRONZOR
        move MOVE_FEINT_ATTACK
        move MOVE_SKILL_SWAP
        move MOVE_SAFEGUARD
        move MOVE_GYRO_BALL
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 45
        pokemon SPECIES_HYPNO
        move MOVE_SWAGGER
        move MOVE_SKILL_SWAP
        move MOVE_PSYBEAM
        move MOVE_HYPNOSIS
        ballseal 0
    endparty

trainerdata 369, "Darcy"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_MEDIUM
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 369
        // mon 0
        ivs 0
        abilityslot 32
        level 44
        pokemon SPECIES_SLOWPOKE
        move MOVE_SKILL_SWAP
        move MOVE_AMNESIA
        move MOVE_DISABLE
        move MOVE_PSYCHIC
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 46
        pokemon SPECIES_SLOWBRO
        move MOVE_SKILL_SWAP
        move MOVE_SLACK_OFF
        move MOVE_PSYCHIC
        move MOVE_YAWN
        ballseal 0
    endparty

trainerdata 370, "Jerome"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SWIMMER_M
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 370
        // mon 0
        ivs 0
        abilityslot 32
        level 36
        pokemon SPECIES_SEADRA
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 38
        pokemon SPECIES_TENTACOOL
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_TENTACRUEL
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 32
        level 38
        pokemon SPECIES_GOLDEEN
        ballseal 0
    endparty

trainerdata 371, "Tucker"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SWIMMER_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 371
        // mon 0
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_SHELLDER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 44
        pokemon SPECIES_CLOYSTER
        ballseal 0
    endparty

trainerdata 372, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SWIMMER_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 372
        // mon 0
        ivs 0
        abilityslot 15
        level 13
        pokemon SPECIES_STARYU
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 18
        pokemon SPECIES_STARMIE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 16
        pokemon SPECIES_HORSEA
        ballseal 0
    endparty

trainerdata 373, "Frankie"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SWIMMER_M
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 373
        // mon 0
        ivs 0
        abilityslot 32
        level 44
        pokemon SPECIES_AZUMARILL
        ballseal 0
    endparty

trainerdata 374, "Tyson"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_SWIMMER_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 374
        // mon 0
        ivs 0
        abilityslot 32
        level 42
        pokemon SPECIES_QUAGSIRE
        move MOVE_EARTHQUAKE
        move MOVE_YAWN
        move MOVE_SURF
        move MOVE_AMNESIA
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 42
        pokemon SPECIES_OCTILLERY
        move MOVE_SIGNAL_BEAM
        move MOVE_WRING_OUT
        move MOVE_OCTAZOOKA
        move MOVE_AURORA_BEAM
        ballseal 0
    endparty

trainerdata 375, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SWIMMER_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 375
        // mon 0
        ivs 0
        abilityslot 15
        level 13
        pokemon SPECIES_STARYU
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 18
        pokemon SPECIES_STARMIE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 16
        pokemon SPECIES_HORSEA
        ballseal 0
    endparty

trainerdata 376, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SWIMMER_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 376
        // mon 0
        ivs 0
        abilityslot 15
        level 13
        pokemon SPECIES_STARYU
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 18
        pokemon SPECIES_STARMIE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 16
        pokemon SPECIES_HORSEA
        ballseal 0
    endparty

trainerdata 377, "Parker"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_SWIMMER_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 377
        // mon 0
        ivs 0
        abilityslot 32
        level 43
        pokemon SPECIES_HORSEA
        move MOVE_WATER_PULSE
        move MOVE_FOCUS_ENERGY
        move MOVE_TWISTER
        move MOVE_AGILITY
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 43
        pokemon SPECIES_SEADRA
        move MOVE_WATER_PULSE
        move MOVE_FOCUS_ENERGY
        move MOVE_TWISTER
        move MOVE_AGILITY
        ballseal 0
    endparty

trainerdata 378, "Warren"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_YOUNGSTER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 378
        // mon 0
        ivs 0
        abilityslot 15
        level 38
        pokemon SPECIES_FEAROW
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 42
        pokemon SPECIES_RATICATE
        ballseal 0
    endparty

trainerdata 379, "Jimmy"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_YOUNGSTER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 379
        // mon 0
        ivs 0
        abilityslot 15
        level 42
        pokemon SPECIES_RATICATE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 42
        pokemon SPECIES_ARBOK
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 42
        pokemon SPECIES_PARASECT
        ballseal 0
    endparty

trainerdata 380, "Owen"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_YOUNGSTER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 380
        // mon 0
        ivs 0
        abilityslot 15
        level 44
        pokemon SPECIES_GROWLITHE
        ballseal 0
    endparty

trainerdata 381, "Jason"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_YOUNGSTER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 381
        // mon 0
        ivs 0
        abilityslot 15
        level 42
        pokemon SPECIES_SANDSLASH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 42
        pokemon SPECIES_CROBAT
        ballseal 0
    endparty

trainerdata 382, "Hillary"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_TEACHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 382
        // mon 0
        ivs 0
        abilityslot 32
        level 41
        pokemon SPECIES_SUNKERN
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 31
        pokemon SPECIES_AIPOM
        ballseal 0
    endparty

trainerdata 383, "Peter"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_BIRD_KEEPER_GS
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 383
        // mon 0
        ivs 255
        abilityslot 2
        level 22
        pokemon SPECIES_PIDGEOTTO
        move MOVE_AERIAL_ACE
        move MOVE_QUICK_ATTACK
        move MOVE_PURSUIT
        move MOVE_ROOST
        nature NATURE_RASH
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 22
        pokemon SPECIES_NOCTOWL
        move MOVE_UPROAR
        move MOVE_AIR_CUTTER
        move MOVE_CONFUSION
        move MOVE_ROOST
        nature NATURE_MODEST
        ballseal 0     
        
        // mon 2        
        ivs 255
        abilityslot 2
        level 22
        pokemon SPECIES_FEAROW
        move MOVE_TAKE_DOWN
        move MOVE_PLUCK
        move MOVE_PURSUIT
        move MOVE_ROOST
        nature NATURE_IMPISH
        ballseal 0
    endparty

trainerdata 384, "Daniel"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_HIKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 384
        // mon 0
        ivs 255
        abilityslot 32
        level 23
        pokemon SPECIES_ONIX
        item ITEM_CUSTAP_BERRY
        move MOVE_NATURE_POWER 
        move MOVE_BULLDOZE 
        move MOVE_EXPLOSION 
        move MOVE_STEALTH_ROCK 
        nature NATURE_ADAMANT
        ballseal 0  
        
        // mon 1
        ivs 255
        abilityslot 2
        level 23
        pokemon SPECIES_CORSOLA
        item ITEM_RINDO_BERRY
        move MOVE_WATER_PULSE
        move MOVE_ANCIENT_POWER
        move MOVE_ICY_WIND
        move MOVE_RECOVER
        nature NATURE_MODEST
        ballseal 0
        
        // mon 1
        ivs 255
        abilityslot 32
        level 23
        pokemon SPECIES_RHYHORN
        item ITEM_EVIOLITE
        move MOVE_BULLDOZE 
        move MOVE_ROCK_SLIDE 
        move MOVE_CHIP_AWAY 
        move MOVE_PURSUIT 
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 385, "Dara & Dia"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_TWINS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 385
        // mon 0
        ivs 0
        abilityslot 15
        level 16
        pokemon SPECIES_MAREEP
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 16
        pokemon SPECIES_MARILL
        ballseal 0
    endparty

trainerdata 386, "Greg"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_PSYCHIC_M
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 386
        // mon 0
        ivs 255
        abilityslot 2
        level 40
        pokemon SPECIES_CHIMECHO
        move MOVE_EXTRASENSORY
        move MOVE_SHADOW_BALL
        move MOVE_LIGHT_SCREEN
        move MOVE_YAWN
        nature NATURE_TIMID
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 40
        pokemon SPECIES_BRONZONG
        move MOVE_GYRO_BALL
        move MOVE_ZEN_HEADBUTT
        move MOVE_ICE_SPINNER
        move MOVE_HYPNOSIS
        nature NATURE_BRAVE
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 40
        pokemon SPECIES_HYPNO
        move MOVE_ZEN_HEADBUTT
        move MOVE_DRAIN_PUNCH
        move MOVE_CURSE
        move MOVE_HYPNOSIS
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 40
        pokemon SPECIES_MALAMAR
        move MOVE_KNOCK_OFF
        move MOVE_PSYCHO_CUT
        move MOVE_LIQUIDATION
        move MOVE_YAWN
        nature NATURE_TIMID
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 40
        pokemon SPECIES_ESPEON
        move MOVE_PSYCHIC
        move MOVE_POWER_GEM
        move MOVE_DRAINING_KISS
        move MOVE_YAWN
        nature NATURE_TIMID
        ballseal 0
    endparty

trainerdata 387, "Amy & Mimi"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_NATURE_SET | 0
    trainerclass TRAINERCLASS_TWINS
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 387
        // mon 0
        ivs 255
        abilityslot 2
        level 28
        pokemon SPECIES_BEEDRILL
        move MOVE_BUG_BITE
        move MOVE_ACROBATICS
        move MOVE_DRILL_RUN
        move MOVE_PURSUIT
        ball ITEM_SPORT_BALL
        nature NATURE_JOLLY
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 28
        pokemon SPECIES_BUTTERFREE
        move MOVE_STRUGGLE_BUG
        move MOVE_PSYBEAM
        move MOVE_ELECTROWEB
        move MOVE_SLEEP_POWDER
        ball ITEM_SPORT_BALL
        nature NATURE_TIMID
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 28
        pokemon SPECIES_BEAUTIFLY
        move MOVE_STRUGGLE_BUG
        move MOVE_AIR_CUTTER
        move MOVE_MEGA_DRAIN
        move MOVE_MORNING_SUN
        ball ITEM_SPORT_BALL
        nature NATURE_MODEST
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 28
        pokemon SPECIES_DUSTOX
        move MOVE_LEECH_LIFE
        move MOVE_VENOSHOCK
        move MOVE_POISON_POWDER
        move MOVE_MOONLIGHT
        ball ITEM_SPORT_BALL
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 388, "Walt"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_FIREBREATHER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 388
        // mon 0
        ivs 255
        abilityslot 15
        level 37
        pokemon SPECIES_CHARIZARD
        item ITEM_CHARCOAL
        move MOVE_FLAMETHROWER
        move MOVE_AIR_SLASH
        move MOVE_DRAGON_BREATH
        move MOVE_ROOST
        nature NATURE_TIMID
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 37
        pokemon SPECIES_SIMISEAR
        item ITEM_IAPAPA_BERRY
        move MOVE_FLAMETHROWER
        move MOVE_GRASS_KNOT
        move MOVE_BELCH
        move MOVE_NASTY_PLOT
        nature NATURE_TIMID
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 37
        pokemon SPECIES_PYROAR
        item ITEM_THROAT_SPRAY
        move MOVE_FLAMETHROWER
        move MOVE_HYPER_VOICE
        move MOVE_DARK_PULSE
        move MOVE_WILL_O_WISP
        nature NATURE_MODEST
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 37
        pokemon SPECIES_MAGMAR
        item ITEM_EVIOLITE
        move MOVE_FLAME_BURST
        move MOVE_PSYCHIC
        move MOVE_SCORCHING_SANDS
        move MOVE_POISON_GAS
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 389, "Nelson"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_PSYCHIC_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 389
        // mon 0
        ivs 0
        abilityslot 15
        level 17
        pokemon SPECIES_SLOWPOKE
        move MOVE_TACKLE
        move MOVE_GROWL
        move MOVE_WATER_GUN
        move MOVE_NONE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 20
        pokemon SPECIES_SLOWPOKE
        move MOVE_CURSE
        move MOVE_HEADBUTT
        move MOVE_WATER_GUN
        move MOVE_CONFUSION
        ballseal 0
    endparty

trainerdata 390, "Ray"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET 
    trainerclass TRAINERCLASS_FIREBREATHER
    nummons 0x80 | 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 390
        // mon 0
        ivs 255
        abilityslot 15
        level 25
        monwithform SPECIES_GROWLITHE, 1
        item ITEM_EVIOLITE
        move MOVE_FIRE_FANG 
        move MOVE_ROCK_TOMB 
        move MOVE_WILL_O_WISP  
        move MOVE_MORNING_SUN 
        nature NATURE_ADAMANT
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 25
        pokemon SPECIES_LARVESTA
        item ITEM_CHARTI_BERRY
        move MOVE_BUG_BITE 
        move MOVE_FLAME_CHARGE 
        move MOVE_TRAILBLAZE 
        move MOVE_MORNING_SUN 
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 25
        pokemon SPECIES_TORKOAL
        item ITEM_BINDING_BAND
        move MOVE_FIRE_SPIN 
        move MOVE_CLEAR_SMOG
        move MOVE_YAWN
        move MOVE_PROTECT 
        nature NATURE_MODEST
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 25
        pokemon SPECIES_HEATMOR
        item ITEM_PASSHO_BERRY
        move MOVE_FIRE_PUNCH 
        move MOVE_BUG_BITE 
        move MOVE_ROCK_TOMB 
        move MOVE_HONE_CLAWS
        nature NATURE_ADAMANT
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 15
        level 25
        pokemon SPECIES_NINETALES
        item ITEM_CHARCOAL
        move MOVE_INCINERATE
        move MOVE_DAZZLING_GLEAM
        move MOVE_HEX
        move MOVE_WILL_O_WISP
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 391, "Issac"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_POKE_MANIAC
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 391
        // mon 0
        ivs 255
        abilityslot 32
        level 36
        monwithform SPECIES_FURFROU, 1
        move MOVE_RETURN
        move MOVE_ZEN_HEADBUTT
        move MOVE_WILD_CHARGE
        move MOVE_U_TURN
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 36
        monwithform SPECIES_FURFROU, 2
        move MOVE_RETURN
        move MOVE_ZEN_HEADBUTT
        move MOVE_WILD_CHARGE
        move MOVE_U_TURN
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 36
        monwithform SPECIES_FURFROU, 3
        move MOVE_RETURN
        move MOVE_ZEN_HEADBUTT
        move MOVE_WILD_CHARGE
        move MOVE_U_TURN
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 36
        monwithform SPECIES_FURFROU, 4
        move MOVE_RETURN
        move MOVE_ZEN_HEADBUTT
        move MOVE_WILD_CHARGE
        move MOVE_U_TURN
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 36
        monwithform SPECIES_FURFROU, 5
        move MOVE_RETURN
        move MOVE_ZEN_HEADBUTT
        move MOVE_WILD_CHARGE
        move MOVE_U_TURN
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 36
        pokemon SPECIES_LICKILICKY
        move MOVE_DOUBLE_EDGE
        move MOVE_ZEN_HEADBUTT
        move MOVE_KNOCK_OFF
        move MOVE_BULLDOZE
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 392, "Donald"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_POKE_MANIAC
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 392
        // mon 0
        ivs 255
        abilityslot 2
        level 36
        pokemon SPECIES_SLOWKING
        move MOVE_SURF
        move MOVE_POWER_GEM
        move MOVE_FUTURE_SIGHT
        move MOVE_YAWN
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 36
        monwithform SPECIES_SLOWKING, 1
        move MOVE_EERIE_SPELL
        move MOVE_POWER_GEM
        move MOVE_FUTURE_SIGHT
        move MOVE_YAWN
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 393, "Teru"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_SUPER_NERD
    nummons 0x80 | 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 393
        // mon 0
        ivs 255
        abilityslot 32
        level 36
        pokemon SPECIES_ELECTRODE
        move MOVE_ELECTRO_BALL
        move MOVE_ENERGY_BALL
        move MOVE_SWIFT
        move MOVE_EXPLOSION
        nature NATURE_MILD
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 36
        pokemon SPECIES_MAGNETON
        move MOVE_THUNDERBOLT
        move MOVE_FLASH_CANNON
        move MOVE_TRI_ATTACK
        move MOVE_OVERHEAT
        nature NATURE_TIMID
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 0
        level 36
        monwithform SPECIES_ELECTRODE, 1
        move MOVE_ELECTRO_BALL
        move MOVE_CHLOROBLAST
        move MOVE_SWIFT
        move MOVE_EXPLOSION
        nature NATURE_MILD
        ballseal 0
    endparty

trainerdata 394, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_ACE_TRAINER_M_GS
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 394
        // mon 0
        ivs 0
        abilityslot 15
        level 14
        pokemon SPECIES_BULBASAUR
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 14
        pokemon SPECIES_CHARMANDER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 14
        pokemon SPECIES_SQUIRTLE
        ballseal 0
    endparty

trainerdata 395, "Mark"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_PSYCHIC_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 395
        // mon 0
        ivs 255
        abilityslot 2
        level 38
        pokemon SPECIES_HYPNO
        move MOVE_PSYBEAM
        move MOVE_LOW_SWEEP
        move MOVE_DREAM_EATER
        move MOVE_HYPNOSIS
        nature NATURE_MODEST
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 38
        pokemon SPECIES_EXEGGUTOR
        move MOVE_GIGA_DRAIN
        move MOVE_CONFUSION
        move MOVE_SLEEP_POWDER
        move MOVE_SOFT_BOILED
        nature NATURE_MODEST
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 38
        pokemon SPECIES_ALAKAZAM
        move MOVE_PSYSHOCK
        move MOVE_SIGNAL_BEAM
        move MOVE_CHARGE_BEAM
        move MOVE_PSYCHO_SHIFT
        nature NATURE_TIMID
        ballseal 0
    endparty

trainerdata 396, "Horton"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_JUGGLER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 396
        // mon 0
        ivs 0
        abilityslot 32
        level 43
        pokemon SPECIES_ELECTRODE
        move MOVE_SWIFT
        move MOVE_SHOCK_WAVE
        move MOVE_SCREECH
        move MOVE_EXPLOSION
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 43
        pokemon SPECIES_ELECTRODE
        move MOVE_SWIFT
        move MOVE_SHOCK_WAVE
        move MOVE_DOUBLE_TEAM
        move MOVE_LIGHT_SCREEN
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 43
        pokemon SPECIES_ELECTRODE
        move MOVE_SWIFT
        move MOVE_SHOCK_WAVE
        move MOVE_SCREECH
        move MOVE_ROLLOUT
        ballseal 0
    endparty

trainerdata 397, "Chad"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SCHOOL_KID_M
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 397
        // mon 0
        ivs 0
        abilityslot 15
        level 20
        pokemon SPECIES_MR_MIME
        ballseal 0
    endparty

trainerdata 398, "Valerie"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_BEAUTY
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 398
        // mon 0
        ivs 0
        abilityslot 15
        level 18
        pokemon SPECIES_HOPPIP
        move MOVE_MEGA_DRAIN
        move MOVE_TAIL_WHIP
        move MOVE_TACKLE
        move MOVE_POISON_POWDER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 18
        pokemon SPECIES_SKIPLOOM
        move MOVE_MEGA_DRAIN
        move MOVE_TAIL_WHIP
        move MOVE_TACKLE
        move MOVE_STUN_SPORE
        ballseal 0
    endparty

trainerdata 399, "Lyle"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_FIREBREATHER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 399
        // mon 0
        ivs 0
        abilityslot 15
        level 36
        pokemon SPECIES_KOFFING
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 39
        pokemon SPECIES_FLAREON
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 36
        pokemon SPECIES_KOFFING
        ballseal 0
    endparty

trainerdata 400, "Dana"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_LASS
    nummons 2
    item ITEM_MOOMOO_MILK
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 400
        // mon 0
        ivs 0
        abilityslot 15
        level 19
        pokemon SPECIES_FLAAFFY
        move MOVE_TACKLE
        move MOVE_GROWL
        move MOVE_THUNDER_SHOCK
        move MOVE_THUNDER_WAVE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 19
        pokemon SPECIES_PSYDUCK
        move MOVE_WATER_GUN
        move MOVE_TAIL_WHIP
        move MOVE_DISABLE
        move MOVE_CONFUSION
        ballseal 0
    endparty

trainerdata 401, "Alfred"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_GENTLEMAN
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 401
        // mon 0
        ivs 255
        abilityslot 32
        level 46
        pokemon SPECIES_HONCHKROW
        item ITEM_SCOPE_LENS
        move MOVE_NIGHT_SLASH
        move MOVE_DRILL_PECK
        move MOVE_SUPERPOWER
        move MOVE_U_TURN
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 46
        pokemon SPECIES_MANECTRIC
        item ITEM_EJECT_PACK
        move MOVE_THUNDERBOLT
        move MOVE_FLAMETHROWER
        move MOVE_HYPER_VOICE
        move MOVE_CHARGE_BEAM
        nature NATURE_TIMID
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 46
        pokemon SPECIES_ROSERADE
        item ITEM_ROCKY_HELMET
        move MOVE_MEGA_DRAIN
        move MOVE_SLUDGE_BOMB
        move MOVE_STUN_SPORE
        move MOVE_SPIKES
        nature NATURE_TIMID
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 46
        pokemon SPECIES_HOUNDSTONE
        item ITEM_LEFTOVERS
        move MOVE_LAST_RESPECTS
        move MOVE_PLAY_ROUGH
        move MOVE_SHADOW_SNEAK
        move MOVE_YAWN
        nature NATURE_IMPISH
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 46
        pokemon SPECIES_NOCTOWL
        item ITEM_SILK_SCARF
        move MOVE_HYPER_VOICE
        move MOVE_AIR_SLASH
        move MOVE_MOONBLAST
        move MOVE_ROOST
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 402, "Tiffany"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_PICNICKER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 402
        // mon 0
        ivs 0
        abilityslot 15
        level 21
        pokemon SPECIES_CLEFAIRY
        move MOVE_ENCORE
        move MOVE_SING
        move MOVE_DOUBLE_SLAP
        move MOVE_MINIMIZE
        ballseal 0
    endparty

trainerdata 403, "Spencer"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_CAMPER
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 403
        // mon 0
        ivs 255
        abilityslot 2
        level 58
        pokemon SPECIES_LEDIAN
        item ITEM_LIGHT_CLAY
        move MOVE_U_TURN
        move MOVE_MACH_PUNCH
        move MOVE_LIGHT_SCREEN
        move MOVE_REFLECT
        nature NATURE_JOLLY
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 58
        pokemon SPECIES_SANDSLASH
        item ITEM_SALAC_BERRY
        move MOVE_DRILL_RUN
        move MOVE_POISON_JAB
        move MOVE_LEECH_LIFE
        move MOVE_SWORDS_DANCE
        nature NATURE_JOLLY
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 58
        pokemon SPECIES_CROBAT
        item ITEM_NONE
        move MOVE_CROSS_POISON
        move MOVE_ACROBATICS
        move MOVE_PURSUIT
        move MOVE_ROOST
        nature NATURE_ADAMANT
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 58
        pokemon SPECIES_DITTO
        item ITEM_QUICK_CLAW
        move MOVE_TRANSFORM
        move MOVE_NONE
        move MOVE_NONE
        move MOVE_NONE
        nature NATURE_IMPISH
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 58
        pokemon SPECIES_MAGCARGO
        item ITEM_WHITE_HERB
        move MOVE_FLAMETHROWER
        move MOVE_POWER_GEM
        move MOVE_EARTH_POWER
        move MOVE_SHELL_SMASH
        nature NATURE_TIMID
        ballseal 0
    endparty

trainerdata 404, "Grunt" // TRHQB3F PASSWORD R
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_TEAM_ROCKET_F
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 404
        // mon 0
        ivs 255
        abilityslot 2
        level 60
        pokemon SPECIES_BEHEEYEM
        item ITEM_POWER_HERB
        move MOVE_PSYCHIC
        move MOVE_THUNDERBOLT
        move MOVE_METEOR_BEAM
        move MOVE_RECOVER
        nature NATURE_MODEST
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 60
        pokemon SPECIES_CLAYDOL
        item ITEM_LEFTOVERS
        move MOVE_SCORCHING_SANDS
        move MOVE_PSYCHIC
        move MOVE_GRASS_KNOT
        move MOVE_SHORE_UP
        nature NATURE_MODEST
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 32
        level 60
        pokemon SPECIES_BRONZONG
        item ITEM_ASSAULT_VEST
        move MOVE_FLASH_CANNON
        move MOVE_PSYCHIC_NOISE
        move MOVE_POWER_GEM
        move MOVE_CHARGE_BEAM
        nature NATURE_MODEST
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 60
        monwithform SPECIES_BRAVIARY, 1
        item ITEM_LIFE_ORB
        move MOVE_ESPER_WING
        move MOVE_AIR_SLASH
        move MOVE_HEAT_WAVE
        move MOVE_U_TURN
        nature NATURE_MODEST
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 60
        pokemon SPECIES_ARMAROUGE
        item ITEM_WEAKNESS_POLICY
        move MOVE_ARMOR_CANNON
        move MOVE_PSYCHIC
        move MOVE_ENERGY_BALL
        move MOVE_SCORCHING_SANDS
        nature NATURE_MODEST
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 2
        level 60
        pokemon SPECIES_ALAKAZAM
        item ITEM_ALAKAZITE
        move MOVE_PSYCHIC
        move MOVE_FOCUS_BLAST
        move MOVE_ENERGY_BALL
        move MOVE_RECOVER
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 405, "Phil"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_PSYCHIC_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 405
        // mon 0
        ivs 0
        abilityslot 15
        level 27
        pokemon SPECIES_NATU
        move MOVE_LEER
        move MOVE_NIGHT_SHADE
        move MOVE_ME_FIRST
        move MOVE_CONFUSE_RAY
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 29
        pokemon SPECIES_KADABRA
        move MOVE_DISABLE
        move MOVE_PSYBEAM
        move MOVE_REFLECT
        move MOVE_CHARGE_BEAM
        ballseal 0
    endparty

trainerdata 406, "Zach"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_POKE_MANIAC
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 406
        // mon 0
        ivs 0
        abilityslot 15
        level 30
        pokemon SPECIES_RHYHORN
        ballseal 0
    endparty

trainerdata 407, "Allen"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_ACE_TRAINER_M_GS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 407
        // mon 0
        ivs 50
        abilityslot 15
        level 29
        pokemon SPECIES_CHARMELEON
        move MOVE_EMBER
        move MOVE_SMOKESCREEN
        move MOVE_FIRE_FANG
        move MOVE_SCARY_FACE
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 15
        level 29
        pokemon SPECIES_MAGNEMITE
        move MOVE_SPARK
        move MOVE_THUNDER_WAVE
        move MOVE_SUPERSONIC
        move MOVE_METAL_SOUND
        ballseal 0
    endparty

trainerdata 408, "Cybil"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_ACE_TRAINER_F_GS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 408
        // mon 0
        ivs 50
        abilityslot 15
        level 29
        pokemon SPECIES_MAREEP
        move MOVE_DISCHARGE
        move MOVE_COTTON_SPORE
        move MOVE_CHARGE
        move MOVE_TACKLE
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 15
        level 29
        pokemon SPECIES_BELLOSSOM
        move MOVE_MEGA_DRAIN
        move MOVE_STUN_SPORE
        move MOVE_ACID
        move MOVE_MAGICAL_LEAF
        ballseal 0
    endparty

trainerdata 409, "Brandon"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_POKEFAN_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 409
        // mon 2
        ivs 255
        abilityslot 2
        level 31
        pokemon SPECIES_GRANBULL
        item ITEM_EXPERT_BELT
        move MOVE_JAW_LOCK
        move MOVE_THUNDER_FANG
        move MOVE_ICE_FANG
        move MOVE_BULK_UP
        nature NATURE_JOLLY
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 31
        pokemon SPECIES_ARCANINE
        item ITEM_NONE
        move MOVE_FIRE_FANG
        move MOVE_EXTREME_SPEED
        move MOVE_REVERSAL
        move MOVE_HOWL
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 31
        pokemon SPECIES_AMPHAROS
        item ITEM_NONE
        move MOVE_DISCHARGE
        move MOVE_POWER_GEM
        move MOVE_DAZZLING_GLEAM
        move MOVE_SIGNAL_BEAM
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 410, "Harry"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_SAILOR
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 410
        // mon 0
        ivs 255
        abilityslot 32
        level 42
        pokemon SPECIES_LAPRAS
        item ITEM_THROAT_SPRAY
        move MOVE_SPARKLING_ARIA
        move MOVE_ICE_BEAM
        move MOVE_PSYCHIC_NOISE
        move MOVE_FREEZE_DRY
        nature NATURE_MODEST
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 42
        pokemon SPECIES_BARBARACLE
        item ITEM_WHITE_HERB
        move MOVE_ROCK_SLIDE
        move MOVE_LIQUIDATION
        move MOVE_DRAGON_CLAW
        move MOVE_SHELL_SMASH
        nature NATURE_JOLLY
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 42
        pokemon SPECIES_VELUZA
        item ITEM_SITRUS_BERRY
        move MOVE_AQUA_CUTTER
        move MOVE_PSYCHO_CUT
        move MOVE_NIGHT_SLASH
        move MOVE_FILLET_AWAY
        nature NATURE_ADAMANT
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 32
        level 42
        pokemon SPECIES_QUAGSIRE
        item ITEM_LEFTOVERS
        move MOVE_LIQUIDATION
        move MOVE_EARTHQUAKE
        move MOVE_CURSE
        move MOVE_RECOVER
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 411, "Vernon"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_PSYCHIC_M
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 411
        // mon 0
        ivs 0
        abilityslot 15
        level 36
        pokemon SPECIES_ESPEON
        ballseal 0
    endparty

trainerdata 412, "Eli"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_PSYCHIC_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 412
        // mon 0
        ivs 0
        abilityslot 15
        level 30
        pokemon SPECIES_STARMIE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 30
        pokemon SPECIES_EXEGGCUTE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 34
        pokemon SPECIES_GIRAFARIG
        ballseal 0
    endparty

trainerdata 413, "Scott"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_FISHERMAN
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 413
        // mon 0
        ivs 255
        abilityslot 15
        level 73
        pokemon SPECIES_SEAKING
        item ITEM_MYSTIC_WATER
        move MOVE_AQUA_TAIL
        move MOVE_POISON_JAB
        move MOVE_DRILL_RUN
        move MOVE_FLIP_TURN
        nature NATURE_ADAMANT
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 73
        pokemon SPECIES_CLODSIRE
        item ITEM_BLACK_SLUDGE
        move MOVE_POISON_JAB
        move MOVE_EARTHQUAKE
        move MOVE_TOXIC_SPIKES
        move MOVE_RECOVER
        nature NATURE_CAREFUL
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 73
        pokemon SPECIES_SEISMITOAD
        item ITEM_LIFE_ORB
        move MOVE_LIQUIDATION
        move MOVE_EARTHQUAKE
        move MOVE_POISON_JAB
        move MOVE_ICE_PUNCH
        nature NATURE_ADAMANT
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 32
        level 73
        pokemon SPECIES_TOXICROAK
        item ITEM_PAYAPA_BERRY
        move MOVE_POISON_JAB
        move MOVE_CLOSE_COMBAT
        move MOVE_KNOCK_OFF
        move MOVE_SWORDS_DANCE
        nature NATURE_JOLLY
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 32
        level 73
        pokemon SPECIES_OVERQWIL
        item ITEM_BLACK_SLUDGE
        move MOVE_LASH_OUT
        move MOVE_BARB_BARRAGE
        move MOVE_AQUA_TAIL
        move MOVE_SPIKY_SHIELD
        nature NATURE_ADAMANT
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 15
        level 73
        pokemon SPECIES_GYARADOS
        item ITEM_GYARADOSITE
        move MOVE_AQUA_TAIL
        move MOVE_LASH_OUT
        move MOVE_EARTHQUAKE
        move MOVE_DRAGON_DANCE
        nature NATURE_JOLLY
        ballseal 0
    endparty

trainerdata 414, "Jose"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_BIRD_KEEPER_GS
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 414
        // mon 0
        ivs 255
        abilityslot 2
        level 72
        pokemon SPECIES_EMPOLEON
        item ITEM_LEFTOVERS
        move MOVE_SURF
        move MOVE_FLASH_CANNON
        move MOVE_STEALTH_ROCK
        move MOVE_ROOST
        nature NATURE_BOLD
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 72
        pokemon SPECIES_EISCUE
        item ITEM_SITRUS_BERRY
        move MOVE_ICICLE_CRASH
        move MOVE_LIQUIDATION
        move MOVE_ICE_SHARD
        move MOVE_BELLY_DRUM
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 72
        pokemon SPECIES_BLAZIKEN
        item ITEM_CLEAR_AMULET
        move MOVE_CLOSE_COMBAT
        move MOVE_BLAZE_KICK
        move MOVE_SWORDS_DANCE
        move MOVE_DETECT
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 72
        pokemon SPECIES_DECIDUEYE
        item ITEM_SPELL_TAG
        move MOVE_LEAF_BLADE
        move MOVE_SPIRIT_SHACKLE
        move MOVE_SHADOW_SNEAK
        move MOVE_U_TURN
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 72
        pokemon SPECIES_ESPATHRA
        item ITEM_LEFTOVERS
        move MOVE_STORED_POWER
        move MOVE_DAZZLING_GLEAM
        move MOVE_CALM_MIND
        move MOVE_ROOST
        nature NATURE_BOLD
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 73
        pokemon SPECIES_PIDGEOT
        item ITEM_PIDGEOTITE
        move MOVE_HURRICANE
        move MOVE_FOCUS_BLAST
        move MOVE_HEAT_WAVE
        move MOVE_ROOST
        nature NATURE_TIMID
        ballseal 0
    endparty

trainerdata 415, "Jared"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_PSYCHIC_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 415
        // mon 0
        ivs 0
        abilityslot 32
        level 42
        pokemon SPECIES_MR_MIME
        move MOVE_SKILL_SWAP
        move MOVE_PSYCHIC
        move MOVE_REFLECT
        move MOVE_LIGHT_SCREEN
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 42
        pokemon SPECIES_EXEGGCUTE
        move MOVE_SKILL_SWAP
        move MOVE_PSYCHIC
        move MOVE_SLEEP_POWDER
        move MOVE_LEECH_SEED
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 45
        pokemon SPECIES_EXEGGCUTE
        move MOVE_SKILL_SWAP
        move MOVE_PSYCHIC
        move MOVE_HYPNOSIS
        move MOVE_GRASS_KNOT
        ballseal 0
    endparty

trainerdata 416, "Jo & Zoe"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_TWINS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 416
        // mon 0
        ivs 0
        abilityslot 15
        level 37
        pokemon SPECIES_VILEPLUME
        move MOVE_GIGA_DRAIN
        move MOVE_STUN_SPORE
        move MOVE_DRAIN_PUNCH
        move MOVE_ATTRACT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 37
        pokemon SPECIES_VICTREEBEL
        move MOVE_GIGA_DRAIN
        move MOVE_SLEEP_POWDER
        move MOVE_SLUDGE_BOMB
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 417, "Jenn"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass TRAINERCLASS_ACE_TRAINER_F_GS
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 417
        // mon 0
        ivs 255
        abilityslot 15
        level 46
        pokemon SPECIES_TATSUGIRI
        item ITEM_TOXIC_ORB
        move MOVE_DRACO_METEOR
        move MOVE_MUDDY_WATER
        move MOVE_ICY_WIND
        move MOVE_MEMENTO
        nature NATURE_TIMID
        additionalflags TRAINER_DATA_TYPE_NATURE_SET
        status 0x80
        ballseal 0
        
        // mon 1
        ivs 255
        abilityslot 15
        level 46
        pokemon SPECIES_ARAQUANID
        item ITEM_CUSTAP_BERRY
        move MOVE_LIQUIDATION
        move MOVE_LEECH_LIFE
        move MOVE_ENDEAVOR
        move MOVE_WIDE_GUARD
        nature NATURE_ADAMANT
        additionalflags 0
        ballseal 0
        
        // mon 2
        ivs 255
        abilityslot 32
        level 46
        pokemon SPECIES_LUMINEON
        item ITEM_FAIRY_FEATHER
        move MOVE_SURF
        move MOVE_DAZZLING_GLEAM
        move MOVE_AIR_CUTTER
        move MOVE_TAILWIND
        nature NATURE_MODEST
        additionalflags 0
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 46
        pokemon SPECIES_STARMIE
        item ITEM_WIDE_LENS
        move MOVE_HYDRO_PUMP
        move MOVE_PSYCHIC
        move MOVE_THUNDER
        move MOVE_BLIZZARD
        nature NATURE_MODEST
        additionalflags 0
        ballseal 0
    endparty

trainerdata 418, "Bruno"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_ELITE_FOUR_BRUNO
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 418
        // mon 0
        ivs 255
        abilityslot 2
        level 75
        pokemon SPECIES_SIRFETCHD
        item ITEM_LEEK
        move MOVE_METEOR_ASSAULT
        move MOVE_SOLAR_BLADE
        move MOVE_DUAL_WINGBEAT
        move MOVE_FIRST_IMPRESSION
        ball ITEM_HEAVY_BALL
        nature NATURE_ADAMANT
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 75
        monwithform SPECIES_ZAPDOS, 1
        item ITEM_LIFE_ORB
        move MOVE_THUNDEROUS_KICK
        move MOVE_BOLT_BEAK
        move MOVE_BLAZE_KICK
        move MOVE_SLACK_OFF
        ball ITEM_HEAVY_BALL
        nature NATURE_JOLLY
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 75
        pokemon SPECIES_KOMMO_O
        item ITEM_THROAT_SPRAY
        move MOVE_CLANGING_SCALES
        move MOVE_BOOMBURST
        move MOVE_FLAMETHROWER
        move MOVE_CLANGOROUS_SOUL
        ball ITEM_HEAVY_BALL
        nature NATURE_TIMID
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 75
        monwithform SPECIES_LILLIGANT, 1
        item ITEM_FOCUS_SASH
        move MOVE_SOLAR_BLADE
        move MOVE_CLOSE_COMBAT
        move MOVE_ICE_SPINNER
        move MOVE_SWORDS_DANCE
        ball ITEM_HEAVY_BALL
        nature NATURE_ADAMANT
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 15
        level 75
        pokemon SPECIES_GREAT_TUSK
        item ITEM_LEFTOVERS
        move MOVE_EARTHQUAKE
        move MOVE_ICE_SPINNER
        move MOVE_TEMPER_FLARE
        move MOVE_BULK_UP
        ball ITEM_HEAVY_BALL
        nature NATURE_JOLLY
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 2
        level 75
        pokemon SPECIES_BLAZIKEN
        item ITEM_BLAZIKENITE
        move MOVE_BLAZE_KICK
        move MOVE_CLOSE_COMBAT
        move MOVE_THUNDER_PUNCH
        move MOVE_DETECT
        ball ITEM_HEAVY_BALL
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 419, "Ellen"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_LASS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 419
        // mon 0
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_WIGGLYTUFF
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 44
        pokemon SPECIES_GRANBULL
        ballseal 0
    endparty

trainerdata 420, "Perry"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIRD_KEEPER_GS
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 420
        // mon 0
        ivs 50
        abilityslot 32
        level 42
        pokemon SPECIES_FARFETCHD
        ballseal 0
    endparty

trainerdata 421, "Bret"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIRD_KEEPER_GS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 421
        // mon 0
        ivs 50
        abilityslot 15
        level 41
        pokemon SPECIES_TAILLOW
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 15
        level 41
        pokemon SPECIES_FEAROW
        ballseal 0
    endparty

trainerdata 422, "Rodney"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_PSYCHIC_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 422
        // mon 0
        ivs 0
        abilityslot 15
        level 37
        pokemon SPECIES_CHINGLING
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 41
        pokemon SPECIES_HYPNO
        ballseal 0
    endparty

trainerdata 423, "Jeremy"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_POKEFAN_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 423
        // mon 0
        ivs 0
        abilityslot 32
        level 36
        pokemon SPECIES_MEOWTH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 36
        pokemon SPECIES_MEOWTH
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 36
        pokemon SPECIES_MEOWTH
        ballseal 0
    endparty

trainerdata 424, "Colin"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_POKEFAN_M
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 424
        // mon 0
        ivs 0
        abilityslot 32
        level 40
        pokemon SPECIES_DELIBIRD
        move MOVE_PRESENT
        move MOVE_AERIAL_ACE
        move MOVE_AVALANCHE
        move MOVE_NONE
        ballseal 0
    endparty

trainerdata 425, "Meg & Peg"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_TWINS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 425
        // mon 0
        ivs 0
        abilityslot 32
        level 39
        pokemon SPECIES_TEDDIURSA
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 39
        pokemon SPECIES_PHANPY
        ballseal 0
    endparty

trainerdata 426, "Meg & Peg"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_TWINS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 426
        // mon 0
        ivs 0
        abilityslot 15
        level 39
        pokemon SPECIES_PHANPY
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 39
        pokemon SPECIES_TEDDIURSA
        ballseal 0
    endparty

trainerdata 427, "Shirley"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_TEACHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 427
        // mon 0
        ivs 0
        abilityslot 32
        level 43
        pokemon SPECIES_CHATOT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 43
        pokemon SPECIES_JIGGLYPUFF
        ballseal 0
    endparty

trainerdata 428, "Nate"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SCHOOL_KID_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | F_MULTI_BATTLE_PARTNER | 0
    battletype SINGLE_BATTLE
    endentry

    party 428
        // mon 0
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_LEDIAN
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_EXEGGUTOR
        ballseal 0
    endparty

trainerdata 429, "Ricky"
    trainermontype TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_SCHOOL_KID_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 429
        // mon 0
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_AIPOM
        item ITEM_HARD_STONE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_DITTO
        item ITEM_NONE
        ballseal 0
    endparty

trainerdata 430, "Jack"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SCHOOL_KID_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 430
        // mon 0
        ivs 0
        abilityslot 15
        level 29
        pokemon SPECIES_GLOOM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 17
        pokemon SPECIES_VOLTORB
        ballseal 0
    endparty

trainerdata 431, "Jack"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SCHOOL_KID_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 431
        // mon 0
        ivs 0
        abilityslot 15
        level 38
        pokemon SPECIES_VILEPLUME
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 31
        pokemon SPECIES_ELECTRODE
        ballseal 0
    endparty

trainerdata 432, "Alan"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SCHOOL_KID_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 432
        // mon 0
        ivs 0
        abilityslot 15
        level 32
        pokemon SPECIES_TANGELA
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 30
        pokemon SPECIES_YANMA
        ballseal 0
    endparty

trainerdata 433, "Alan"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SCHOOL_KID_M
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 433
        // mon 0
        ivs 0
        abilityslot 15
        level 32
        pokemon SPECIES_XATU
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 36
        pokemon SPECIES_TANGROWTH
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 32
        pokemon SPECIES_QUAGSIRE
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 15
        level 34
        pokemon SPECIES_YANMEGA
        ballseal 0
    endparty

trainerdata 434, "Chad"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SCHOOL_KID_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 434
        // mon 0
        ivs 0
        abilityslot 15
        level 29
        pokemon SPECIES_MR_MIME
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 30
        pokemon SPECIES_MAGNEMITE
        ballseal 0
    endparty

trainerdata 435, "Chad"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SCHOOL_KID_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 435
        // mon 0
        ivs 0
        abilityslot 15
        level 39
        pokemon SPECIES_MR_MIME
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 38
        pokemon SPECIES_MAGNETON
        ballseal 0
    endparty

trainerdata 436, "Beverly"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_POKEFAN
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 436
        // mon 0
        ivs 0
        abilityslot 15
        level 31
        pokemon SPECIES_SNUBBULL
        ballseal 0
    endparty

trainerdata 437, "Beverly"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_POKEFAN
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 437
        // mon 0
        ivs 0
        abilityslot 15
        level 43
        pokemon SPECIES_GRANBULL
        ballseal 0
    endparty

trainerdata 438, "Derek"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_POKEFAN_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 438
        // mon 0
        ivs 0
        abilityslot 15
        level 24
        pokemon SPECIES_TEDDIURSA
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 30
        pokemon SPECIES_PIKACHU
        ballseal 0
    endparty

trainerdata 439, "Derek"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_POKEFAN_M
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 439
        // mon 0
        ivs 0
        abilityslot 15
        level 13
        pokemon SPECIES_PICHU
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 15
        pokemon SPECIES_TEDDIURSA
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 37
        pokemon SPECIES_PIKACHU
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 15
        level 29
        pokemon SPECIES_TEDDIURSA
        ballseal 0
    endparty

trainerdata 440, "Huey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SAILOR
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 440
        // mon 0
        ivs 0
        abilityslot 15
        level 34
        pokemon SPECIES_POLIWHIRL
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 36
        pokemon SPECIES_POLIWHIRL
        ballseal 0
    endparty

trainerdata 441, "Huey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SAILOR
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 441
        // mon 0
        ivs 0
        abilityslot 15
        level 38
        pokemon SPECIES_POLIWHIRL
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 41
        pokemon SPECIES_POLIWRATH
        ballseal 0
    endparty

trainerdata 442, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_LASS
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 442
        // mon 0
        ivs 0
        abilityslot 15
        level 21
        pokemon SPECIES_MARILL
        ballseal 0
    endparty

trainerdata 443, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_LASS
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 443
        // mon 0
        ivs 0
        abilityslot 15
        level 21
        pokemon SPECIES_MARILL
        ballseal 0
    endparty

trainerdata 444, "Reena"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_ACE_TRAINER_F_GS
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 444
        // mon 0
        ivs 50
        abilityslot 15
        level 38
        pokemon SPECIES_GROWLITHE
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 15
        level 36
        pokemon SPECIES_NIDORINA
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 32
        level 38
        pokemon SPECIES_STARYU
        ballseal 0
    endparty

trainerdata 445, "Reena"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_ACE_TRAINER_F_GS
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 445
        // mon 0
        ivs 50
        abilityslot 15
        level 47
        pokemon SPECIES_ARCANINE
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 15
        level 43
        pokemon SPECIES_NIDOQUEEN
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 32
        level 47
        pokemon SPECIES_STARMIE
        ballseal 0
    endparty

trainerdata 446, "Jose"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIRD_KEEPER_GS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 446
        // mon 0
        ivs 50
        abilityslot 15
        level 38
        pokemon SPECIES_FARFETCHD
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 15
        level 45
        pokemon SPECIES_FARFETCHD
        ballseal 0
    endparty

trainerdata 447, "Vance"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIRD_KEEPER_GS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 447
        // mon 0
        ivs 50
        abilityslot 15
        level 33
        pokemon SPECIES_HOOTHOOT
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 15
        level 32
        pokemon SPECIES_PIDGEOTTO
        ballseal 0
    endparty

trainerdata 448, "Vance"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIRD_KEEPER_GS
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 448
        // mon 0
        ivs 50
        abilityslot 15
        level 37
        pokemon SPECIES_PIDGEOTTO
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 15
        level 38
        pokemon SPECIES_PIDGEOT
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 15
        level 42
        pokemon SPECIES_NOCTOWL
        ballseal 0
    endparty

trainerdata 449, "Arnie"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_BUG_CATCHER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 449
        // mon 0
        ivs 0
        abilityslot 15
        level 43
        pokemon SPECIES_VENOMOTH
        move MOVE_DISABLE
        move MOVE_SUPERSONIC
        move MOVE_CONFUSION
        move MOVE_LEECH_LIFE
        ballseal 0
    endparty

trainerdata 450, "Wilton"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_FISHERMAN
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 450
        // mon 0
        ivs 0
        abilityslot 15
        level 32
        pokemon SPECIES_GOLDEEN
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 36
        pokemon SPECIES_SEAKING
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_SEAKING
        ballseal 0
    endparty

trainerdata 451, "Parry"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_HIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 451
        // mon 0
        ivs 0
        abilityslot 15
        level 38
        pokemon SPECIES_ONIX
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 35
        pokemon SPECIES_GRAVELER
        ballseal 0
    endparty

trainerdata 452, "Parry"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_HIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 452
        // mon 0
        ivs 0
        abilityslot 15
        level 41
        pokemon SPECIES_STEELIX
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 37
        pokemon SPECIES_GRAVELER
        ballseal 0
    endparty

trainerdata 453, "Erin"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_PICNICKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 453
        // mon 0
        ivs 0
        abilityslot 15
        level 46
        pokemon SPECIES_BELLOSSOM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 39
        pokemon SPECIES_SUNFLORA
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 48
        pokemon SPECIES_RAPIDASH
        ballseal 0
    endparty

trainerdata 454, "Irwin"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_JUGGLER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 454
        // mon 0
        ivs 0
        abilityslot 15
        level 22
        pokemon SPECIES_VOLTORB
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 26
        pokemon SPECIES_VOLTORB
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 28
        pokemon SPECIES_VOLTORB
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 32
        level 34
        pokemon SPECIES_VOLTORB
        ballseal 0
    endparty

trainerdata 455, "Irwin"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_JUGGLER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 455
        // mon 0
        ivs 0
        abilityslot 15
        level 34
        pokemon SPECIES_VOLTORB
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 36
        pokemon SPECIES_VOLTORB
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 38
        pokemon SPECIES_VOLTORB
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 32
        level 42
        pokemon SPECIES_ELECTRODE
        ballseal 0
    endparty

trainerdata 456, "Gaven"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_ACE_TRAINER_M_GS
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 456
        // mon 0
        ivs 50
        abilityslot 15
        level 34
        pokemon SPECIES_VICTREEBEL
        move MOVE_WRAP
        move MOVE_TOXIC
        move MOVE_ACID
        move MOVE_RAZOR_LEAF
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 15
        level 34
        pokemon SPECIES_KINGLER
        move MOVE_BUBBLE_BEAM
        move MOVE_STOMP
        move MOVE_GUILLOTINE
        move MOVE_PROTECT
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 15
        level 34
        pokemon SPECIES_FLAREON
        move MOVE_SAND_ATTACK
        move MOVE_QUICK_ATTACK
        move MOVE_BITE
        move MOVE_FIRE_BLAST
        ballseal 0
    endparty

trainerdata 457, "Gaven"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_ACE_TRAINER_M_GS
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 457
        // mon 0
        ivs 50
        abilityslot 15
        level 38
        pokemon SPECIES_VICTREEBEL
        move MOVE_WRAP
        move MOVE_TOXIC
        move MOVE_ACID
        move MOVE_RAZOR_LEAF
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 15
        level 39
        pokemon SPECIES_KINGLER
        move MOVE_BRINE
        move MOVE_STOMP
        move MOVE_X_SCISSOR
        move MOVE_PROTECT
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 15
        level 38
        pokemon SPECIES_FLAREON
        move MOVE_FIRE_BLAST
        move MOVE_QUICK_ATTACK
        move MOVE_SAND_ATTACK
        move MOVE_FIRE_SPIN
        ballseal 0
    endparty

trainerdata 458, "Jamie"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_ACE_TRAINER_F_GS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 458
        // mon 0
        ivs 50
        abilityslot 32
        level 38
        pokemon SPECIES_RAPIDASH
        move MOVE_STOMP
        move MOVE_FIRE_SPIN
        move MOVE_FLAME_WHEEL
        move MOVE_EMBER
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 15
        level 37
        pokemon SPECIES_AMPHAROS
        move MOVE_DISCHARGE
        move MOVE_SIGNAL_BEAM
        move MOVE_CHARGE
        move MOVE_THUNDER_PUNCH
        ballseal 0
    endparty

trainerdata 459, "Jamie"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_ACE_TRAINER_F_GS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 459
        // mon 0
        ivs 50
        abilityslot 32
        level 42
        pokemon SPECIES_RAPIDASH
        move MOVE_STOMP
        move MOVE_FIRE_SPIN
        move MOVE_FIRE_BLAST
        move MOVE_EMBER
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 15
        level 40
        pokemon SPECIES_AMPHAROS
        move MOVE_DISCHARGE
        move MOVE_SIGNAL_BEAM
        move MOVE_CHARGE
        move MOVE_THUNDER_WAVE
        ballseal 0
    endparty

trainerdata 460, "Wade"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_BUG_CATCHER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 460
        // mon 0
        ivs 0
        abilityslot 15
        level 28
        pokemon SPECIES_BUTTERFREE
        move MOVE_BUG_BITE
        move MOVE_SILVER_WIND
        move MOVE_CONFUSION
        move MOVE_GUST
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_BUTTERFREE
        move MOVE_BUG_BUZZ
        move MOVE_TAILWIND
        move MOVE_CAPTIVATE
        move MOVE_SAFEGUARD
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 37
        pokemon SPECIES_BEEDRILL
        move MOVE_BUG_BITE
        move MOVE_TWINEEDLE
        move MOVE_POISON_JAB
        move MOVE_FOCUS_ENERGY
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 15
        level 28
        pokemon SPECIES_BUTTERFREE
        move MOVE_BUG_BITE
        move MOVE_GUST
        move MOVE_SLEEP_POWDER
        move MOVE_STUN_SPORE
        ballseal 0
    endparty

trainerdata 461, "Wade"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_BUG_CATCHER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 461
        // mon 0
        ivs 0
        abilityslot 15
        level 18
        pokemon SPECIES_METAPOD
        move MOVE_BUG_BITE
        move MOVE_STRING_SHOT
        move MOVE_NONE
        move MOVE_NONE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 29
        pokemon SPECIES_BUTTERFREE
        move MOVE_PSYBEAM
        move MOVE_SILVER_WIND
        move MOVE_SUPERSONIC
        move MOVE_WHIRLWIND
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 22
        pokemon SPECIES_KAKUNA
        move MOVE_BUG_BITE
        move MOVE_POISON_STING
        move MOVE_STRING_SHOT
        move MOVE_NONE
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 15
        level 18
        pokemon SPECIES_METAPOD
        move MOVE_BUG_BITE
        move MOVE_STRING_SHOT
        move MOVE_NONE
        move MOVE_NONE
        ballseal 0
    endparty

trainerdata 462, "Ralph"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_FISHERMAN
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 462
        // mon 0
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_SEAKING
        ballseal 0
    endparty

trainerdata 463, "Ralph"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_FISHERMAN
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 463
        // mon 0
        ivs 0
        abilityslot 15
        level 45
        pokemon SPECIES_QWILFISH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 42
        pokemon SPECIES_SEAKING
        ballseal 0
    endparty

trainerdata 464, "Dana"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_LASS
    nummons 2
    item ITEM_MOOMOO_MILK
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 464
        // mon 0
        ivs 0
        abilityslot 15
        level 32
        pokemon SPECIES_FLAAFFY
        move MOVE_COTTON_SPORE
        move MOVE_CHARGE
        move MOVE_DISCHARGE
        move MOVE_THUNDER_WAVE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 31
        pokemon SPECIES_PSYDUCK
        move MOVE_WATER_PULSE
        move MOVE_SCREECH
        move MOVE_DISABLE
        move MOVE_CONFUSION
        ballseal 0
    endparty

trainerdata 465, "Dana"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_LASS
    nummons 2
    item ITEM_MOOMOO_MILK
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 465
        // mon 0
        ivs 0
        abilityslot 15
        level 36
        pokemon SPECIES_GOLDUCK
        move MOVE_WATER_PULSE
        move MOVE_DISABLE
        move MOVE_CONFUSION
        move MOVE_SCREECH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 38
        pokemon SPECIES_AMPHAROS
        move MOVE_SIGNAL_BEAM
        move MOVE_DISCHARGE
        move MOVE_THUNDER_WAVE
        move MOVE_COTTON_SPORE
        ballseal 0
    endparty

trainerdata 466, "Tiffany"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_PICNICKER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 466
        // mon 0
        ivs 0
        abilityslot 15
        level 34
        pokemon SPECIES_CLEFAIRY
        move MOVE_GRAVITY
        move MOVE_SING
        move MOVE_WAKE_UP_SLAP
        move MOVE_METRONOME
        ballseal 0
    endparty

trainerdata 467, "Tiffany"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_PICNICKER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 467
        // mon 0
        ivs 0
        abilityslot 15
        level 41
        pokemon SPECIES_CLEFABLE
        move MOVE_GRAVITY
        move MOVE_SING
        move MOVE_WAKE_UP_SLAP
        move MOVE_MOONLIGHT
        ballseal 0
    endparty

trainerdata 468, "Ross"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_SCIENTIST_GS
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | F_MULTI_BATTLE_PARTNER | 0
    battletype SINGLE_BATTLE
    endentry

    party 468
        // mon 0
        ivs 255
        abilityslot 32
        level 60
        pokemon SPECIES_MINUN
        item ITEM_CLEAR_AMULET
        move MOVE_NUZZLE
        move MOVE_SUPER_FANG
        move MOVE_AGILITY
        move MOVE_BATON_PASS
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 60
        pokemon SPECIES_ARCTOZOLT
        item ITEM_LOADED_DICE
        move MOVE_BOLT_BEAK
        move MOVE_ICICLE_SPEAR
        move MOVE_ROCK_BLAST
        move MOVE_STOMPING_TANTRUM
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 60
        pokemon SPECIES_AURORUS
        item ITEM_POWER_HERB
        move MOVE_METEOR_BEAM
        move MOVE_HYPER_VOICE
        move MOVE_THUNDERBOLT
        move MOVE_EARTH_POWER
        nature NATURE_MODEST
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 60
        pokemon SPECIES_ARCTOVISH
        item ITEM_ASSAULT_VEST
        move MOVE_FISHIOUS_REND
        move MOVE_ICICLE_CRASH
        move MOVE_PSYCHIC_FANGS
        move MOVE_IRON_HEAD
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 60
        pokemon SPECIES_ARAQUANID
        item ITEM_CUSTAP_BERRY
        move MOVE_LIQUIDATION
        move MOVE_LEECH_LIFE
        move MOVE_POISON_JAB
        move MOVE_STICKY_WEB
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 469, "Mitch"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_SCIENTIST_GS
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | F_MULTI_BATTLE_PARTNER | 0
    battletype SINGLE_BATTLE
    endentry

    party 469
        // mon 0
        ivs 255
        abilityslot 32
        level 60
        pokemon SPECIES_PLUSLE
        item ITEM_CLEAR_AMULET
        move MOVE_NUZZLE
        move MOVE_SUPER_FANG
        move MOVE_AGILITY
        move MOVE_BATON_PASS
        nature NATURE_TIMID
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 60
        pokemon SPECIES_DRACOZOLT
        item ITEM_LEFTOVERS
        move MOVE_BOLT_BEAK
        move MOVE_DRAGON_RUSH
        move MOVE_EARTHQUAKE
        move MOVE_HONE_CLAWS
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 60
        pokemon SPECIES_TYRANTRUM
        item ITEM_ADRENALINE_ORB
        move MOVE_JAW_LOCK
        move MOVE_CRUNCH
        move MOVE_ICE_FANG
        move MOVE_DRAGON_DANCE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 60
        pokemon SPECIES_DRACOVISH
        item ITEM_MYSTIC_WATER
        move MOVE_FISHIOUS_REND
        move MOVE_PSYCHIC_FANGS
        move MOVE_CRUNCH
        move MOVE_EARTHQUAKE
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 60
        pokemon SPECIES_MASQUERAIN
        item ITEM_FOCUS_SASH
        move MOVE_BUG_BUZZ
        move MOVE_SURF
        move MOVE_GIGA_DRAIN
        move MOVE_STICKY_WEB
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 470, "Gregg"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_SCIENTIST_GS
    nummons 0x80 | 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 470
        // mon 0
        ivs 255
        abilityslot 2
        level 60
        pokemon SPECIES_DITTO
        item ITEM_CHOICE_SCARF
        move MOVE_TRANSFORM
        move MOVE_NONE
        move MOVE_NONE
        move MOVE_NONE
        nature NATURE_RELAXED
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 60
        pokemon SPECIES_DITTO
        item ITEM_ASSAULT_VEST
        move MOVE_TRANSFORM
        move MOVE_NONE
        move MOVE_NONE
        move MOVE_NONE
        nature NATURE_RELAXED
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 60
        pokemon SPECIES_DITTO
        item ITEM_LEFTOVERS
        move MOVE_TRANSFORM
        move MOVE_NONE
        move MOVE_NONE
        move MOVE_NONE
        nature NATURE_RELAXED
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 60
        pokemon SPECIES_DITTO
        item ITEM_EJECT_BUTTON
        move MOVE_TRANSFORM
        move MOVE_NONE
        move MOVE_NONE
        move MOVE_NONE
        nature NATURE_RELAXED
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 60
        pokemon SPECIES_DITTO
        item ITEM_FOCUS_SASH
        move MOVE_TRANSFORM
        move MOVE_NONE
        move MOVE_NONE
        move MOVE_NONE
        nature NATURE_RELAXED
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 2
        level 60
        pokemon SPECIES_DITTO
        item ITEM_WEAKNESS_POLICY
        move MOVE_TRANSFORM
        move MOVE_NONE
        move MOVE_NONE
        move MOVE_NONE
        nature NATURE_RELAXED
        ballseal 0
    endparty

trainerdata 471, "Garett" // GRT3F 2
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_SCIENTIST_GS
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 471
        // mon 0
        ivs 255
        abilityslot 2
        level 65
        pokemon SPECIES_ELECTIVIRE
        item ITEM_FOCUS_SASH
        move MOVE_THUNDER_PUNCH
        move MOVE_ICE_PUNCH
        move MOVE_FIRE_PUNCH
        move MOVE_VOLT_SWITCH
        nature NATURE_TIMID
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 65
        pokemon SPECIES_EXCADRILL
        item ITEM_LEFTOVERS
        move MOVE_EARTHQUAKE
        move MOVE_IRON_HEAD
        move MOVE_RAPID_SPIN
        move MOVE_SWORDS_DANCE
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 65
        pokemon SPECIES_MAGMORTAR
        item ITEM_ASSAULT_VEST
        move MOVE_FLARE_BLITZ
        move MOVE_THUNDERBOLT
        move MOVE_DUAL_CHOP
        move MOVE_KNOCK_OFF
        nature NATURE_MODEST
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 65
        pokemon SPECIES_CLAYDOL
        item ITEM_CLEAR_AMULET
        move MOVE_EARTHQUAKE
        move MOVE_PSYCHIC
        move MOVE_EXPLOSION
        move MOVE_SHORE_UP
        nature NATURE_HASTY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 65
        pokemon SPECIES_HYPNO
        item ITEM_LEFTOVERS
        move MOVE_PSYCHIC
        move MOVE_FIRE_PUNCH
        move MOVE_THUNDER_PUNCH
        move MOVE_CALM_MIND
        nature NATURE_MODEST
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 65
        pokemon SPECIES_GARDEVOIR
        item ITEM_GARDEVOIRITE
        move MOVE_RETURN
        move MOVE_PSYCHIC
        move MOVE_THUNDERBOLT
        move MOVE_ICE_PUNCH
        nature NATURE_TIMID
        ballseal 0
    endparty

trainerdata 472, "Trenton" // GRT4F 2
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_SCIENTIST_GS
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 472
        // mon 0
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_SCOLIPEDE
        item ITEM_FOCUS_SASH
        move MOVE_SLUDGE_BOMB
        move MOVE_EARTHQUAKE
        move MOVE_SPIKES
        move MOVE_TOXIC_SPIKES
        nature NATURE_ADAMANT
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 66
        pokemon SPECIES_YANMEGA
        item ITEM_LIFE_ORB
        move MOVE_SCALE_SHOT
        move MOVE_PSYCHIC
        move MOVE_GIGA_DRAIN
        move MOVE_PURSUIT
        nature NATURE_MODEST
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 66
        pokemon SPECIES_FERROTHORN
        item ITEM_CUSTAP_BERRY
        move MOVE_GYRO_BALL
        move MOVE_BODY_PRESS
        move MOVE_EXPLOSION
        move MOVE_STEALTH_ROCK
        nature NATURE_BRAVE
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 32
        level 66
        pokemon SPECIES_SCYTHER
        item ITEM_EVIOLITE
        move MOVE_SILVER_WIND
        move MOVE_DUAL_WINGBEAT
        move MOVE_CLOSE_COMBAT
        move MOVE_SWORDS_DANCE
        nature NATURE_JOLLY
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_OVERQWIL
        item ITEM_BLACK_SLUDGE
        move MOVE_BARB_BARRAGE
        move MOVE_SHADOW_BALL
        move MOVE_MUD_SHOT
        move MOVE_SWORDS_DANCE
        nature NATURE_TIMID
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 32
        level 66
        pokemon SPECIES_MAWILE
        item ITEM_MAWILITE
        move MOVE_IRON_HEAD
        move MOVE_SHADOW_BALL
        move MOVE_SLUDGE_BOMB
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 473, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SUPER_NERD
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 473
        // mon 0
        ivs 0
        abilityslot 15
        level 22
        pokemon SPECIES_KOFFING
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 22
        pokemon SPECIES_KOFFING
        ballseal 0
    endparty

trainerdata 474, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SUPER_NERD
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 474
        // mon 0
        ivs 0
        abilityslot 15
        level 24
        pokemon SPECIES_DITTO
        ballseal 0
    endparty

trainerdata 475, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SUPER_NERD
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 475
        // mon 0
        ivs 0
        abilityslot 32
        level 20
        pokemon SPECIES_MAGNEMITE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 20
        pokemon SPECIES_MAGNEMITE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 20
        pokemon SPECIES_MAGNEMITE
        ballseal 0
    endparty

trainerdata 476, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SUPER_NERD
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 476
        // mon 0
        ivs 0
        abilityslot 15
        level 27
        pokemon SPECIES_MAGNEMITE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 27
        pokemon SPECIES_MAGNEMITE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 27
        pokemon SPECIES_MAGNEMITE
        ballseal 0
    endparty

trainerdata 477, "Mickey"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_SUPER_NERD
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 477
        // mon 0
        ivs 0
        abilityslot 32
        level 30
        pokemon SPECIES_PORYGON
        move MOVE_CONVERSION
        move MOVE_CONVERSION_2
        move MOVE_RECOVER
        move MOVE_TRI_ATTACK
        ballseal 0
    endparty

trainerdata 478, "Ariana"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_EXECUTIVE_ARIANA
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 478
        // mon 0
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_TALONFLAME
        item ITEM_NONE
        move MOVE_FLARE_BLITZ
        move MOVE_ACROBATICS
        move MOVE_SOLAR_BEAM
        move MOVE_U_TURN
        nature NATURE_RASH
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 66
        monwithform SPECIES_ARCANINE, 1
        item ITEM_EJECT_PACK
        move MOVE_HEAD_SMASH
        move MOVE_CLOSE_COMBAT
        move MOVE_EXTREME_SPEED
        move MOVE_MORNING_SUN
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 66
        pokemon SPECIES_VOLCARONA
        item ITEM_CHARTI_BERRY
        move MOVE_FIERY_DANCE
        move MOVE_GIGA_DRAIN
        move MOVE_WILD_CHARGE
        move MOVE_QUIVER_DANCE
        nature NATURE_TIMID
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_VOLCANION
        item ITEM_ASSAULT_VEST
        move MOVE_WEATHER_BALL
        move MOVE_STEAM_ERUPTION
        move MOVE_STRANGE_STEAM
        move MOVE_WILD_CHARGE
        nature NATURE_MODEST
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_ENTEI
        item ITEM_CLEAR_AMULET
        move MOVE_SACRED_FIRE
        move MOVE_STOMPING_TANTRUM
        move MOVE_EXTREME_SPEED
        move MOVE_MORNING_SUN
        nature NATURE_TIMID
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 66
        pokemon SPECIES_HOUNDOOM
        item ITEM_HOUNDOOMINITE
        move MOVE_FIERY_WRATH
        move MOVE_FLAMETHROWER
        move MOVE_SOLAR_BEAM
        move MOVE_NASTY_PLOT
        nature NATURE_TIMID
        ballseal 0
    endparty

trainerdata 479, "Ariana"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_EXECUTIVE_ARIANA
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | F_DOUBLE_BATTLE | 0
    battletype SINGLE_BATTLE
    endentry

    party 479
        // mon 0
        ivs 255
        abilityslot 32
        level 60
        pokemon SPECIES_ENTEI
        item ITEM_CHARCOAL
        move MOVE_SACRED_FIRE
        move MOVE_ROCK_SLIDE
        move MOVE_PLAY_ROUGH
        move MOVE_EXTREME_SPEED
        nature NATURE_ADAMANT
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 60
        pokemon SPECIES_TALONFLAME
        item ITEM_NONE
        move MOVE_TEMPER_FLARE
        move MOVE_ACROBATICS
        move MOVE_FEATHER_DANCE
        move MOVE_TAILWIND
        nature NATURE_ADAMANT
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 60
        pokemon SPECIES_VOLCARONA
        item ITEM_CHARTI_BERRY
        move MOVE_BUG_BUZZ
        move MOVE_HEAT_WAVE
        move MOVE_GIGA_DRAIN
        move MOVE_QUIVER_DANCE
        nature NATURE_MODEST
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 60
        monwithform SPECIES_ARCANINE, 1
        item ITEM_ASSAULT_VEST
        move MOVE_HEAD_SMASH
        move MOVE_FLARE_BLITZ
        move MOVE_ROCK_SLIDE
        move MOVE_EXTREME_SPEED
        nature NATURE_JOLLY
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 60
        pokemon SPECIES_VOLCANION
        item ITEM_LEFTOVERS
        move MOVE_HEAT_WAVE
        move MOVE_HYDRO_STEAM
        move MOVE_EARTH_POWER
        move MOVE_SLUDGE_BOMB
        nature NATURE_MODEST
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 2
        level 60
        pokemon SPECIES_HOUNDOOM
        item ITEM_HOUNDOOMINITE
        move MOVE_FIERY_WRATH
        move MOVE_HEAT_WAVE
        move MOVE_SLUDGE_BOMB
        move MOVE_SOLAR_BEAM
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 480, "Diana"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_SKIER
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 480
        // mon 0
        ivs 255
        abilityslot 15
        level 61
        pokemon SPECIES_DEWGONG
        item ITEM_LEFTOVERS
        move MOVE_BLIZZARD
        move MOVE_WHIRLPOOL
        move MOVE_PERISH_SONG
        move MOVE_FLIP_TURN
        nature NATURE_SASSY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 61
        pokemon SPECIES_CRABOMINABLE
        item ITEM_ASSAULT_VEST
        move MOVE_ICE_HAMMER
        move MOVE_DRAIN_PUNCH
        move MOVE_EARTHQUAKE
        move MOVE_THUNDER_PUNCH
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 61
        pokemon SPECIES_GLACEON
        item ITEM_LEFTOVERS
        move MOVE_BLIZZARD
        move MOVE_FREEZE_DRY
        move MOVE_SHADOW_BALL
        move MOVE_CALM_MIND
        nature NATURE_MODEST
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 61
        pokemon SPECIES_FROSLASS
        item ITEM_BRIGHT_POWDER
        move MOVE_BLIZZARD
        move MOVE_SHADOW_BALL
        move MOVE_THUNDER_WAVE
        move MOVE_SPIKES
        nature NATURE_TIMID
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 61
        pokemon SPECIES_MR_RIME
        item ITEM_LEFTOVERS
        move MOVE_BLIZZARD
        move MOVE_PSYCHIC
        move MOVE_FREEZE_DRY
        move MOVE_SLACK_OFF
        nature NATURE_CALM
        ballseal 0
    endparty

trainerdata 481, "Jill"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_SKIER
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 481
        // mon 0
        ivs 255
        abilityslot 15
        level 62
        pokemon SPECIES_PILOSWINE
        item ITEM_EVIOLITE
        move MOVE_ICICLE_CRASH
        move MOVE_EARTHQUAKE
        move MOVE_ICE_SHARD
        move MOVE_STEALTH_ROCK
        nature NATURE_CAREFUL
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 62
        pokemon SPECIES_FROSMOTH
        item ITEM_CHARTI_BERRY
        move MOVE_BLIZZARD
        move MOVE_BUG_BUZZ
        move MOVE_GIGA_DRAIN
        move MOVE_QUIVER_DANCE
        nature NATURE_MODEST
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 32
        level 62
        pokemon SPECIES_WALREIN
        item ITEM_ASSAULT_VEST
        move MOVE_BLIZZARD
        move MOVE_SURF
        move MOVE_EARTHQUAKE
        move MOVE_SUPER_FANG
        nature NATURE_QUIET
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 15
        level 62
        monwithform SPECIES_AVALUGG, 1
        item ITEM_LEFTOVERS
        move MOVE_JAW_LOCK
        move MOVE_MOUNTAIN_GALE
        move MOVE_CRUNCH
        move MOVE_RECOVER
        nature NATURE_ADAMANT
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 15
        level 62
        pokemon SPECIES_SNEASEL
        item ITEM_EVIOLITE
        move MOVE_KNOCK_OFF
        move MOVE_ICICLE_CRASH
        move MOVE_LOW_KICK
        move MOVE_SWORDS_DANCE
        nature NATURE_JOLLY
        ballseal 0
    endparty

trainerdata 482, "Deandre"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_BOARDER
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 482
        // mon 0
        ivs 255
        abilityslot 2
        level 62
        pokemon SPECIES_JYNX
        item ITEM_FOCUS_SASH
        move MOVE_BLIZZARD
        move MOVE_PSYCHIC
        move MOVE_LOVELY_KISS
        move MOVE_NASTY_PLOT
        nature NATURE_HASTY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 62
        pokemon SPECIES_CASTFORM
        item ITEM_ASSAULT_VEST
        move MOVE_BLIZZARD
        move MOVE_FLAMETHROWER
        move MOVE_THUNDERBOLT
        move MOVE_ENERGY_BALL
        nature NATURE_MODEST
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 62
        monwithform SPECIES_ROTOM, 3
        item ITEM_LIFE_ORB
        move MOVE_BLIZZARD
        move MOVE_THUNDERBOLT
        move MOVE_SHADOW_BALL
        move MOVE_NASTY_PLOT
        nature NATURE_TIMID
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 62
        pokemon SPECIES_EISCUE
        item ITEM_SITRUS_BERRY
        move MOVE_ICICLE_CRASH
        move MOVE_IRON_HEAD
        move MOVE_ZEN_HEADBUTT
        move MOVE_BELLY_DRUM
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 62
        pokemon SPECIES_LAPRAS
        item ITEM_LEFTOVERS
        move MOVE_BLIZZARD
        move MOVE_FREEZE_DRY
        move MOVE_REST
        move MOVE_SLEEP_TALK
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 483, "Patton"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_BOARDER
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 483
        // mon 0
        ivs 255
        abilityslot 15
        level 61
        monwithform SPECIES_NINETALES, 1
        item ITEM_BRIGHT_POWDER
        move MOVE_BLIZZARD
        move MOVE_MOONBLAST
        move MOVE_FREEZE_DRY
        move MOVE_NASTY_PLOT
        nature NATURE_TIMID
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 61
        pokemon SPECIES_VANILLUXE
        item ITEM_NEVER_MELT_ICE
        move MOVE_BLIZZARD
        move MOVE_FREEZE_DRY
        move MOVE_FLASH_CANNON
        move MOVE_EXPLOSION
        nature NATURE_TIMID
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 61
        pokemon SPECIES_AVALUGG
        item ITEM_LEFTOVERS
        move MOVE_MOUNTAIN_GALE
        move MOVE_EARTHQUAKE
        move MOVE_BODY_PRESS
        move MOVE_RECOVER
        nature NATURE_IMPISH
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 61
        pokemon SPECIES_BEARTIC
        item ITEM_LIFE_ORB
        move MOVE_ICICLE_CRASH
        move MOVE_CLOSE_COMBAT
        move MOVE_CRUNCH
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 61
        monwithform SPECIES_SANDSLASH, 1
        item ITEM_LIFE_ORB
        move MOVE_ICICLE_CRASH
        move MOVE_IRON_HEAD
        move MOVE_DRILL_RUN
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 484, "Gerardo"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_BOARDER
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 484
        // mon 0
        ivs 255
        abilityslot 2
        level 63
        pokemon SPECIES_DELIBIRD
        item ITEM_FOCUS_SASH
        move MOVE_PRESENT
        move MOVE_SPIKES
        move MOVE_FAKE_OUT
        move MOVE_AURORA_VEIL
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 63
        pokemon SPECIES_CLOYSTER
        item ITEM_WHITE_HERB
        move MOVE_ICICLE_SPEAR
        move MOVE_LIQUIDATION
        move MOVE_ROCK_BLAST
        move MOVE_SHELL_SMASH
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 63
        pokemon SPECIES_CRYOGONAL
        item ITEM_NEVER_MELT_ICE
        move MOVE_BLIZZARD
        move MOVE_FREEZE_DRY
        move MOVE_RECOVER
        move MOVE_AURORA_VEIL
        nature NATURE_BOLD
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 63
        pokemon SPECIES_CETITAN
        item ITEM_SITRUS_BERRY
        move MOVE_ICICLE_CRASH
        move MOVE_EARTHQUAKE
        move MOVE_ICE_SHARD
        move MOVE_BELLY_DRUM
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 63
        pokemon SPECIES_BAXCALIBUR
        item ITEM_LOADED_DICE
        move MOVE_SCALE_SHOT
        move MOVE_ICICLE_SPEAR
        move MOVE_EARTHQUAKE
        move MOVE_SWORDS_DANCE
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 63
        pokemon SPECIES_GLALIE
        item ITEM_GLALITITE
        move MOVE_FRUSTRATION
        move MOVE_ROCK_SLIDE
        move MOVE_IRON_HEAD
        move MOVE_ROCK_POLISH
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 485, "Archer"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET 
    trainerclass TRAINERCLASS_EXECUTIVE_ARCHER
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 485
        // mon 0
        ivs 255
        abilityslot 15
        level 66
        pokemon SPECIES_KINGDRA
        item ITEM_MYSTIC_WATER
        move MOVE_WAVE_CRASH
        move MOVE_DRAGON_PULSE
        move MOVE_HURRICANE
        move MOVE_FLIP_TURN
        nature NATURE_HASTY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 66
        pokemon SPECIES_LANTURN
        item ITEM_ASSAULT_VEST
        move MOVE_SCALD
        move MOVE_THUNDER
        move MOVE_ICE_BEAM
        move MOVE_VOLT_SWITCH
        nature NATURE_MODEST
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_METAGROSS
        item ITEM_ASSAULT_VEST
        move MOVE_METEOR_MASH
        move MOVE_STOMPING_TANTRUM
        move MOVE_SHADOW_CLAW
        move MOVE_BULLET_PUNCH
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_SALAMENCE
        item ITEM_LEFTOVERS
        move MOVE_HURRICANE
        move MOVE_EARTHQUAKE
        move MOVE_ROCK_SLIDE
        move MOVE_DRAGON_DANCE
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 66
        pokemon SPECIES_SUICUNE
        item ITEM_LEFTOVERS
        move MOVE_SCALD
        move MOVE_ICE_BEAM
        move MOVE_CALM_MIND
        move MOVE_LIFE_DEW
        nature NATURE_BOLD
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 66
        pokemon SPECIES_SWAMPERT
        item ITEM_SWAMPERTITE
        move MOVE_HYDRO_CANNON
        move MOVE_EARTHQUAKE
        move MOVE_SLUDGE_WAVE
        move MOVE_BULK_UP
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 486, "Proton"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass TRAINERCLASS_EXECUTIVE_PROTON
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 486
        // mon 0
        ivs 255
        abilityslot 2
        level 26
        pokemon SPECIES_MEOWSTIC
        item ITEM_EJECT_BUTTON
        move MOVE_PSYSHOCK
        move MOVE_REFLECT
        move MOVE_LIGHT_SCREEN
        move MOVE_THUNDER_WAVE
        nature NATURE_BOLD
        additionalflags 0
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 26
        pokemon SPECIES_GABITE
        item ITEM_DRAGON_FANG
        move MOVE_DUAL_CHOP
        move MOVE_BULLDOZE
        move MOVE_BITE
        move MOVE_SWORDS_DANCE
        nature NATURE_JOLLY
        additionalflags 0
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 26
        pokemon SPECIES_LUXIO
        item ITEM_SILK_SCARF
        move MOVE_SPARK
        move MOVE_FACADE
        move MOVE_PURSUIT
        move MOVE_VOLT_SWITCH
        nature NATURE_ADAMANT
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 16
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 2
        level 26
        pokemon SPECIES_TANGELA
        item ITEM_LEFTOVERS
        move MOVE_GIGA_DRAIN
        move MOVE_LEECH_SEED
        move MOVE_ANCIENT_POWER
        move MOVE_SYNTHESIS
        nature NATURE_BOLD
        additionalflags 0
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 26
        pokemon SPECIES_GYARADOS
        item ITEM_WACAN_BERRY
        move MOVE_BITE
        move MOVE_BOUNCE
        move MOVE_BULLDOZE
        move MOVE_DRAGON_RAGE
        nature NATURE_JOLLY
        additionalflags 0
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 32
        level 26
        pokemon SPECIES_HERACROSS
        item ITEM_COBA_BERRY
        move MOVE_BUG_BITE
        move MOVE_BRICK_BREAK
        move MOVE_FACADE
        move MOVE_PURSUIT
        nature NATURE_ADAMANT
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 16
        ballseal 0
    endparty

trainerdata 487, "Petrel"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_EXECUTIVE_PETREL
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | F_PRIORITIZE_STATUS_MOVES | F_HARRASSMENT | 0
    battletype SINGLE_BATTLE
    endentry

    party 487
        // mon 0
        ivs 255
        abilityslot 2
        level 66
        monwithform SPECIES_SLOWKING, 1
        item ITEM_BLACK_SLUDGE
        move MOVE_ZEN_HEADBUTT
        move MOVE_FLAMETHROWER
        move MOVE_SURF
        move MOVE_NASTY_PLOT
        setivs 31, 0, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 0, 0, 0, 0, 0, 0
        nature NATURE_QUIET
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 66
        monwithform SPECIES_GOODRA, 1
        item ITEM_LEFTOVERS
        move MOVE_DRAGON_TAIL
        move MOVE_ICE_BEAM
        move MOVE_PROTECT
        move MOVE_SLACK_OFF
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 0, 0, 0, 0, 0, 0
        nature NATURE_SASSY
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 66
        monwithform SPECIES_MAROWAK, 1
        item ITEM_THICK_CLUB
        move MOVE_SHADOW_BONE
        move MOVE_BONEMERANG
        move MOVE_WILL_O_WISP
        move MOVE_SWORDS_DANCE
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 0, 0, 0, 0, 0, 0
        nature NATURE_BRAVE
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 32
        level 66
        pokemon SPECIES_SHIINOTIC
        item ITEM_LEFTOVERS
        move MOVE_MOONBLAST
        move MOVE_GIGA_DRAIN
        move MOVE_LEECH_SEED
        move MOVE_SPORE
        setivs 31, 0, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 0, 0, 0, 0, 0, 0
        nature NATURE_RELAXED
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_DITTO
        item ITEM_MACHO_BRACE
        move MOVE_TRANSFORM
        move MOVE_NONE
        move MOVE_NONE
        move MOVE_NONE
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 0, 0, 0, 0, 0, 0
        nature NATURE_BOLD
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_SABLEYE
        item ITEM_SABLENITE
        move MOVE_DARK_PULSE
        move MOVE_FIRE_PUNCH
        move MOVE_NASTY_PLOT
        move MOVE_RECOVER
        setivs 31, 0, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 0, 0, 0, 0, 0, 0
        nature NATURE_QUIET
        ballseal 0
    endparty

trainerdata 488, "Petrel"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_EXECUTIVE_PETREL
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | F_PRIORITIZE_STATUS_MOVES | 0
    battletype SINGLE_BATTLE
    endentry

    party 488
        // mon 0
        ivs 255
        abilityslot 2
        level 60
        monwithform SPECIES_SLOWKING, 1
        item ITEM_BLACK_SLUDGE
        move MOVE_SLUDGE_BOMB
        move MOVE_PSYCHIC
        move MOVE_FLAMETHROWER
        move MOVE_NASTY_PLOT
        setivs 31, 0, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 0, 0, 0, 0, 0, 0
        nature NATURE_QUIET
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 60
        monwithform SPECIES_GOODRA, 1
        item ITEM_LEFTOVERS
        move MOVE_IRON_HEAD
        move MOVE_DRAGON_CLAW
        move MOVE_BODY_PRESS
        move MOVE_SLACK_OFF
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 0, 0, 0, 0, 0, 0
        nature NATURE_BRAVE
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 60
        monwithform SPECIES_MAROWAK, 1
        item ITEM_THICK_CLUB
        move MOVE_FLARE_BLITZ
        move MOVE_SHADOW_BONE
        move MOVE_STOMPING_TANTRUM
        move MOVE_SWORDS_DANCE
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 0, 0, 0, 0, 0, 0
        nature NATURE_BRAVE
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 32
        level 60
        pokemon SPECIES_CLOYSTER
        item ITEM_RAZOR_FANG
        move MOVE_ICICLE_SPEAR
        move MOVE_RAZOR_SHELL
        move MOVE_ROCK_BLAST
        move MOVE_CURSE
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 0, 0, 0, 0, 0, 0
        nature NATURE_BRAVE
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 60
        pokemon SPECIES_DITTO
        item ITEM_MACHO_BRACE
        move MOVE_TRANSFORM
        move MOVE_NONE
        move MOVE_NONE
        move MOVE_NONE
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 0, 0, 0, 0, 0, 0
        nature NATURE_BOLD
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 2
        level 60
        pokemon SPECIES_SABLEYE
        item ITEM_SABLENITE
        move MOVE_DARK_PULSE
        move MOVE_RECOVER
        move MOVE_WILL_O_WISP
        move MOVE_CALM_MIND
        setivs 31, 0, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 0, 0, 0, 0, 0, 0
        nature NATURE_SASSY
        ballseal 0
    endparty

trainerdata 489, "Silver"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_RIVAL
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 489
        // mon 0
        ivs 250
        abilityslot 15
        level 55
        pokemon SPECIES_SNEASEL
        move MOVE_ICY_WIND
        move MOVE_SHADOW_CLAW
        move MOVE_FEINT_ATTACK
        move MOVE_METAL_CLAW
        ballseal 0

        // mon 1
        ivs 250
        abilityslot 15
        level 58
        pokemon SPECIES_CROBAT
        move MOVE_TOXIC
        move MOVE_BITE
        move MOVE_CONFUSE_RAY
        move MOVE_AIR_CUTTER
        ballseal 0

        // mon 2
        ivs 250
        abilityslot 15
        level 55
        pokemon SPECIES_MAGNETON
        move MOVE_DISCHARGE
        move MOVE_MIRROR_SHOT
        move MOVE_THUNDER_WAVE
        move MOVE_MAGNET_BOMB
        ballseal 0

        // mon 3
        ivs 250
        abilityslot 15
        level 56
        pokemon SPECIES_GENGAR
        move MOVE_DARK_PULSE
        move MOVE_SLUDGE_BOMB
        move MOVE_SHADOW_BALL
        move MOVE_CONFUSE_RAY
        ballseal 0

        // mon 4
        ivs 250
        abilityslot 15
        level 56
        pokemon SPECIES_ALAKAZAM
        move MOVE_RECOVER
        move MOVE_FOCUS_BLAST
        move MOVE_PSYCHIC
        move MOVE_REFLECT
        ballseal 0

        // mon 5
        ivs 250
        abilityslot 15
        level 60
        pokemon SPECIES_MEGANIUM
        move MOVE_PETAL_DANCE
        move MOVE_BODY_SLAM
        move MOVE_LIGHT_SCREEN
        move MOVE_SYNTHESIS
        ballseal 0
    endparty

trainerdata 490, "Silver"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_RIVAL
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 490
        // mon 0
        ivs 250
        abilityslot 15
        level 55
        pokemon SPECIES_SNEASEL
        move MOVE_ICY_WIND
        move MOVE_SHADOW_CLAW
        move MOVE_FEINT_ATTACK
        move MOVE_METAL_CLAW
        ballseal 0

        // mon 1
        ivs 250
        abilityslot 15
        level 58
        pokemon SPECIES_CROBAT
        move MOVE_TOXIC
        move MOVE_BITE
        move MOVE_CONFUSE_RAY
        move MOVE_AIR_CUTTER
        ballseal 0

        // mon 2
        ivs 250
        abilityslot 15
        level 55
        pokemon SPECIES_MAGNETON
        move MOVE_DISCHARGE
        move MOVE_MIRROR_SHOT
        move MOVE_THUNDER_WAVE
        move MOVE_MAGNET_BOMB
        ballseal 0

        // mon 3
        ivs 250
        abilityslot 15
        level 56
        pokemon SPECIES_GENGAR
        move MOVE_DARK_PULSE
        move MOVE_SLUDGE_BOMB
        move MOVE_SHADOW_BALL
        move MOVE_CONFUSE_RAY
        ballseal 0

        // mon 4
        ivs 250
        abilityslot 15
        level 56
        pokemon SPECIES_ALAKAZAM
        move MOVE_RECOVER
        move MOVE_FOCUS_BLAST
        move MOVE_PSYCHIC
        move MOVE_REFLECT
        ballseal 0

        // mon 5
        ivs 250
        abilityslot 15
        level 60
        pokemon SPECIES_TYPHLOSION
        move MOVE_ROLLOUT
        move MOVE_FLAMETHROWER
        move MOVE_WILL_O_WISP
        move MOVE_SWIFT
        ballseal 0
    endparty

trainerdata 491, "Silver"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_RIVAL
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 491
        // mon 0
        ivs 250
        abilityslot 15
        level 55
        pokemon SPECIES_SNEASEL
        item ITEM_NONE
        move MOVE_ICY_WIND
        move MOVE_SHADOW_CLAW
        move MOVE_FEINT_ATTACK
        move MOVE_METAL_CLAW
        ballseal 0

        // mon 1
        ivs 250
        abilityslot 15
        level 58
        pokemon SPECIES_CROBAT
        item ITEM_NONE
        move MOVE_TOXIC
        move MOVE_BITE
        move MOVE_CONFUSE_RAY
        move MOVE_AIR_CUTTER
        ballseal 0

        // mon 2
        ivs 250
        abilityslot 15
        level 55
        pokemon SPECIES_MAGNETON
        item ITEM_NONE
        move MOVE_DISCHARGE
        move MOVE_MIRROR_SHOT
        move MOVE_THUNDER_WAVE
        move MOVE_MAGNET_BOMB
        ballseal 0

        // mon 3
        ivs 250
        abilityslot 15
        level 56
        pokemon SPECIES_GENGAR
        item ITEM_NONE
        move MOVE_DARK_PULSE
        move MOVE_SLUDGE_BOMB
        move MOVE_SHADOW_BALL
        move MOVE_CONFUSE_RAY
        ballseal 0

        // mon 4
        ivs 250
        abilityslot 15
        level 56
        pokemon SPECIES_ALAKAZAM
        item ITEM_NONE
        move MOVE_RECOVER
        move MOVE_FOCUS_BLAST
        move MOVE_PSYCHIC
        move MOVE_REFLECT
        ballseal 0

        // mon 5
        ivs 250
        abilityslot 15
        level 60
        pokemon SPECIES_FERALIGATR
        item ITEM_NONE
        move MOVE_CRUNCH
        move MOVE_AQUA_TAIL
        move MOVE_SLASH
        move MOVE_ICE_FANG
        ballseal 0
    endparty

trainerdata 492, "Alex"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_POKEFAN_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 492
        // mon 0
        ivs 0
        abilityslot 32
        level 29
        pokemon SPECIES_NIDOKING
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 29
        pokemon SPECIES_SLOWKING
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 65
        pokemon SPECIES_MAGIKARP
        ballseal 0
    endparty

trainerdata 493, "Edith"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET 
    trainerclass TRAINERCLASS_MEDIUM
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 493
        // mon 0
        ivs 255
        abilityslot 15
        level 41
        pokemon SPECIES_SPIRITOMB
        item ITEM_LEFTOVERS
        move MOVE_FOUL_PLAY
        move MOVE_SHADOW_SNEAK
        move MOVE_RECOVER
        move MOVE_WILL_O_WISP
        nature NATURE_CAREFUL
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 41
        pokemon SPECIES_FROSLASS
        item ITEM_NEVER_MELT_ICE
        move MOVE_ICE_BEAM
        move MOVE_SHADOW_BALL
        move MOVE_DRAINING_KISS
        move MOVE_ICE_SHARD
        nature NATURE_CAREFUL
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 42
        pokemon SPECIES_DOUBLADE
        item ITEM_LEFTOVERS
        move MOVE_SHADOW_SNEAK
        move MOVE_NIGHT_SLASH
        move MOVE_SLASH
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 494, "Georgina"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_MEDIUM
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 494
        // mon 0
        ivs 255
        abilityslot 15
        level 41
        pokemon SPECIES_DUSCLOPS
        item ITEM_EVIOLITE
        move MOVE_HEX
        move MOVE_LEECH_LIFE
        move MOVE_WILL_O_WISP
        move MOVE_TELEPORT
        nature NATURE_SASSY
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 32
        level 41
        monwithform SPECIES_BASCULEGION, 1
        item ITEM_LEFTOVERS
        move MOVE_SURF
        move MOVE_SHADOW_BALL
        move MOVE_ICE_BEAM
        move MOVE_SUBSTITUTE
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 495, "Boy"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_PASSERBY
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 495
        // mon 0
        ivs 255
        abilityslot 15
        level 5
        pokemon SPECIES_CHIKORITA
        item ITEM_EVIOLITE
        nature NATURE_CALM
        ballseal 0
    endparty

trainerdata 496, "Boy"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_PASSERBY
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 496
        // mon 0
        ivs 255
        abilityslot 2
        level 5
        pokemon SPECIES_CYNDAQUIL
        item ITEM_EVIOLITE
        nature NATURE_TIMID
        ballseal 0
    endparty

trainerdata 497, "Boy"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_PASSERBY
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 497
        // mon 0
        ivs 255
        abilityslot 15
        level 5
        pokemon SPECIES_TOTODILE
        item ITEM_EVIOLITE
        nature NATURE_ADAMANT
        ballseal 0 
    endparty

trainerdata 498, "Eusine"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_MYSTERY_MAN
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 498
        // mon 0
        ivs 255
        abilityslot 15
        level 50
        pokemon SPECIES_SILVALLY
        item ITEM_SILK_SCARF
        move MOVE_THUNDERBOLT
        move MOVE_ICE_BEAM
        move MOVE_EXPLOSION
        move MOVE_PARTING_SHOT
        nature NATURE_HASTY
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 50
        pokemon SPECIES_CARBINK
        item ITEM_CHESTO_BERRY
        move MOVE_DIAMOND_STORM
        move MOVE_BODY_PRESS
        move MOVE_STEALTH_ROCK
        move MOVE_ROCK_POLISH
        nature NATURE_CAREFUL
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 2
        level 50
        pokemon SPECIES_PHIONE
        item ITEM_LEFTOVERS
        move MOVE_SCALD
        move MOVE_ICE_BEAM
        move MOVE_TAKE_HEART
        move MOVE_RECOVER
        nature NATURE_BOLD
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 50
        pokemon SPECIES_SHEDINJA
        item ITEM_FOCUS_SASH
        move MOVE_X_SCISSOR
        move MOVE_WILL_O_WISP
        move MOVE_AGILITY
        move MOVE_BATON_PASS
        nature NATURE_ADAMANT
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 15
        level 50
        pokemon SPECIES_URSHIFU
        item ITEM_PUNCHING_GLOVE
        move MOVE_WICKED_BLOW
        move MOVE_DRAIN_PUNCH
        move MOVE_POISON_JAB
        move MOVE_SWORDS_DANCE
        nature NATURE_JOLLY
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 15
        level 50
        monwithform SPECIES_URSALUNA, 1
        item ITEM_LEFTOVERS
        move MOVE_BLOOD_MOON
        move MOVE_EARTH_POWER
        move MOVE_CALM_MIND
        move MOVE_MOONLIGHT
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 499, "Grunt"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_TEAM_ROCKET
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | F_DOUBLE_BATTLE | F_HARRASSMENT | 0
    battletype SINGLE_BATTLE
    endentry

    party 499
        // mon 0
        ivs 255
        abilityslot 15
        level 60
        pokemon SPECIES_CHERRIM
        item ITEM_OCCA_BERRY
        move MOVE_SOLAR_BEAM
        move MOVE_DAZZLING_GLEAM
        move MOVE_WEATHER_BALL
        move MOVE_PROTECT
        nature NATURE_TIMID
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 60
        pokemon SPECIES_HELIOLISK
        item ITEM_LIFE_ORB
        move MOVE_HYPER_VOICE
        move MOVE_ELECTROWEB
        move MOVE_WEATHER_BALL
        move MOVE_GRASS_KNOT
        nature NATURE_TIMID
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 32
        level 60
        pokemon SPECIES_DUGTRIO
        item ITEM_FOCUS_SASH
        move MOVE_HIGH_HORSEPOWER
        move MOVE_ROCK_SLIDE
        move MOVE_FOUL_PLAY
        move MOVE_ENDURE
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 60
        pokemon SPECIES_CURSOLA
        item ITEM_EJECT_BUTTON
        move MOVE_HEX
        move MOVE_POWER_GEM
        move MOVE_GIGA_DRAIN
        move MOVE_WILL_O_WISP
        nature NATURE_SASSY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 60
        monwithform SPECIES_INDEEDEE, 1
        item ITEM_EJECT_BUTTON
        move MOVE_PSYCHIC
        move MOVE_MYSTICAL_FIRE
        move MOVE_FAKE_OUT
        move MOVE_BATON_PASS
        nature NATURE_BOLD
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 60
        pokemon SPECIES_GALLADE
        item ITEM_GALLADITE
        move MOVE_SACRED_SWORD
        move MOVE_PSYCHO_CUT
        move MOVE_SOLAR_BLADE
        move MOVE_FIRE_PUNCH
        nature NATURE_JOLLY
        ballseal 0
    endparty

trainerdata 500, "Kobe"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_ACE_TRAINER_M_GS
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 500
        // mon 0
        ivs 255
        abilityslot 15
        level 69
        pokemon SPECIES_SALAZZLE
        item ITEM_COVERT_CLOAK
        move MOVE_SLUDGE_BOMB
        move MOVE_FLAMETHROWER
        move MOVE_TOXIC
        move MOVE_TOXIC_SPIKES
        nature NATURE_TIMID
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 69
        pokemon SPECIES_SCRAFTY
        item ITEM_LEFTOVERS
        move MOVE_LASH_OUT
        move MOVE_DRAIN_PUNCH
        move MOVE_POISON_JAB
        move MOVE_DRAGON_DANCE
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 69
        pokemon SPECIES_AURORUS
        item ITEM_FOCUS_SASH
        move MOVE_ICE_BEAM
        move MOVE_FREEZE_DRY
        move MOVE_EARTH_POWER
        move MOVE_STEALTH_ROCK
        nature NATURE_MODEST
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 69
        pokemon SPECIES_SEVIPER
        item ITEM_BLACK_SLUDGE
        move MOVE_GUNK_SHOT
        move MOVE_EARTHQUAKE
        move MOVE_SUCKER_PUNCH
        move MOVE_COIL
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 69
        pokemon SPECIES_HELIOLISK
        item ITEM_LIFE_ORB
        move MOVE_THUNDERBOLT
        move MOVE_HYPER_VOICE
        move MOVE_SURF
        move MOVE_VOLT_SWITCH
        nature NATURE_MODEST
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 69
        pokemon SPECIES_SCEPTILE
        item ITEM_SCEPTILITE
        move MOVE_BULLET_SEED
        move MOVE_DUAL_CHOP
        move MOVE_BULLDOZE
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 501, "Piper"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_ACE_TRAINER_F_GS
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 501
        // mon 0
        ivs 50
        abilityslot 32
        level 33
        pokemon SPECIES_HORSEA
        move MOVE_SMOKESCREEN
        move MOVE_LEER
        move MOVE_BRINE
        move MOVE_TWISTER
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 32
        level 33
        pokemon SPECIES_HORSEA
        move MOVE_SMOKESCREEN
        move MOVE_LEER
        move MOVE_BRINE
        move MOVE_TWISTER
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 32
        level 35
        pokemon SPECIES_SEADRA
        move MOVE_AGILITY
        move MOVE_LEER
        move MOVE_WATERFALL
        move MOVE_TWISTER
        ballseal 0
    endparty

trainerdata 502, "Clea & Gil"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_TWINS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 502
        // mon 0
        ivs 0
        abilityslot 15
        level 35
        pokemon SPECIES_DRATINI
        move MOVE_THUNDER_WAVE
        move MOVE_TWISTER
        move MOVE_THUNDERBOLT
        move MOVE_HEADBUTT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 35
        pokemon SPECIES_DRATINI
        move MOVE_THUNDER_WAVE
        move MOVE_TWISTER
        move MOVE_SURF
        move MOVE_HEADBUTT
        ballseal 0
    endparty

trainerdata 503, "Jack"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_SCHOOL_KID_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 503
        // mon 0
        ivs 0
        abilityslot 15
        level 43
        pokemon SPECIES_ELECTRODE
        move MOVE_CHARGE
        move MOVE_CHARGE_BEAM
        move MOVE_SWIFT
        move MOVE_ROLLOUT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 52
        pokemon SPECIES_VILEPLUME
        move MOVE_SOLAR_BEAM
        move MOVE_GIGA_DRAIN
        move MOVE_MOONLIGHT
        move MOVE_SUNNY_DAY
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 52
        pokemon SPECIES_ARCANINE
        move MOVE_EXTREME_SPEED
        move MOVE_FLAMETHROWER
        move MOVE_CRUNCH
        move MOVE_REVERSAL
        ballseal 0
    endparty

trainerdata 504, "Mickey"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_SCHOOL_KID_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 504
        // mon 0
        ivs 0
        abilityslot 15
        level 35
        pokemon SPECIES_ELECTRODE
        move MOVE_SCREECH
        move MOVE_SONIC_BOOM
        move MOVE_ROLLOUT
        move MOVE_LIGHT_SCREEN
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 35
        pokemon SPECIES_GROWLITHE
        move MOVE_SUNNY_DAY
        move MOVE_LEER
        move MOVE_TAKE_DOWN
        move MOVE_FLAME_WHEEL
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 37
        pokemon SPECIES_VILEPLUME
        move MOVE_SOLAR_BEAM
        move MOVE_SLEEP_POWDER
        move MOVE_ACID
        move MOVE_MOONLIGHT
        ballseal 0
    endparty

trainerdata 505, "Alan"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SCHOOL_KID_M
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 505
        // mon 0
        ivs 0
        abilityslot 15
        level 47
        pokemon SPECIES_XATU
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 54
        pokemon SPECIES_TANGROWTH
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 47
        pokemon SPECIES_QUAGSIRE
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 15
        level 54
        pokemon SPECIES_YANMEGA
        ballseal 0
    endparty

trainerdata 506, "Mickey"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_SCHOOL_KID_M
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 506
        // mon 0
        ivs 0
        abilityslot 15
        level 35
        pokemon SPECIES_XATU
        move MOVE_PECK
        move MOVE_NIGHT_SHADE
        move MOVE_SWIFT
        move MOVE_FUTURE_SIGHT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 32
        pokemon SPECIES_TANGELA
        move MOVE_POISON_POWDER
        move MOVE_VINE_WHIP
        move MOVE_BIND
        move MOVE_MEGA_DRAIN
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 32
        pokemon SPECIES_YANMA
        move MOVE_QUICK_ATTACK
        move MOVE_DOUBLE_TEAM
        move MOVE_SONIC_BOOM
        move MOVE_SUPERSONIC
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 15
        level 35
        pokemon SPECIES_QUAGSIRE
        move MOVE_TAIL_WHIP
        move MOVE_SLAM
        move MOVE_AMNESIA
        move MOVE_EARTHQUAKE
        ballseal 0
    endparty

trainerdata 507, "Chad"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_SCHOOL_KID_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | F_PRIORITIZE_STATUS_MOVES | 0
    battletype SINGLE_BATTLE
    endentry

    party 507
        // mon 0
        ivs 0
        abilityslot 15
        level 46
        pokemon SPECIES_MR_MIME
        move MOVE_BATON_PASS
        move MOVE_DOUBLE_TEAM
        move MOVE_LIGHT_SCREEN
        move MOVE_PSYCHIC
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 56
        pokemon SPECIES_MAGNETON
        move MOVE_GYRO_BALL
        move MOVE_MIRROR_SHOT
        move MOVE_THUNDER_WAVE
        move MOVE_MAGNET_BOMB
        ballseal 0
    endparty

trainerdata 508, "Mickey"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_SCHOOL_KID_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 508
        // mon 0
        ivs 0
        abilityslot 15
        level 34
        pokemon SPECIES_MR_MIME
        move MOVE_PSYCHIC
        move MOVE_LIGHT_SCREEN
        move MOVE_REFLECT
        move MOVE_ENCORE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 38
        pokemon SPECIES_MAGNETON
        move MOVE_ZAP_CANNON
        move MOVE_THUNDER_WAVE
        move MOVE_LOCK_ON
        move MOVE_SWIFT
        ballseal 0
    endparty

trainerdata 509, "Huey"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_SAILOR
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 509
        // mon 0
        ivs 0
        abilityslot 15
        level 48
        pokemon SPECIES_POLITOED
        move MOVE_WHIRLPOOL
        move MOVE_RAIN_DANCE
        move MOVE_BODY_SLAM
        move MOVE_PERISH_SONG
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 52
        pokemon SPECIES_POLIWRATH
        move MOVE_SURF
        move MOVE_STRENGTH
        move MOVE_ICE_PUNCH
        move MOVE_SUBMISSION
        ballseal 0
    endparty

trainerdata 510, "Joey" // REMATCH 3
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_YOUNGSTER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 510
        // mon 0
        ivs 0
        abilityslot 15
        level 54
        pokemon SPECIES_RATICATE
        move MOVE_HYPER_FANG
        move MOVE_QUICK_ATTACK
        move MOVE_SUBSTITUTE
        move MOVE_ENDEAVOR
        ballseal 0
    endparty

trainerdata 511, "Mickey"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_YOUNGSTER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 511
        // mon 0
        ivs 0
        abilityslot 15
        level 37
        pokemon SPECIES_RATICATE
        move MOVE_HYPER_BEAM
        move MOVE_QUICK_ATTACK
        move MOVE_HYPER_FANG
        move MOVE_PURSUIT
        ballseal 0
    endparty

trainerdata 512, "Wade"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_BUG_CATCHER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 512
        // mon 0
        ivs 0
        abilityslot 15
        level 36
        pokemon SPECIES_BUTTERFREE
        move MOVE_BUG_BITE
        move MOVE_GUST
        move MOVE_SUPERSONIC
        move MOVE_WHIRLWIND
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 52
        pokemon SPECIES_BUTTERFREE
        move MOVE_BUG_BUZZ
        move MOVE_STUN_SPORE
        move MOVE_CAPTIVATE
        move MOVE_TAILWIND
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 43
        pokemon SPECIES_BEEDRILL
        move MOVE_ENDEAVOR
        move MOVE_FOCUS_ENERGY
        move MOVE_PIN_MISSILE
        move MOVE_BUG_BITE
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 15
        level 36
        pokemon SPECIES_BUTTERFREE
        move MOVE_STUN_SPORE
        move MOVE_SLEEP_POWDER
        move MOVE_CAPTIVATE
        move MOVE_TAILWIND
        ballseal 0
    endparty

trainerdata 513, "Arnie"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_BUG_CATCHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 513
        // mon 0
        ivs 0
        abilityslot 15
        level 45
        pokemon SPECIES_NINCADA
        move MOVE_DIG
        move MOVE_METAL_CLAW
        move MOVE_MUD_SLAP
        move MOVE_LEECH_LIFE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 56
        pokemon SPECIES_VENOMOTH
        move MOVE_GUST
        move MOVE_PSYCHIC
        move MOVE_POISON_FANG
        move MOVE_SIGNAL_BEAM
        ballseal 0
    endparty

trainerdata 514, "Mickey"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_BUG_CATCHER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 514
        // mon 0
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_VENOMOTH
        move MOVE_GUST
        move MOVE_SUPERSONIC
        move MOVE_PSYCHIC
        move MOVE_TOXIC
        ballseal 0
    endparty

trainerdata 515, "Ralph"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_FISHERMAN
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 515
        // mon 0
        ivs 0
        abilityslot 15
        level 53
        pokemon SPECIES_QWILFISH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 56
        pokemon SPECIES_SEAKING
        ballseal 0
    endparty

trainerdata 516, "Mickey"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_FISHERMAN
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 516
        // mon 0
        ivs 0
        abilityslot 15
        level 35
        pokemon SPECIES_QWILFISH
        move MOVE_TOXIC
        move MOVE_MINIMIZE
        move MOVE_SURF
        move MOVE_PIN_MISSILE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 39
        pokemon SPECIES_SEAKING
        move MOVE_ENDURE
        move MOVE_FLAIL
        move MOVE_FURY_ATTACK
        move MOVE_WATERFALL
        ballseal 0
    endparty

trainerdata 517, "Tully"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_FISHERMAN
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 517
        // mon 0
        ivs 0
        abilityslot 15
        level 41
        pokemon SPECIES_SEAKING
        move MOVE_WATER_PULSE
        move MOVE_RAIN_DANCE
        move MOVE_WATERFALL
        move MOVE_AQUA_RING
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 50
        pokemon SPECIES_SEAKING
        move MOVE_WATER_PULSE
        move MOVE_RAIN_DANCE
        move MOVE_WATERFALL
        move MOVE_MEGAHORN
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 53
        pokemon SPECIES_QWILFISH
        move MOVE_ROLLOUT
        move MOVE_SURF
        move MOVE_AQUA_TAIL
        move MOVE_MINIMIZE
        ballseal 0
    endparty

trainerdata 518, "Liz"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_PICNICKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 518
        // mon 0
        ivs 0
        abilityslot 15
        level 47
        pokemon SPECIES_VICTREEBEL
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 58
        pokemon SPECIES_NIDOKING
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 60
        pokemon SPECIES_NIDOQUEEN
        ballseal 0
    endparty

trainerdata 519, "Mickey"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_PICNICKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 519
        // mon 0
        ivs 0
        abilityslot 15
        level 30
        pokemon SPECIES_WEEPINBELL
        move MOVE_SLEEP_POWDER
        move MOVE_POISON_POWDER
        move MOVE_STUN_SPORE
        move MOVE_SLUDGE_BOMB
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 32
        pokemon SPECIES_NIDOKING
        move MOVE_EARTHQUAKE
        move MOVE_DOUBLE_KICK
        move MOVE_POISON_STING
        move MOVE_IRON_TAIL
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 32
        pokemon SPECIES_NIDOQUEEN
        move MOVE_EARTHQUAKE
        move MOVE_DOUBLE_KICK
        move MOVE_TAIL_WHIP
        move MOVE_BODY_SLAM
        ballseal 0
    endparty

trainerdata 520, "Gina"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_PICNICKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 520
        // mon 0
        ivs 0
        abilityslot 15
        level 30
        pokemon SPECIES_SKIPLOOM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 36
        pokemon SPECIES_JUMPLUFF
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 55
        pokemon SPECIES_VENUSAUR
        ballseal 0
    endparty

trainerdata 521, "Mickey"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_PICNICKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 521
        // mon 0
        ivs 0
        abilityslot 15
        level 33
        pokemon SPECIES_JUMPLUFF
        move MOVE_STUN_SPORE
        move MOVE_SUNNY_DAY
        move MOVE_LEECH_SEED
        move MOVE_COTTON_SPORE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 33
        pokemon SPECIES_JUMPLUFF
        move MOVE_SUNNY_DAY
        move MOVE_SLEEP_POWDER
        move MOVE_LEECH_SEED
        move MOVE_COTTON_SPORE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 38
        pokemon SPECIES_VENUSAUR
        move MOVE_SOLAR_BEAM
        move MOVE_RAZOR_LEAF
        move MOVE_HEADBUTT
        move MOVE_MUD_SLAP
        ballseal 0
    endparty

trainerdata 522, "Tiffany"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_PICNICKER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 522
        // mon 0
        ivs 0
        abilityslot 15
        level 61
        pokemon SPECIES_CLEFABLE
        move MOVE_GRAVITY
        move MOVE_METRONOME
        move MOVE_BLIZZARD
        move MOVE_THUNDER
        ballseal 0
    endparty

trainerdata 523, "Anthony"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_HIKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 523
        // mon 0
        ivs 0
        abilityslot 15
        level 41
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 49
        pokemon SPECIES_GOLEM
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 55
        pokemon SPECIES_MACHAMP
        ballseal 0
    endparty

trainerdata 524, "Mickey"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_HIKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 524
        // mon 0
        ivs 0
        abilityslot 15
        level 34
        pokemon SPECIES_GRAVELER
        move MOVE_MAGNITUDE
        move MOVE_SELF_DESTRUCT
        move MOVE_DEFENSE_CURL
        move MOVE_ROLLOUT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 36
        pokemon SPECIES_GOLEM
        move MOVE_MAGNITUDE
        move MOVE_SELF_DESTRUCT
        move MOVE_DEFENSE_CURL
        move MOVE_ROLLOUT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 34
        pokemon SPECIES_MACHOKE
        move MOVE_KARATE_CHOP
        move MOVE_VITAL_THROW
        move MOVE_HEADBUTT
        move MOVE_DIG
        ballseal 0
    endparty

trainerdata 525, "Todd"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_CAMPER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 525
        // mon 0
        ivs 0
        abilityslot 15
        level 36
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 44
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 54
        pokemon SPECIES_MAGCARGO
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 15
        level 56
        pokemon SPECIES_GOLDUCK
        ballseal 0
    endparty

trainerdata 526, "Mickey"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_CAMPER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 526
        // mon 0
        ivs 0
        abilityslot 15
        level 33
        pokemon SPECIES_GRAVELER
        move MOVE_SELF_DESTRUCT
        move MOVE_ROCK_THROW
        move MOVE_HARDEN
        move MOVE_MAGNITUDE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 33
        pokemon SPECIES_GRAVELER
        move MOVE_SELF_DESTRUCT
        move MOVE_ROCK_THROW
        move MOVE_HARDEN
        move MOVE_MAGNITUDE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 36
        pokemon SPECIES_MAGCARGO
        move MOVE_ROCK_THROW
        move MOVE_HARDEN
        move MOVE_AMNESIA
        move MOVE_FLAMETHROWER
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 15
        level 34
        pokemon SPECIES_GOLDUCK
        move MOVE_DISABLE
        move MOVE_PSYCHIC
        move MOVE_SURF
        move MOVE_PSYCH_UP
        ballseal 0
    endparty

trainerdata 527, "Irwin"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_JUGGLER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 527
        // mon 0
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_VOLTORB
        move MOVE_ROLLOUT
        move MOVE_SPARK
        move MOVE_SONIC_BOOM
        move MOVE_CHARGE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 40
        pokemon SPECIES_VOLTORB
        move MOVE_CHARGE_BEAM
        move MOVE_CHARGE
        move MOVE_LIGHT_SCREEN
        move MOVE_SWIFT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 46
        pokemon SPECIES_ELECTRODE
        move MOVE_THUNDER
        move MOVE_SCREECH
        move MOVE_CHARGE_BEAM
        move MOVE_RAIN_DANCE
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 32
        level 51
        pokemon SPECIES_ELECTRODE
        move MOVE_THUNDER
        move MOVE_MIRROR_COAT
        move MOVE_MAGNET_RISE
        move MOVE_THUNDER_WAVE
        ballseal 0
    endparty

trainerdata 528, "Dana"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_LASS
    nummons 2
    item ITEM_MOOMOO_MILK
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 528
        // mon 0
        ivs 0
        abilityslot 15
        level 51
        pokemon SPECIES_GOLDUCK
        move MOVE_WATER_PULSE
        move MOVE_AMNESIA
        move MOVE_CONFUSION
        move MOVE_SCREECH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 54
        pokemon SPECIES_AMPHAROS
        move MOVE_THUNDER
        move MOVE_DISCHARGE
        move MOVE_THUNDER_WAVE
        move MOVE_SIGNAL_BEAM
        ballseal 0
    endparty

trainerdata 529, "Mickey"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_LASS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 529
        // mon 0
        ivs 0
        abilityslot 15
        level 36
        pokemon SPECIES_AMPHAROS
        move MOVE_SWIFT
        move MOVE_THUNDER_PUNCH
        move MOVE_THUNDER_WAVE
        move MOVE_COTTON_SPORE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 36
        pokemon SPECIES_GOLDUCK
        move MOVE_DISABLE
        move MOVE_SURF
        move MOVE_PSYCHIC
        move MOVE_SCREECH
        ballseal 0
    endparty

trainerdata 530, "Brent"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_POKE_MANIAC
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 530
        // mon 0
        ivs 0
        abilityslot 15
        level 48
        pokemon SPECIES_GYARADOS
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_LICKITUNG
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 58
        pokemon SPECIES_NIDOQUEEN
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 15
        level 58
        pokemon SPECIES_NIDOKING
        ballseal 0
    endparty

trainerdata 531, "Kiyo"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass TRAINERCLASS_BLACK_BELT
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 531
        // mon 0
        ivs 255
        abilityslot 15
        level 75
        pokemon SPECIES_HITMONTOP
        item ITEM_SITRUS_BERRY
        move MOVE_TRIPLE_KICK
        move MOVE_ROCK_SLIDE
        move MOVE_FAKE_OUT
        move MOVE_HELPING_HAND
        nature NATURE_ADAMANT
        additionalflags 0
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 75
        pokemon SPECIES_HAWLUCHA
        item ITEM_RAWST_BERRY
        move MOVE_CLOSE_COMBAT
        move MOVE_ACROBATICS
        move MOVE_ROCK_SLIDE
        move MOVE_TAILWIND
        nature NATURE_ADAMANT
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 16
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 75
        pokemon SPECIES_URSHIFU
        item ITEM_DREAD_PLATE
        move MOVE_WICKED_BLOW
        move MOVE_CLOSE_COMBAT
        move MOVE_SUCKER_PUNCH
        move MOVE_DETECT
        nature NATURE_JOLLY
        additionalflags 0
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 75
        monwithform SPECIES_URSHIFU, 1
        item ITEM_SPLASH_PLATE
        move MOVE_SURGING_STRIKES
        move MOVE_CLOSE_COMBAT
        move MOVE_AQUA_JET
        move MOVE_DETECT
        nature NATURE_JOLLY
        additionalflags 0
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 15
        level 75
        pokemon SPECIES_MACHAMP
        item ITEM_EXPERT_BELT
        move MOVE_CLOSE_COMBAT
        move MOVE_ROCK_SLIDE
        move MOVE_BULLET_PUNCH
        move MOVE_DETECT
        nature NATURE_ADAMANT
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 16
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 32
        level 75
        pokemon SPECIES_LUCARIO
        item ITEM_LUCARIONITE
        move MOVE_AURA_SPHERE
        move MOVE_FLASH_CANNON
        move MOVE_VACUUM_WAVE
        move MOVE_DETECT
        nature NATURE_TIMID
        additionalflags 0
        ballseal 0
    endparty

trainerdata 532, "Li"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS | TRAINER_DATA_TYPE_SHINY_LOCK
    trainerclass TRAINERCLASS_ELDER
    nummons 0x80 | 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | F_USE_WEATHER | F_DOUBLE_BATTLE | 0
    battletype SINGLE_BATTLE
    endentry

    party 532
        // mon 0
        ivs 255
        abilityslot 15
        level 15
        pokemon SPECIES_VULPIX
        item ITEM_SPELL_TAG
        move MOVE_WEATHER_BALL
        move MOVE_HEX
        move MOVE_WILL_O_WISP
        move MOVE_MEMENTO
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 15
        pokemon SPECIES_WOBBUFFET
        item ITEM_LEFTOVERS
        move MOVE_COUNTER
        move MOVE_MIRROR_COAT
        move MOVE_CHARM
        move MOVE_ENCORE
        nature NATURE_CALM
        shinylock 0
        additionalflags 0
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 15
        level 15
        pokemon SPECIES_DRATINI
        item ITEM_EVIOLITE
        move MOVE_DRAGON_RAGE
        move MOVE_INCINERATE
        move MOVE_EXTREME_SPEED
        move MOVE_REST
        nature NATURE_IMPISH
        shinylock 0
        additionalflags 0
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 15
        level 15
        pokemon SPECIES_MISDREAVUS
        item ITEM_SPELL_TAG
        move MOVE_OMINOUS_WIND
        move MOVE_DRAINING_KISS
        move MOVE_SHADOW_SNEAK
        move MOVE_GRASS_KNOT
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 15
        level 15
        pokemon SPECIES_BELLSPROUT
        item ITEM_OCCA_BERRY
        move MOVE_MAGICAL_LEAF
        move MOVE_WEATHER_BALL
        move MOVE_ACID_SPRAY
        move MOVE_GROWTH
        nature NATURE_MODEST
        shinylock 1
        additionalflags 0
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 15
        level 15
        pokemon SPECIES_LARVITAR
        item ITEM_EVIOLITE
        move MOVE_ROCK_SLIDE
        move MOVE_STOMPING_TANTRUM
        move MOVE_FACADE
        move MOVE_PURSUIT
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags TRAINER_DATA_EXTRA_TYPE_STATUS
        status 16
        ballseal 0
    endparty

trainerdata 533, "Wayne"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BUG_CATCHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 533
        // mon 0
        ivs 0
        abilityslot 15
        level 8
        pokemon SPECIES_LEDYBA
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 10
        pokemon SPECIES_PARAS
        ballseal 0
    endparty

trainerdata 534, "Kimberly"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BEAUTY
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 534
        // mon 0
        ivs 0
        abilityslot 15
        level 19
        pokemon SPECIES_CORSOLA
        ballseal 0
    endparty

trainerdata 535, "Marigold"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_POKEFAN
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 535
        // mon 0
        ivs 0
        abilityslot 32
        level 16
        pokemon SPECIES_MEOWTH
        ballseal 0
    endparty

trainerdata 536, "Bertrand"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_CAMPER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 536
        // mon 0
        ivs 0
        abilityslot 15
        level 30
        pokemon SPECIES_FEAROW
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 30
        pokemon SPECIES_PRIMEAPE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 30
        pokemon SPECIES_TAUROS
        ballseal 0
    endparty

trainerdata 537, "Harrison"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_POKE_MANIAC
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 537
        // mon 0
        ivs 0
        abilityslot 32
        level 17
        pokemon SPECIES_NIDOKING
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 17
        pokemon SPECIES_NIDOQUEEN
        ballseal 0
    endparty

trainerdata 538, "Hugh"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_SUPER_NERD
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 538
        // mon 0
        ivs 0
        abilityslot 15
        level 39
        pokemon SPECIES_SEADRA
        move MOVE_SMOKESCREEN
        move MOVE_TWISTER
        move MOVE_SURF
        move MOVE_WATERFALL
        ballseal 0
    endparty

trainerdata 539, "Markus"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_SUPER_NERD
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 539
        // mon 0
        ivs 0
        abilityslot 32
        level 19
        pokemon SPECIES_SLOWPOKE
        move MOVE_CURSE
        move MOVE_WATER_GUN
        move MOVE_GROWL
        move MOVE_STRENGTH
        ballseal 0
    endparty

trainerdata 540, "Rex"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_POKEFAN_M
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 540
        // mon 0
        ivs 0
        abilityslot 15
        level 45
        pokemon SPECIES_PHANPY
        ballseal 0
    endparty

trainerdata 541, "Andy"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_POKEFAN_M
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 541
        // mon 0
        ivs 0
        abilityslot 32
        level 44
        pokemon SPECIES_TEDDIURSA
        ballseal 0
    endparty

trainerdata 542, "Naoko"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_KIMONO_GIRL
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 542
        // mon 0
        ivs 255
        abilityslot 15
        level 71
        pokemon SPECIES_JOLTEON
        item ITEM_ASSAULT_VEST
        move MOVE_THUNDERBOLT
        move MOVE_SHADOW_BALL
        move MOVE_BUZZY_BUZZ
        move MOVE_ALLURING_VOICE
        nature NATURE_MODEST
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 71
        pokemon SPECIES_FLAREON
        item ITEM_ASSAULT_VEST
        move MOVE_FLARE_BLITZ
        move MOVE_SUPERPOWER
        move MOVE_SIZZLY_SLIDE
        move MOVE_TRAILBLAZE
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 543, "Sayo"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_KIMONO_GIRL
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 543
        // mon 0
        ivs 255
        abilityslot 15
        level 72
        pokemon SPECIES_GLACEON
        item ITEM_FOCUS_SASH
        move MOVE_FREEZY_FROST
        move MOVE_HYPER_VOICE
        move MOVE_FREEZE_DRY
        move MOVE_CHILLING_WATER
        nature NATURE_MODEST
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 72
        pokemon SPECIES_LEAFEON
        item ITEM_FOCUS_SASH
        move MOVE_SAPPY_SEED
        move MOVE_RETURN
        move MOVE_KNOCK_OFF
        move MOVE_QUICK_ATTACK
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 544, "Miki"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_KIMONO_GIRL
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | F_PRIORITIZE_STATUS_MOVES | 0
    battletype SINGLE_BATTLE
    endentry

    party 544
        // mon 0
        ivs 255
        abilityslot 2
        level 71
        pokemon SPECIES_ESPEON
        item ITEM_LEFTOVERS
        move MOVE_GLITZY_GLOW
        move MOVE_DAZZLING_GLEAM
        move MOVE_POWER_GEM
        move MOVE_MORNING_SUN
        nature NATURE_TIMID
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 71
        pokemon SPECIES_UMBREON
        item ITEM_LEFTOVERS
        move MOVE_BADDY_BAD
        move MOVE_SHADOW_BALL
        move MOVE_SNARL
        move MOVE_MOONLIGHT
        nature NATURE_BOLD
        ballseal 0
    endparty

trainerdata 545, "French"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_ACE_TRAINER_M_GS
    nummons 2
    item ITEM_DIRE_HIT
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 545
        // mon 0
        ivs 50
        abilityslot 32
        level 47
        pokemon SPECIES_ABSOL
        item ITEM_NONE
        move MOVE_PSYCHO_CUT
        move MOVE_NIGHT_SLASH
        move MOVE_SLASH
        move MOVE_QUICK_ATTACK
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 15
        level 47
        pokemon SPECIES_ALAKAZAM
        item ITEM_NONE
        move MOVE_PSYCHIC
        move MOVE_FOCUS_BLAST
        move MOVE_ENERGY_BALL
        move MOVE_CHARGE_BEAM
        ballseal 0
    endparty

trainerdata 546, "Sherman"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_SCHOOL_KID_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | F_MULTI_BATTLE_PARTNER | 0
    battletype SINGLE_BATTLE
    endentry

    party 546
        // mon 0
        ivs 0
        abilityslot 15
        level 43
        pokemon SPECIES_FURRET
        move MOVE_DOUBLE_TEAM
        move MOVE_BATON_PASS
        move MOVE_AMNESIA
        move MOVE_SLAM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 43
        pokemon SPECIES_PIDGEOT
        move MOVE_ROOST
        move MOVE_WING_ATTACK
        move MOVE_STEEL_WING
        move MOVE_RETURN
        ballseal 0
    endparty

trainerdata 547, "Bruce"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_HIKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 547
        // mon 0
        ivs 0
        abilityslot 15
        level 39
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 44
        pokemon SPECIES_RHYDON
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 45
        pokemon SPECIES_CLEFAIRY
        ballseal 0
    endparty

trainerdata 548, "Manford"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_BLACK_BELT
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 548
        // mon 0
        ivs 30
        abilityslot 15
        level 47
        pokemon SPECIES_POLIWRATH
        move MOVE_HYDRO_PUMP
        move MOVE_DYNAMIC_PUNCH
        move MOVE_MUD_SHOT
        move MOVE_HYPNOSIS
        ballseal 0
    endparty

trainerdata 549, "Zac & Jen"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_DOUBLE_TEAM
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 549
        // mon 0
        ivs 50
        abilityslot 15
        level 47
        pokemon SPECIES_ELECTABUZZ
        move MOVE_DISCHARGE
        move MOVE_QUICK_ATTACK
        move MOVE_THUNDERBOLT
        move MOVE_LOW_KICK
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 32
        level 47
        pokemon SPECIES_DUGTRIO
        move MOVE_DIG
        move MOVE_MUD_BOMB
        move MOVE_GROWL
        move MOVE_NIGHT_SLASH
        ballseal 0
    endparty

trainerdata 550, "Ander"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BLACK_BELT
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 550
        // mon 0
        ivs 30
        abilityslot 15
        level 43
        pokemon SPECIES_PRIMEAPE
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 15
        level 39
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 2
        ivs 30
        abilityslot 15
        level 44
        pokemon SPECIES_MACHOKE
        ballseal 0
    endparty

trainerdata 551, "Dwight"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_HIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 551
        // mon 0
        ivs 0
        abilityslot 15
        level 44
        pokemon SPECIES_MAGNETON
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 44
        pokemon SPECIES_STEELIX
        ballseal 0
    endparty

trainerdata 552, "Regis"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_YOUNGSTER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 552
        // mon 0
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_GOLBAT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_ELECTRODE
        ballseal 0
    endparty

trainerdata 553, "Moe & Lulu"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_YOUNG_COUPLE
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 553
        // mon 0
        ivs 0
        abilityslot 32
        level 43
        pokemon SPECIES_LOTAD
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 43
        pokemon SPECIES_SEEDOT
        ballseal 0
    endparty

trainerdata 554, "Milton"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_GENTLEMAN
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 554
        // mon 0
        ivs 0
        abilityslot 15
        level 45
        pokemon SPECIES_GROWLITHE
        ballseal 0
    endparty

trainerdata 555, "Justin"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIRD_KEEPER_GS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 555
        // mon 0
        ivs 50
        abilityslot 15
        level 44
        pokemon SPECIES_XATU
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 15
        level 39
        pokemon SPECIES_NOCTOWL
        ballseal 0
    endparty

trainerdata 556, "Gail"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIRD_KEEPER_GS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 556
        // mon 0
        ivs 50
        abilityslot 15
        level 42
        pokemon SPECIES_FEAROW
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 15
        level 39
        pokemon SPECIES_SPEAROW
        ballseal 0
    endparty

trainerdata 557, "Vic & Tara"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_YOUNG_COUPLE
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_USE_WEATHER | 0
    battletype DOUBLE_BATTLE
    endentry

    party 557
        // mon 0
        ivs 0
        abilityslot 15
        level 44
        pokemon SPECIES_MAGMAR
        move MOVE_SUNNY_DAY
        move MOVE_FLAMETHROWER
        move MOVE_CONFUSE_RAY
        move MOVE_FIRE_SPIN
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 43
        pokemon SPECIES_SUNFLORA
        move MOVE_SOLAR_BEAM
        move MOVE_RAZOR_LEAF
        move MOVE_INGRAIN
        move MOVE_MEGA_DRAIN
        ballseal 0
    endparty

trainerdata 558, "Kyler"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_FISHERMAN
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 558
        // mon 0
        ivs 0
        abilityslot 15
        level 18
        pokemon SPECIES_MAGIKARP
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 18
        pokemon SPECIES_MAGIKARP
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 18
        pokemon SPECIES_MAGIKARP
        ballseal 0
    endparty

trainerdata 559, "Tim & Sue"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_YOUNG_COUPLE
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 559
        // mon 0
        ivs 0
        abilityslot 15
        level 41
        pokemon SPECIES_KADABRA
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 46
        pokemon SPECIES_PSYDUCK
        ballseal 0
    endparty

trainerdata 560, "Clark"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_CAMPER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 560
        // mon 0
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_BUIZEL
        ballseal 0
    endparty

trainerdata 561, "Tanner"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_CAMPER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 561
        // mon 0
        ivs 0
        abilityslot 15
        level 38
        pokemon SPECIES_SUDOWOODO
        ballseal 0
    endparty

trainerdata 562, "Piper"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_PICNICKER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 562
        // mon 0
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_SPOINK
        ballseal 0
    endparty

trainerdata 563, "Ginger"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_PICNICKER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 563
        // mon 0
        ivs 0
        abilityslot 15
        level 41
        pokemon SPECIES_WHISMUR
        ballseal 0
    endparty

trainerdata 564, "Clarice"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_TEACHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 564
        // mon 0
        ivs 0
        abilityslot 32
        level 41
        pokemon SPECIES_ZIGZAGOON
        item ITEM_SITRUS_BERRY
        move MOVE_BELLY_DRUM
        move MOVE_FLAIL
        move MOVE_RETURN
        move MOVE_IRON_TAIL
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 43
        pokemon SPECIES_ROSELIA
        item ITEM_NONE
        move MOVE_INGRAIN
        move MOVE_SYNTHESIS
        move MOVE_TOXIC
        move MOVE_PETAL_DANCE
        ballseal 0
    endparty

trainerdata 565, "Josh"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIRD_KEEPER_GS
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 565
        // mon 0
        ivs 50
        abilityslot 15
        level 37
        pokemon SPECIES_FEAROW
        ballseal 0
    endparty

trainerdata 566, "Connor"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_SCHOOL_KID_M
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 566
        // mon 0
        ivs 0
        abilityslot 32
        level 42
        pokemon SPECIES_ZIGZAGOON
        item ITEM_CHESTO_BERRY
        move MOVE_BELLY_DRUM
        move MOVE_REST
        move MOVE_FLAIL
        move MOVE_SECRET_POWER
        ballseal 0
    endparty

trainerdata 567, "Torin"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SCHOOL_KID_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 567
        // mon 0
        ivs 0
        abilityslot 15
        level 41
        pokemon SPECIES_SANDSLASH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 39
        pokemon SPECIES_GOLBAT
        ballseal 0
    endparty

trainerdata 568, "Travis"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_SCHOOL_KID_M
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 568
        // mon 0
        ivs 0
        abilityslot 32
        level 42
        pokemon SPECIES_BUDEW
        move MOVE_STUN_SPORE
        move MOVE_GIGA_DRAIN
        move MOVE_SLUDGE_BOMB
        move MOVE_NATURE_POWER
        ballseal 0
    endparty

trainerdata 569, "Kay & Tia"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_TWINS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 569
        // mon 0
        ivs 0
        abilityslot 15
        level 41
        pokemon SPECIES_QUAGSIRE
        move MOVE_RAIN_DANCE
        move MOVE_SURF
        move MOVE_YAWN
        move MOVE_NONE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 41
        pokemon SPECIES_QUAGSIRE
        move MOVE_AMNESIA
        move MOVE_SURF
        move MOVE_YAWN
        move MOVE_NONE
        ballseal 0
    endparty

trainerdata 570, "Boone"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_POKEFAN_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 570
        // mon 0
        ivs 0
        abilityslot 15
        level 43
        pokemon SPECIES_SPINDA
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 41
        pokemon SPECIES_VOLBEAT
        ballseal 0
    endparty

trainerdata 571, "Eleanor"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_POKEFAN
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 571
        // mon 0
        ivs 0
        abilityslot 15
        level 43
        pokemon SPECIES_SPINDA
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 41
        pokemon SPECIES_ILLUMISE
        ballseal 0
    endparty

trainerdata 572, "Dale"
    trainermontype TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_BIKER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 572
        // mon 0
        ivs 0
        abilityslot 32
        level 47
        pokemon SPECIES_GULPIN
        item ITEM_BLACK_SLUDGE
        ballseal 0
    endparty

trainerdata 573, "Jacob"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 573
        // mon 0
        ivs 0
        abilityslot 15
        level 43
        pokemon SPECIES_MAGMAR
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 43
        pokemon SPECIES_TENTACRUEL
        ballseal 0
    endparty

trainerdata 574, "Aiden"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIKER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 574
        // mon 0
        ivs 0
        abilityslot 32
        level 45
        pokemon SPECIES_TENTACRUEL
        ballseal 0
    endparty

trainerdata 575, "Dan"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 575
        // mon 0
        ivs 0
        abilityslot 15
        level 39
        pokemon SPECIES_GULPIN
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 37
        pokemon SPECIES_WEEZING
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 37
        pokemon SPECIES_WEEZING
        ballseal 0
    endparty

trainerdata 576, "Theron"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIKER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 576
        // mon 0
        ivs 0
        abilityslot 2
        level 45
        pokemon SPECIES_CROAGUNK
        ballseal 0
    endparty

trainerdata 577, "Markey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIKER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 577
        // mon 0
        ivs 0
        abilityslot 32
        level 47
        pokemon SPECIES_SKORUPI
        ballseal 0
    endparty

trainerdata 578, "Teddy"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIKER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 578
        // mon 0
        ivs 0
        abilityslot 15
        level 46
        pokemon SPECIES_SEVIPER
        ballseal 0
    endparty

trainerdata 579, "Ernest"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 579
        // mon 0
        ivs 0
        abilityslot 32
        level 45
        pokemon SPECIES_TEDDIURSA
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 44
        pokemon SPECIES_MARILL
        ballseal 0
    endparty

trainerdata 580, "Pedro"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_CAMPER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 580
        // mon 0
        ivs 0
        abilityslot 32
        level 45
        pokemon SPECIES_LINOONE
        item ITEM_SITRUS_BERRY
        move MOVE_BELLY_DRUM
        move MOVE_SLASH
        move MOVE_DIG
        move MOVE_SURF
        ballseal 0
    endparty

trainerdata 581, "Adrian"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_PICNICKER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 581
        // mon 0
        ivs 0
        abilityslot 15
        level 45
        pokemon SPECIES_SHROOMISH
        ballseal 0
    endparty

trainerdata 582, "Cheyenne"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_PICNICKER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 582
        // mon 0
        ivs 0
        abilityslot 32
        level 45
        pokemon SPECIES_SHINX
        ballseal 0
    endparty

trainerdata 583, "Bert"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIRD_KEEPER_GS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 583
        // mon 0
        ivs 50
        abilityslot 15
        level 46
        pokemon SPECIES_WINGULL
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 15
        level 43
        pokemon SPECIES_FEAROW
        ballseal 0
    endparty

trainerdata 584, "Ernie"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIRD_KEEPER_GS
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 584
        // mon 0
        ivs 50
        abilityslot 15
        level 48
        pokemon SPECIES_STARLY
        ballseal 0
    endparty

trainerdata 585, "Elmo"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SWIMMER_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 585
        // mon 0
        ivs 0
        abilityslot 15
        level 46
        pokemon SPECIES_POLIWHIRL
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 42
        pokemon SPECIES_TENTACRUEL
        ballseal 0
    endparty

trainerdata 586, "Luis"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SWIMMER_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 586
        // mon 0
        ivs 0
        abilityslot 32
        level 46
        pokemon SPECIES_SEADRA
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 42
        pokemon SPECIES_QUAGSIRE
        ballseal 0
    endparty

trainerdata 587, "Leona"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SWIMMER_F
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 587
        // mon 0
        ivs 0
        abilityslot 15
        level 44
        pokemon SPECIES_BIDOOF
        ballseal 0
    endparty

trainerdata 588, "Mina"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SWIMMER_F
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 588
        // mon 0
        ivs 0
        abilityslot 15
        level 38
        pokemon SPECIES_LUVDISC
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 39
        pokemon SPECIES_LUVDISC
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 41
        pokemon SPECIES_LUVDISC
        ballseal 0
    endparty

trainerdata 589, "Murphy"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_FISHERMAN
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 589
        // mon 0
        ivs 0
        abilityslot 15
        level 32
        pokemon SPECIES_CORSOLA
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 34
        pokemon SPECIES_CORSOLA
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 36
        pokemon SPECIES_CORSOLA
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 15
        level 38
        pokemon SPECIES_CORSOLA
        ballseal 0
    endparty

trainerdata 590, "Liam"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_FISHERMAN
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 590
        // mon 0
        ivs 0
        abilityslot 15
        level 42
        pokemon SPECIES_SEADRA
        ballseal 0
    endparty

trainerdata 591, "Gideon"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_FISHERMAN
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 591
        // mon 0
        ivs 0
        abilityslot 15
        level 44
        pokemon SPECIES_LANTURN
        move MOVE_DISCHARGE
        move MOVE_SIGNAL_BEAM
        move MOVE_BUBBLE_BEAM
        move MOVE_CONFUSE_RAY
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_MANTINE
        move MOVE_WATER_PULSE
        move MOVE_WING_ATTACK
        move MOVE_PSYBEAM
        move MOVE_CONFUSE_RAY
        ballseal 0
    endparty

trainerdata 592, "Chelan"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_SWIMMER_F
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 592
        // mon 0
        ivs 0
        abilityslot 32
        level 40
        pokemon SPECIES_AZUMARILL
        move MOVE_WATERFALL
        move MOVE_ROLLOUT
        move MOVE_DEFENSE_CURL
        move MOVE_DIG
        ballseal 0
    endparty

trainerdata 593, "Kendra"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SWIMMER_F
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 593
        // mon 0
        ivs 0
        abilityslot 15
        level 43
        pokemon SPECIES_SLOWKING
        ballseal 0
    endparty

trainerdata 594, "Esteban"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SWIMMER_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 594
        // mon 0
        ivs 0
        abilityslot 15
        level 38
        pokemon SPECIES_GOLDUCK
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 38
        pokemon SPECIES_POLIWHIRL
        ballseal 0
    endparty

trainerdata 595, "Duane"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SWIMMER_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 595
        // mon 0
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_SEAKING
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_KABUTOPS
        ballseal 0
    endparty

trainerdata 596, "Kinsley"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIRD_KEEPER_GS
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 596
        // mon 0
        ivs 50
        abilityslot 15
        level 36
        pokemon SPECIES_FARFETCHD
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 15
        level 36
        pokemon SPECIES_FEAROW
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 15
        level 37
        pokemon SPECIES_PIDGEOTTO
        ballseal 0
    endparty

trainerdata 597, "Easton"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIRD_KEEPER_GS
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 597
        // mon 0
        ivs 50
        abilityslot 15
        level 35
        pokemon SPECIES_DODUO
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 15
        level 35
        pokemon SPECIES_DODUO
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 15
        level 35
        pokemon SPECIES_DODRIO
        ballseal 0

        // mon 3
        ivs 50
        abilityslot 15
        level 36
        pokemon SPECIES_DODRIO
        ballseal 0
    endparty

trainerdata 598, "Day & Dani"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_TWINS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 598
        // mon 0
        ivs 0
        abilityslot 15
        level 41
        pokemon SPECIES_PLUSLE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 41
        pokemon SPECIES_MINUN
        ballseal 0
    endparty

trainerdata 599, "Virgil"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_CAMPER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 599
        // mon 0
        ivs 0
        abilityslot 15
        level 43
        pokemon SPECIES_SLAKOTH
        ballseal 0
    endparty

trainerdata 600, "Selina"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_PICNICKER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 600
        // mon 0
        ivs 0
        abilityslot 15
        level 42
        pokemon SPECIES_CHERUBI
        ballseal 0
    endparty

trainerdata 601, "Grunt" // EDT
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_TEAM_ROCKET
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | F_EVALUATE_ATTACKS | F_HARRASSMENT | 0
    battletype SINGLE_BATTLE
    endentry

    party 601
        // mon 0
        ivs 255
        abilityslot 15
        level 40
        pokemon SPECIES_CACTURNE
        item ITEM_FOCUS_SASH
        move MOVE_NEEDLE_ARM
        move MOVE_LASH_OUT
        move MOVE_TOXIC_SPIKES
        move MOVE_ENDEAVOR
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 40
        pokemon SPECIES_GIGALITH
        item ITEM_ASSAULT_VEST
        move MOVE_ROCK_SLIDE
        move MOVE_EARTHQUAKE
        move MOVE_IRON_HEAD
        move MOVE_BODY_PRESS
        nature NATURE_IMPISH
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 40
        monwithform SPECIES_SLIGGOO, 1
        item ITEM_EVIOLITE
        move MOVE_DRAGON_BREATH
        move MOVE_INFESTATION
        move MOVE_SLACK_OFF
        move MOVE_PROTECT
        nature NATURE_BOLD
        ballseal 0 

        // mon 0
        ivs 255
        abilityslot 15
        level 40
        pokemon SPECIES_PUPITAR
        item ITEM_EVIOLITE
        move MOVE_EARTHQUAKE
        move MOVE_ROCK_SLIDE
        move MOVE_DRAGON_DANCE
        move MOVE_REST
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 40
        pokemon SPECIES_HOUNDSTONE
        item ITEM_SPELL_TAG
        move MOVE_LAST_RESPECTS
        move MOVE_BODY_PRESS
        move MOVE_PLAY_ROUGH
        move MOVE_DESTINY_BOND
        nature NATURE_ADAMANT
        ballseal 0                

        // mon 0
        ivs 255
        abilityslot 32
        level 40
        pokemon SPECIES_CLODSIRE
        item ITEM_BLACK_SLUDGE
        move MOVE_POISON_JAB
        move MOVE_EARTHQUAKE
        move MOVE_YAWN
        move MOVE_RECOVER
        nature NATURE_IMPISH
        ballseal 0
    endparty

trainerdata 602, "Jose"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIRD_KEEPER_GS
    nummons 3
    item ITEM_X_ATTACK
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 602
        // mon 0
        ivs 50
        abilityslot 15
        level 50
        pokemon SPECIES_FARFETCHD
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 15
        level 52
        pokemon SPECIES_FARFETCHD
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 15
        level 53
        pokemon SPECIES_FARFETCHD
        ballseal 0
    endparty

trainerdata 603, "Erin"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_PICNICKER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 603
        // mon 0
        ivs 0
        abilityslot 15
        level 42
        pokemon SPECIES_CHERRIM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 46
        pokemon SPECIES_SUNFLORA
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 49
        pokemon SPECIES_BELLOSSOM
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 32
        level 53
        pokemon SPECIES_RAPIDASH
        ballseal 0
    endparty

trainerdata 604, "Gaven"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_ACE_TRAINER_M_GS
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 604
        // mon 0
        ivs 50
        abilityslot 15
        level 52
        pokemon SPECIES_VICTREEBEL
        move MOVE_LEAF_STORM
        move MOVE_TOXIC
        move MOVE_ACID
        move MOVE_LEAF_BLADE
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 15
        level 49
        pokemon SPECIES_KINGLER
        move MOVE_BRINE
        move MOVE_CRABHAMMER
        move MOVE_X_SCISSOR
        move MOVE_PROTECT
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 15
        level 50
        pokemon SPECIES_FLAREON
        move MOVE_OVERHEAT
        move MOVE_QUICK_ATTACK
        move MOVE_WILL_O_WISP
        move MOVE_ATTRACT
        ballseal 0
    endparty

trainerdata 605, "Kenji"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BLACK_BELT
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 605
        // mon 0
        ivs 30
        abilityslot 15
        level 41
        pokemon SPECIES_ONIX
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 15
        level 53
        pokemon SPECIES_MACHAMP
        ballseal 0

        // mon 2
        ivs 30
        abilityslot 15
        level 49
        pokemon SPECIES_ONIX
        ballseal 0

        // mon 3
        ivs 30
        abilityslot 15
        level 53
        pokemon SPECIES_HITMONLEE
        ballseal 0
    endparty

trainerdata 606, "Parry"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_HIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 606
        // mon 0
        ivs 0
        abilityslot 15
        level 56
        pokemon SPECIES_STEELIX
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 52
        pokemon SPECIES_GOLEM
        ballseal 0
    endparty

trainerdata 607, "Reena"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_ACE_TRAINER_F_GS
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 607
        // mon 0
        ivs 50
        abilityslot 15
        level 54
        pokemon SPECIES_ARCANINE
        move MOVE_FLARE_BLITZ
        move MOVE_EXTREME_SPEED
        move MOVE_CRUNCH
        move MOVE_ROAR
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 15
        level 53
        pokemon SPECIES_NIDOQUEEN
        move MOVE_CAPTIVATE
        move MOVE_POISON_FANG
        move MOVE_EARTH_POWER
        move MOVE_BODY_SLAM
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 32
        level 56
        pokemon SPECIES_STARMIE
        move MOVE_SURF
        move MOVE_MINIMIZE
        move MOVE_COSMIC_POWER
        move MOVE_PSYCHIC
        ballseal 0
    endparty

trainerdata 608, "Wilton"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_FISHERMAN
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 608
        // mon 0
        ivs 0
        abilityslot 15
        level 42
        pokemon SPECIES_SEAKING
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 46
        pokemon SPECIES_SEAKING
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 63
        pokemon SPECIES_SEAKING
        ballseal 0
    endparty

trainerdata 609, "Jamie"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_ACE_TRAINER_F_GS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 609
        // mon 0
        ivs 50
        abilityslot 32
        level 56
        pokemon SPECIES_RAPIDASH
        move MOVE_BOUNCE
        move MOVE_FIRE_SPIN
        move MOVE_FLARE_BLITZ
        move MOVE_EMBER
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 15
        level 59
        pokemon SPECIES_AMPHAROS
        move MOVE_POWER_GEM
        move MOVE_THUNDER
        move MOVE_SIGNAL_BEAM
        move MOVE_CHARGE
        ballseal 0
    endparty

trainerdata 610, "Derek"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_POKEFAN_M
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 610
        // mon 0
        ivs 0
        abilityslot 15
        level 18
        pokemon SPECIES_PICHU
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 22
        pokemon SPECIES_TEDDIURSA
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 39
        pokemon SPECIES_PIKACHU
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 15
        level 47
        pokemon SPECIES_URSARING
        ballseal 0
    endparty

trainerdata 611, "Beverly"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_POKEFAN
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 611
        // mon 0
        ivs 0
        abilityslot 15
        level 53
        pokemon SPECIES_GRANBULL
        ballseal 0
    endparty

trainerdata 612, "Vance"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIRD_KEEPER_GS
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 612
        // mon 0
        ivs 50
        abilityslot 15
        level 56
        pokemon SPECIES_PIDGEOT
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 15
        level 44
        pokemon SPECIES_PIDGEOT
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 15
        level 54
        pokemon SPECIES_NOCTOWL
        ballseal 0
    endparty

trainerdata 613, "Krise"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_LASS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 613
        // mon 0
        ivs 0
        abilityslot 15
        level 21
        pokemon SPECIES_ODDISH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 31
        pokemon SPECIES_CUBONE
        ballseal 0
    endparty

trainerdata 614, "Krise"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_LASS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 614
        // mon 0
        ivs 0
        abilityslot 15
        level 32
        pokemon SPECIES_GLOOM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 38
        pokemon SPECIES_MAROWAK
        ballseal 0
    endparty

trainerdata 615, "Krise"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_LASS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 615
        // mon 0
        ivs 0
        abilityslot 15
        level 53
        pokemon SPECIES_VILEPLUME
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 54
        pokemon SPECIES_MAROWAK
        ballseal 0
    endparty

trainerdata 616, "Ian"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_YOUNGSTER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 616
        // mon 0
        ivs 0
        abilityslot 15
        level 27
        pokemon SPECIES_MANKEY
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 33
        pokemon SPECIES_DUGTRIO
        ballseal 0
    endparty

trainerdata 617, "Ian"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_YOUNGSTER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 617
        // mon 0
        ivs 0
        abilityslot 15
        level 38
        pokemon SPECIES_PRIMEAPE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_DUGTRIO
        ballseal 0
    endparty

trainerdata 618, "Ian"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_YOUNGSTER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 618
        // mon 0
        ivs 0
        abilityslot 15
        level 47
        pokemon SPECIES_PRIMEAPE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 58
        pokemon SPECIES_DUGTRIO
        ballseal 0
    endparty

trainerdata 619, "Walt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_FIREBREATHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 619
        // mon 0
        ivs 0
        abilityslot 15
        level 25
        pokemon SPECIES_MAGMAR
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 32
        pokemon SPECIES_MAGMAR
        ballseal 0
    endparty

trainerdata 620, "Walt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_FIREBREATHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 620
        // mon 0
        ivs 0
        abilityslot 15
        level 34
        pokemon SPECIES_MAGMAR
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 37
        pokemon SPECIES_MAGMAR
        ballseal 0
    endparty

trainerdata 621, "Walt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_FIREBREATHER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 621
        // mon 0
        ivs 0
        abilityslot 15
        level 26
        pokemon SPECIES_MAGBY
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 49
        pokemon SPECIES_MAGMAR
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 58
        pokemon SPECIES_MAGMORTAR
        ballseal 0
    endparty

trainerdata 622, "Doug"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BUG_CATCHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 622
        // mon 0
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_BUTTERFREE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_ARIADOS
        ballseal 0
    endparty

trainerdata 623, "Doug"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BUG_CATCHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 623
        // mon 0
        ivs 0
        abilityslot 15
        level 47
        pokemon SPECIES_BUTTERFREE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 46
        pokemon SPECIES_ARIADOS
        ballseal 0
    endparty

trainerdata 624, "Doug"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BUG_CATCHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 624
        // mon 0
        ivs 0
        abilityslot 15
        level 52
        pokemon SPECIES_BUTTERFREE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 50
        pokemon SPECIES_ARIADOS
        ballseal 0
    endparty

trainerdata 625, "Rob"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BUG_CATCHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 625
        // mon 0
        ivs 0
        abilityslot 15
        level 45
        pokemon SPECIES_BEEDRILL
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 42
        pokemon SPECIES_BUTTERFREE
        ballseal 0
    endparty

trainerdata 626, "Rob"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BUG_CATCHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 626
        // mon 0
        ivs 0
        abilityslot 15
        level 52
        pokemon SPECIES_BEEDRILL
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 48
        pokemon SPECIES_BUTTERFREE
        ballseal 0
    endparty

trainerdata 627, "Rob"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BUG_CATCHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 627
        // mon 0
        ivs 0
        abilityslot 15
        level 56
        pokemon SPECIES_BEEDRILL
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 56
        pokemon SPECIES_BUTTERFREE
        ballseal 0
    endparty

trainerdata 628, "Reese"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_BIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 628
        // mon 0
        ivs 0
        abilityslot 15
        level 42
        pokemon SPECIES_ARBOK
        move MOVE_GLARE
        move MOVE_SCREECH
        move MOVE_MUD_BOMB
        move MOVE_CRUNCH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 48
        pokemon SPECIES_WEEZING
        move MOVE_SLUDGE_BOMB
        move MOVE_DOUBLE_HIT
        move MOVE_SMOKESCREEN
        move MOVE_ASSURANCE
        ballseal 0
    endparty

trainerdata 629, "Reese"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_BIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 629
        // mon 0
        ivs 0
        abilityslot 15
        level 48
        pokemon SPECIES_ARBOK
        move MOVE_MUD_BOMB
        move MOVE_SWALLOW
        move MOVE_STOCKPILE
        move MOVE_SPIT_UP
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 50
        pokemon SPECIES_WEEZING
        move MOVE_SLUDGE_BOMB
        move MOVE_DOUBLE_HIT
        move MOVE_SMOKESCREEN
        move MOVE_ASSURANCE
        ballseal 0
    endparty

trainerdata 630, "Reese"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_BIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 630
        // mon 0
        ivs 0
        abilityslot 15
        level 56
        pokemon SPECIES_ARBOK
        move MOVE_GUNK_SHOT
        move MOVE_MUD_BOMB
        move MOVE_GASTRO_ACID
        move MOVE_CRUNCH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 55
        pokemon SPECIES_WEEZING
        move MOVE_SLUDGE_BOMB
        move MOVE_DOUBLE_HIT
        move MOVE_SMOKESCREEN
        move MOVE_THUNDER
        ballseal 0
    endparty

trainerdata 631, "Aiden"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 631
        // mon 0
        ivs 0
        abilityslot 15
        level 50
        pokemon SPECIES_HYPNO
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 49
        pokemon SPECIES_TENTACRUEL
        ballseal 0
    endparty

trainerdata 632, "Aiden"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 632
        // mon 0
        ivs 0
        abilityslot 15
        level 55
        pokemon SPECIES_HYPNO
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 55
        pokemon SPECIES_TENTACRUEL
        ballseal 0
    endparty

trainerdata 633, "Aiden"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 633
        // mon 0
        ivs 0
        abilityslot 15
        level 55
        pokemon SPECIES_TENTACRUEL
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 58
        pokemon SPECIES_HYPNO
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 58
        pokemon SPECIES_TENTACRUEL
        ballseal 0
    endparty

trainerdata 634, "Ernest"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 634
        // mon 0
        ivs 0
        abilityslot 15
        level 46
        pokemon SPECIES_TEDDIURSA
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 47
        pokemon SPECIES_AZUMARILL
        ballseal 0
    endparty

trainerdata 635, "Ernest"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 635
        // mon 0
        ivs 0
        abilityslot 15
        level 48
        pokemon SPECIES_TEDDIURSA
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 49
        pokemon SPECIES_AZUMARILL
        ballseal 0
    endparty

trainerdata 636, "Ernest"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 636
        // mon 0
        ivs 0
        abilityslot 15
        level 58
        pokemon SPECIES_URSARING
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 54
        pokemon SPECIES_AZUMARILL
        ballseal 0
    endparty

trainerdata 637, "Hillary"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_TEACHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 637
        // mon 0
        ivs 0
        abilityslot 15
        level 43
        pokemon SPECIES_AMBIPOM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 43
        pokemon SPECIES_SUNFLORA
        ballseal 0
    endparty

trainerdata 638, "Hillary"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_TEACHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 638
        // mon 0
        ivs 0
        abilityslot 15
        level 49
        pokemon SPECIES_AMBIPOM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 49
        pokemon SPECIES_SUNFLORA
        ballseal 0
    endparty

trainerdata 639, "Hillary"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_TEACHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 639
        // mon 0
        ivs 0
        abilityslot 15
        level 55
        pokemon SPECIES_AMBIPOM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 55
        pokemon SPECIES_SUNFLORA
        ballseal 0
    endparty

trainerdata 640, "Billy"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SCHOOL_KID_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 640
        // mon 0
        ivs 0
        abilityslot 15
        level 42
        pokemon SPECIES_PARASECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 43
        pokemon SPECIES_POLIWHIRL
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_DITTO
        ballseal 0
    endparty

trainerdata 641, "Billy"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SCHOOL_KID_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 641
        // mon 0
        ivs 0
        abilityslot 15
        level 46
        pokemon SPECIES_PARASECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 47
        pokemon SPECIES_POLIWHIRL
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 46
        pokemon SPECIES_DITTO
        ballseal 0
    endparty

trainerdata 642, "Billy"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_SCHOOL_KID_M
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 642
        // mon 0
        ivs 0
        abilityslot 15
        level 50
        pokemon SPECIES_MR_MIME
        move MOVE_TRICK_ROOM
        move MOVE_PSYCHIC
        move MOVE_SUBSTITUTE
        move MOVE_NONE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 55
        pokemon SPECIES_PARASECT
        move MOVE_SPORE
        move MOVE_GIGA_DRAIN
        move MOVE_X_SCISSOR
        move MOVE_SLASH
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 53
        pokemon SPECIES_POLIWRATH
        move MOVE_WAKE_UP_SLAP
        move MOVE_BELLY_DRUM
        move MOVE_DYNAMIC_PUNCH
        move MOVE_HYPNOSIS
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 15
        level 51
        pokemon SPECIES_DITTO
        move MOVE_TRANSFORM
        move MOVE_NONE
        move MOVE_NONE
        move MOVE_NONE
        ballseal 0
    endparty

trainerdata 643, "Kay & Tia"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_TWINS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 643
        // mon 0
        ivs 0
        abilityslot 15
        level 48
        pokemon SPECIES_QUAGSIRE
        move MOVE_RAIN_DANCE
        move MOVE_SURF
        move MOVE_EARTHQUAKE
        move MOVE_NONE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 48
        pokemon SPECIES_QUAGSIRE
        move MOVE_AMNESIA
        move MOVE_SURF
        move MOVE_YAWN
        move MOVE_NONE
        ballseal 0
    endparty

trainerdata 644, "Kay & Tia"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_TWINS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 644
        // mon 0
        ivs 0
        abilityslot 15
        level 53
        pokemon SPECIES_QUAGSIRE
        move MOVE_RAIN_DANCE
        move MOVE_SURF
        move MOVE_MUDDY_WATER
        move MOVE_EARTHQUAKE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 53
        pokemon SPECIES_QUAGSIRE
        move MOVE_AMNESIA
        move MOVE_SURF
        move MOVE_MUDDY_WATER
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 645, "Kay & Tia"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_TWINS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 645
        // mon 0
        ivs 0
        abilityslot 15
        level 55
        pokemon SPECIES_QUAGSIRE
        move MOVE_AMNESIA
        move MOVE_SURF
        move MOVE_YAWN
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 55
        pokemon SPECIES_QUAGSIRE
        move MOVE_RAIN_DANCE
        move MOVE_SURF
        move MOVE_MUDDY_WATER
        move MOVE_EARTHQUAKE
        ballseal 0
    endparty

trainerdata 646, "Josh"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIRD_KEEPER_GS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 646
        // mon 0
        ivs 50
        abilityslot 15
        level 47
        pokemon SPECIES_FEAROW
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 15
        level 44
        pokemon SPECIES_SKARMORY
        ballseal 0
    endparty

trainerdata 647, "Josh"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIRD_KEEPER_GS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 647
        // mon 0
        ivs 50
        abilityslot 15
        level 48
        pokemon SPECIES_SKARMORY
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 15
        level 51
        pokemon SPECIES_FEAROW
        ballseal 0
    endparty

trainerdata 648, "Josh"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BIRD_KEEPER_GS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 648
        // mon 0
        ivs 50
        abilityslot 15
        level 55
        pokemon SPECIES_SKARMORY
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 15
        level 55
        pokemon SPECIES_FEAROW
        ballseal 0
    endparty

trainerdata 649, "Torin"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SCHOOL_KID_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 649
        // mon 0
        ivs 0
        abilityslot 15
        level 46
        pokemon SPECIES_SANDSLASH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 45
        pokemon SPECIES_GOLBAT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 41
        pokemon SPECIES_VULPIX
        ballseal 0
    endparty

trainerdata 650, "Torin"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SCHOOL_KID_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 650
        // mon 0
        ivs 0
        abilityslot 15
        level 48
        pokemon SPECIES_SANDSLASH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 51
        pokemon SPECIES_GOLBAT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 48
        pokemon SPECIES_VULPIX
        ballseal 0
    endparty

trainerdata 651, "Torin"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SCHOOL_KID_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 651
        // mon 0
        ivs 0
        abilityslot 15
        level 52
        pokemon SPECIES_SANDSLASH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 53
        pokemon SPECIES_GOLBAT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 52
        pokemon SPECIES_VULPIX
        ballseal 0
    endparty

trainerdata 652, "Tim & Sue"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_YOUNG_COUPLE
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 652
        // mon 0
        ivs 0
        abilityslot 15
        level 45
        pokemon SPECIES_KADABRA
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 50
        pokemon SPECIES_GOLDUCK
        ballseal 0
    endparty

trainerdata 653, "Tim & Sue"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_YOUNG_COUPLE
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 653
        // mon 0
        ivs 0
        abilityslot 15
        level 48
        pokemon SPECIES_KADABRA
        move MOVE_RECOVER
        move MOVE_PSYCHIC
        move MOVE_ROLE_PLAY
        move MOVE_REFLECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 52
        pokemon SPECIES_GOLDUCK
        move MOVE_WATER_PULSE
        move MOVE_AMNESIA
        move MOVE_ZEN_HEADBUTT
        move MOVE_BLIZZARD
        ballseal 0
    endparty

trainerdata 654, "Tim & Sue"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_YOUNG_COUPLE
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 654
        // mon 0
        ivs 0
        abilityslot 15
        level 54
        pokemon SPECIES_ALAKAZAM
        move MOVE_PSYCHIC
        move MOVE_CALM_MIND
        move MOVE_REFLECT
        move MOVE_RECOVER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 56
        pokemon SPECIES_GOLDUCK
        move MOVE_HYDRO_PUMP
        move MOVE_AMNESIA
        move MOVE_AQUA_JET
        move MOVE_BLIZZARD
        ballseal 0
    endparty

trainerdata 655, "Kenny"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_HIKER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 655
        // mon 0
        ivs 0
        abilityslot 15
        level 16
        pokemon SPECIES_ONIX
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 33
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 37
        pokemon SPECIES_GOLEM
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 15
        level 32
        pokemon SPECIES_SANDSLASH
        ballseal 0
    endparty

trainerdata 656, "Kenny"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_HIKER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 656
        // mon 0
        ivs 0
        abilityslot 15
        level 42
        pokemon SPECIES_SANDSLASH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 37
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 44
        pokemon SPECIES_GOLEM
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 15
        level 46
        pokemon SPECIES_ONIX
        ballseal 0
    endparty

trainerdata 657, "Kenny"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_HIKER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 657
        // mon 0
        ivs 0
        abilityslot 15
        level 46
        pokemon SPECIES_SANDSLASH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 44
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 49
        pokemon SPECIES_GOLEM
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 15
        level 54
        pokemon SPECIES_STEELIX
        ballseal 0
    endparty

trainerdata 658, "Tanner"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_CAMPER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 658
        // mon 0
        ivs 0
        abilityslot 15
        level 41
        pokemon SPECIES_SUDOWOODO
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 41
        pokemon SPECIES_CHINCHOU
        ballseal 0
    endparty

trainerdata 659, "Tanner"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_CAMPER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 659
        // mon 0
        ivs 0
        abilityslot 15
        level 48
        pokemon SPECIES_SUDOWOODO
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 47
        pokemon SPECIES_LANTURN
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 44
        pokemon SPECIES_SKIPLOOM
        ballseal 0
    endparty

trainerdata 660, "Tanner"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_CAMPER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 660
        // mon 0
        ivs 0
        abilityslot 15
        level 52
        pokemon SPECIES_SUDOWOODO
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 52
        pokemon SPECIES_JUMPLUFF
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 52
        pokemon SPECIES_LANTURN
        ballseal 0
    endparty

trainerdata 661, "Kyle"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_FISHERMAN
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 661
        // mon 0
        ivs 0
        abilityslot 15
        level 40
        pokemon SPECIES_SEAKING
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 38
        pokemon SPECIES_QWILFISH
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 43
        pokemon SPECIES_SEAKING
        ballseal 0
    endparty

trainerdata 662, "Kyle"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_FISHERMAN
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 662
        // mon 0
        ivs 0
        abilityslot 15
        level 43
        pokemon SPECIES_SEAKING
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 41
        pokemon SPECIES_QWILFISH
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 47
        pokemon SPECIES_SEAKING
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 15
        level 39
        pokemon SPECIES_KRABBY
        ballseal 0
    endparty

trainerdata 663, "Kyle"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_FISHERMAN
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 663
        // mon 0
        ivs 0
        abilityslot 15
        level 48
        pokemon SPECIES_SEAKING
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 49
        pokemon SPECIES_QWILFISH
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 52
        pokemon SPECIES_SEAKING
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 15
        level 51
        pokemon SPECIES_KINGLER
        ballseal 0
    endparty

trainerdata 664, "Kyler"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_FISHERMAN
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 664
        // mon 0
        ivs 0
        abilityslot 15
        level 18
        pokemon SPECIES_MAGIKARP
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 18
        pokemon SPECIES_MAGIKARP
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 18
        pokemon SPECIES_MAGIKARP
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 15
        level 18
        pokemon SPECIES_MAGIKARP
        ballseal 0
    endparty

trainerdata 665, "Kyler"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_FISHERMAN
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 665
        // mon 0
        ivs 0
        abilityslot 15
        level 18
        pokemon SPECIES_MAGIKARP
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 18
        pokemon SPECIES_MAGIKARP
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 18
        pokemon SPECIES_MAGIKARP
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 15
        level 18
        pokemon SPECIES_MAGIKARP
        ballseal 0

        // mon 4
        ivs 0
        abilityslot 15
        level 18
        pokemon SPECIES_MAGIKARP
        ballseal 0
    endparty

trainerdata 666, "Kyler"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_FISHERMAN
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 666
        // mon 0
        ivs 0
        abilityslot 15
        level 18
        pokemon SPECIES_MAGIKARP
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 18
        pokemon SPECIES_MAGIKARP
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 18
        pokemon SPECIES_MAGIKARP
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 15
        level 18
        pokemon SPECIES_MAGIKARP
        ballseal 0

        // mon 4
        ivs 0
        abilityslot 15
        level 18
        pokemon SPECIES_MAGIKARP
        ballseal 0

        // mon 5
        ivs 0
        abilityslot 15
        level 18
        pokemon SPECIES_MAGIKARP
        ballseal 0
    endparty

trainerdata 667, "Cheryl"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_PKMN_TRAINER_CHERYL
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 667
        // mon 0
        ivs 200
        abilityslot 15
        level 61
        pokemon SPECIES_WOBBUFFET
        item ITEM_NONE
        move MOVE_COUNTER
        move MOVE_MIRROR_COAT
        move MOVE_SAFEGUARD
        move MOVE_ENCORE
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 15
        level 61
        pokemon SPECIES_DRIFBLIM
        item ITEM_NONE
        move MOVE_TOXIC
        move MOVE_OMINOUS_WIND
        move MOVE_FLY
        move MOVE_PROTECT
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 15
        level 62
        pokemon SPECIES_HARIYAMA
        item ITEM_NONE
        move MOVE_CLOSE_COMBAT
        move MOVE_EARTHQUAKE
        move MOVE_BULLET_PUNCH
        move MOVE_STONE_EDGE
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 15
        level 63
        pokemon SPECIES_WAILORD
        item ITEM_NONE
        move MOVE_WATER_SPOUT
        move MOVE_BRINE
        move MOVE_EARTHQUAKE
        move MOVE_AVALANCHE
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 15
        level 65
        pokemon SPECIES_BLISSEY
        item ITEM_SITRUS_BERRY
        move MOVE_SOFT_BOILED
        move MOVE_COUNTER
        move MOVE_PSYCHIC
        move MOVE_TOXIC
        ballseal 0
    endparty

trainerdata 668, "Marley"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_PKMN_TRAINER_MARLEY
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 668
        // mon 0
        ivs 200
        abilityslot 15
        level 61
        pokemon SPECIES_NINJASK
        item ITEM_NONE
        move MOVE_X_SCISSOR
        move MOVE_AERIAL_ACE
        move MOVE_SWORDS_DANCE
        move MOVE_SLASH
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 15
        level 61
        pokemon SPECIES_ELECTRODE
        item ITEM_NONE
        move MOVE_HYPER_BEAM
        move MOVE_THUNDER
        move MOVE_THUNDER_WAVE
        move MOVE_DOUBLE_TEAM
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 15
        level 62
        pokemon SPECIES_CROBAT
        item ITEM_NONE
        move MOVE_AIR_SLASH
        move MOVE_POISON_FANG
        move MOVE_CONFUSE_RAY
        move MOVE_DOUBLE_TEAM
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 15
        level 63
        pokemon SPECIES_WEAVILE
        item ITEM_NONE
        move MOVE_ICE_SHARD
        move MOVE_NIGHT_SLASH
        move MOVE_ICE_PUNCH
        move MOVE_AERIAL_ACE
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 15
        level 65
        pokemon SPECIES_ARCANINE
        item ITEM_SITRUS_BERRY
        move MOVE_EXTREME_SPEED
        move MOVE_FLARE_BLITZ
        move MOVE_CRUNCH
        move MOVE_THUNDER_FANG
        ballseal 0
    endparty

trainerdata 669, "Mira"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_PKMN_TRAINER_MIRA
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 669
        // mon 0
        ivs 200
        abilityslot 15
        level 61
        pokemon SPECIES_PORYGON_Z
        item ITEM_NONE
        move MOVE_TRI_ATTACK
        move MOVE_PSYCHIC
        move MOVE_THUNDERBOLT
        move MOVE_DARK_PULSE
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 15
        level 61
        pokemon SPECIES_GENGAR
        item ITEM_NONE
        move MOVE_SHADOW_BALL
        move MOVE_PSYCHIC
        move MOVE_SLUDGE_BOMB
        move MOVE_ENERGY_BALL
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 15
        level 62
        pokemon SPECIES_MAGNEZONE
        item ITEM_NONE
        move MOVE_THUNDER
        move MOVE_FLASH_CANNON
        move MOVE_THUNDER_WAVE
        move MOVE_HYPER_BEAM
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 15
        level 63
        pokemon SPECIES_TOGEKISS
        item ITEM_NONE
        move MOVE_EXTREME_SPEED
        move MOVE_AIR_SLASH
        move MOVE_AURA_SPHERE
        move MOVE_PSYCHIC
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 15
        level 65
        pokemon SPECIES_ALAKAZAM
        item ITEM_SITRUS_BERRY
        move MOVE_PSYCHIC
        move MOVE_FOCUS_BLAST
        move MOVE_CALM_MIND
        move MOVE_HYPER_BEAM
        ballseal 0
    endparty

trainerdata 670, "Riley"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_PKMN_TRAINER_RILEY
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 670
        // mon 0
        ivs 200
        abilityslot 15
        level 61
        pokemon SPECIES_ABSOL
        item ITEM_NONE
        move MOVE_PSYCHO_CUT
        move MOVE_NIGHT_SLASH
        move MOVE_SWORDS_DANCE
        move MOVE_QUICK_ATTACK
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 15
        level 61
        pokemon SPECIES_URSARING
        item ITEM_NONE
        move MOVE_AVALANCHE
        move MOVE_SLASH
        move MOVE_AERIAL_ACE
        move MOVE_SHADOW_CLAW
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 15
        level 62
        pokemon SPECIES_METAGROSS
        item ITEM_NONE
        move MOVE_METEOR_MASH
        move MOVE_ZEN_HEADBUTT
        move MOVE_HAMMER_ARM
        move MOVE_BULLET_PUNCH
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 15
        level 63
        pokemon SPECIES_SALAMENCE
        item ITEM_NONE
        move MOVE_DRAGON_CLAW
        move MOVE_CRUNCH
        move MOVE_FIRE_FANG
        move MOVE_THUNDER_FANG
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 15
        level 65
        pokemon SPECIES_LUCARIO
        item ITEM_SITRUS_BERRY
        move MOVE_EXTREME_SPEED
        move MOVE_CLOSE_COMBAT
        move MOVE_BONE_RUSH
        move MOVE_BLAZE_KICK
        ballseal 0
    endparty

trainerdata 671, "Buck"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_PKMN_TRAINER_BUCK
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 671
        // mon 0
        ivs 200
        abilityslot 15
        level 61
        pokemon SPECIES_SHUCKLE
        item ITEM_NONE
        move MOVE_REST
        move MOVE_TOXIC
        move MOVE_PROTECT
        move MOVE_SANDSTORM
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 15
        level 62
        pokemon SPECIES_UMBREON
        item ITEM_NONE
        move MOVE_DARK_PULSE
        move MOVE_PSYCHIC
        move MOVE_CONFUSE_RAY
        move MOVE_DOUBLE_TEAM
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 15
        level 61
        pokemon SPECIES_TORKOAL
        item ITEM_NONE
        move MOVE_EARTHQUAKE
        move MOVE_WILL_O_WISP
        move MOVE_ERUPTION
        move MOVE_PROTECT
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 15
        level 63
        pokemon SPECIES_DUSKNOIR
        item ITEM_NONE
        move MOVE_FIRE_PUNCH
        move MOVE_ICE_PUNCH
        move MOVE_THUNDER_PUNCH
        move MOVE_SHADOW_BALL
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 15
        level 65
        pokemon SPECIES_CLAYDOL
        item ITEM_SITRUS_BERRY
        move MOVE_EARTH_POWER
        move MOVE_PSYCHIC
        move MOVE_ANCIENT_POWER
        move MOVE_CALM_MIND
        ballseal 0
    endparty

trainerdata 672, "Alfred"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_GENTLEMAN
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 672
        // mon 0
        ivs 0
        abilityslot 0
        level 36
        pokemon SPECIES_NOCTOWL
        ballseal 0
    endparty

trainerdata 673, "Alfred"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_GENTLEMAN
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 673
        // mon 0
        ivs 0
        abilityslot 15
        level 42
        pokemon SPECIES_NOCTOWL
        ballseal 0
    endparty

trainerdata 674, "Alfred"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_GENTLEMAN
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 674
        // mon 0
        ivs 0
        abilityslot 15
        level 58
        pokemon SPECIES_NOCTOWL
        move MOVE_HYPNOSIS
        move MOVE_DREAM_EATER
        move MOVE_AIR_SLASH
        move MOVE_REFLECT
        ballseal 0
    endparty

trainerdata 675, "Lance"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_PKMN_TRAINER_LANCE
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 675
        // mon 1
        ivs 255
        abilityslot 32
        level 60
        pokemon SPECIES_DRAGONITE
        item ITEM_LUM_BERRY
        move MOVE_DRAGON_CLAW
        move MOVE_DUAL_WINGBEAT
        move MOVE_EXTREME_SPEED
        move MOVE_ROOST
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 60
        pokemon SPECIES_LATIAS
        item ITEM_LEFTOVERS
        move MOVE_MIST_BALL
        move MOVE_DRAGON_PULSE
        move MOVE_DRAINING_KISS
        move MOVE_RECOVER
        nature NATURE_BOLD
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 60
        pokemon SPECIES_MELMETAL
        item ITEM_OCCA_BERRY
        move MOVE_DYNAMIC_PUNCH
        move MOVE_THUNDER_PUNCH
        move MOVE_ICE_PUNCH
        move MOVE_PROTECT
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 60
        monwithform SPECIES_ZYGARDE, 1
        item ITEM_SOFT_SAND
        move MOVE_OUTRAGE
        move MOVE_THOUSAND_ARROWS
        move MOVE_CRUNCH
        move MOVE_EXTREME_SPEED
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 60
        pokemon SPECIES_WALKING_WAKE
        item ITEM_LUM_BERRY
        move MOVE_DRAGON_PULSE
        move MOVE_SCALD
        move MOVE_WEATHER_BALL
        move MOVE_SNARL
        nature NATURE_TIMID
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 60
        pokemon SPECIES_TYRANITAR
        item ITEM_TYRANITARITE
        move MOVE_ROCK_SLIDE
        move MOVE_CRUNCH
        move MOVE_FIRE_PUNCH
        move MOVE_THUNDER_PUNCH
        nature NATURE_JOLLY
        ballseal 0
    endparty

trainerdata 676, "Parker"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_SAILOR
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 676
        // mon 0
        ivs 0
        abilityslot 32
        level 43
        pokemon SPECIES_HORSEA
        move MOVE_WATER_PULSE
        move MOVE_FOCUS_ENERGY
        move MOVE_TWISTER
        move MOVE_AGILITY
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 43
        pokemon SPECIES_SEADRA
        move MOVE_WATER_PULSE
        move MOVE_FOCUS_ENERGY
        move MOVE_TWISTER
        move MOVE_AGILITY
        ballseal 0
    endparty

trainerdata 677, "Eddie"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_SAILOR
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 677
        // mon 0
        ivs 0
        abilityslot 32
        level 48
        pokemon SPECIES_AZUMARILL
        move MOVE_WATER_PULSE
        move MOVE_AQUA_RING
        move MOVE_DOUBLE_EDGE
        move MOVE_AQUA_TAIL
        ballseal 0
    endparty

trainerdata 678, "Joy"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_SWIMMER_F
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 678
        // mon 0
        ivs 0
        abilityslot 32
        level 48
        pokemon SPECIES_CLOYSTER
        move MOVE_WATER_PULSE
        move MOVE_SPIKE_CANNON
        move MOVE_AURORA_BEAM
        move MOVE_ATTRACT
        ballseal 0
    endparty

trainerdata 679, "Callie"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_BEAUTY
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 679
        // mon 0
        ivs 255
        abilityslot 32
        level 39
        pokemon SPECIES_WIGGLYTUFF
        item ITEM_METRONOME
        move MOVE_DAZZLING_GLEAM
        move MOVE_ECHOED_VOICE
        move MOVE_ENCORE
        move MOVE_METRONOME
        nature NATURE_MODEST
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 39
        pokemon SPECIES_AROMATISSE
        item ITEM_SITRUS_BERRY
        move MOVE_MOONBLAST
        move MOVE_FLASH_CANNON
        move MOVE_THUNDERBOLT
        move MOVE_METRONOME
        nature NATURE_MODEST
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 32
        level 40
        pokemon SPECIES_CLEFABLE
        item ITEM_LIFE_ORB
        move MOVE_DRAINING_KISS
        move MOVE_PSYCHIC
        move MOVE_FOLLOW_ME
        move MOVE_METRONOME
        nature NATURE_MODEST
        ballseal 0      
    endparty

trainerdata 680, "Kassandra"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_BEAUTY
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 680
        // mon 0
        ivs 255
        abilityslot 32
        level 39
        pokemon SPECIES_CLEFABLE
        item ITEM_LIFE_ORB
        move MOVE_DRAINING_KISS
        move MOVE_PSYCHIC
        move MOVE_FOLLOW_ME
        move MOVE_METRONOME
        nature NATURE_MODEST
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 2
        level 39
        pokemon SPECIES_SLURPUFF
        item ITEM_SITRUS_BERRY
        move MOVE_PLAY_ROUGH
        move MOVE_DRAIN_PUNCH
        move MOVE_YAWN
        move MOVE_METRONOME
        nature NATURE_ADAMANT
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 32
        level 40
        pokemon SPECIES_WIGGLYTUFF
        item ITEM_METRONOME
        move MOVE_DAZZLING_GLEAM
        move MOVE_ECHOED_VOICE
        move MOVE_ENCORE
        move MOVE_METRONOME
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 681, "Arabella"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_ACE_TRAINER_M_GS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 681
        // mon 0
        ivs 60
        abilityslot 15
        level 53
        pokemon SPECIES_STANTLER
        move MOVE_ZEN_HEADBUTT
        move MOVE_RETURN
        move MOVE_ME_FIRST
        move MOVE_TRICK_ROOM
        ballseal 0

        // mon 1
        ivs 60
        abilityslot 15
        level 52
        pokemon SPECIES_TAUROS
        move MOVE_TAKE_DOWN
        move MOVE_THUNDER
        move MOVE_SURF
        move MOVE_FIRE_BLAST
        ballseal 0
    endparty

trainerdata 682, "Bonita"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_ACE_TRAINER_M_GS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 682
        // mon 0
        ivs 60
        abilityslot 15
        level 50
        pokemon SPECIES_SPINDA
        move MOVE_FLAIL
        move MOVE_FAKE_OUT
        move MOVE_TEETER_DANCE
        move MOVE_TRICK_ROOM
        ballseal 0

        // mon 1
        ivs 60
        abilityslot 32
        level 52
        pokemon SPECIES_SUDOWOODO
        move MOVE_WOOD_HAMMER
        move MOVE_HAMMER_ARM
        move MOVE_EARTHQUAKE
        move MOVE_STONE_EDGE
        ballseal 0
    endparty

trainerdata 683, "Salma"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_ACE_TRAINER_F_GS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 683
        // mon 0
        ivs 60
        abilityslot 15
        level 50
        pokemon SPECIES_SLOWKING
        item ITEM_ORAN_BERRY
        move MOVE_SURF
        move MOVE_PSYCHIC
        move MOVE_FLAMETHROWER
        move MOVE_TRICK_ROOM
        ballseal 0

        // mon 1
        ivs 60
        abilityslot 15
        level 53
        pokemon SPECIES_LICKILICKY
        item ITEM_NONE
        move MOVE_WRING_OUT
        move MOVE_THUNDERBOLT
        move MOVE_EARTHQUAKE
        move MOVE_ICE_BEAM
        ballseal 0
    endparty

trainerdata 684, "Elan & Ida"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_DOUBLE_TEAM
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 684
        // mon 0
        ivs 60
        abilityslot 32
        level 52
        pokemon SPECIES_PORYGON2
        item ITEM_NONE
        move MOVE_TRI_ATTACK
        move MOVE_CHARGE_BEAM
        move MOVE_PROTECT
        move MOVE_TRICK_ROOM
        ballseal 0

        // mon 1
        ivs 60
        abilityslot 32
        level 50
        pokemon SPECIES_AZUMARILL
        item ITEM_NONE
        move MOVE_WATERFALL
        move MOVE_AQUA_JET
        move MOVE_SUPERPOWER
        move MOVE_ATTRACT
        ballseal 0
    endparty

trainerdata 685, "Edwin"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_HIKER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 685
        // mon 0
        ivs 80
        abilityslot 15
        level 50
        pokemon SPECIES_GOLEM
        move MOVE_DOUBLE_EDGE
        move MOVE_ROCK_SLIDE
        move MOVE_SANDSTORM
        move MOVE_ROAR
        ballseal 0
    endparty

trainerdata 686, "Bryce"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BOARDER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 686
        // mon 0
        ivs 0
        abilityslot 15
        level 55
        pokemon SPECIES_DEWGONG
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 50
        pokemon SPECIES_LAPRAS
        ballseal 0
    endparty

trainerdata 687, "Shaun"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BOARDER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 687
        // mon 0
        ivs 0
        abilityslot 15
        level 55
        pokemon SPECIES_CLOYSTER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 50
        pokemon SPECIES_DEWGONG
        ballseal 0
    endparty

trainerdata 688, "Cady"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_SKIER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 688
        // mon 0
        ivs 0
        abilityslot 15
        level 53
        pokemon SPECIES_DELIBIRD
        ballseal 0
    endparty

trainerdata 689, "Cary"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_SUPER_NERD
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 689
        // mon 0
        ivs 0
        abilityslot 15
        level 53
        pokemon SPECIES_TORKOAL
        move MOVE_OVERHEAT
        move MOVE_IRON_TAIL
        move MOVE_BODY_SLAM
        move MOVE_IRON_DEFENSE
        ballseal 0
    endparty

trainerdata 690, "Waldo"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_SUPER_NERD
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 690
        // mon 0
        ivs 0
        abilityslot 32
        level 53
        pokemon SPECIES_NUMEL
        move MOVE_OVERHEAT
        move MOVE_AMNESIA
        move MOVE_EARTH_POWER
        move MOVE_MAGNITUDE
        ballseal 0
    endparty

trainerdata 691, "Merle"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_SUPER_NERD
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 691
        // mon 0
        ivs 0
        abilityslot 32
        level 53
        pokemon SPECIES_MAGCARGO
        move MOVE_OVERHEAT
        move MOVE_ROCK_SLIDE
        move MOVE_YAWN
        move MOVE_RECOVER
        ballseal 0
    endparty

trainerdata 692, "Lowell"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_SCIENTIST_GS
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 692
        // mon 0
        ivs 0
        abilityslot 15
        level 50
        pokemon SPECIES_ARCANINE
        move MOVE_OVERHEAT
        move MOVE_EXTREME_SPEED
        move MOVE_FIRE_FANG
        move MOVE_THUNDER_FANG
        ballseal 0
    endparty

trainerdata 693, "Linden"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_SCIENTIST_GS
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 693
        // mon 0
        ivs 0
        abilityslot 15
        level 50
        pokemon SPECIES_MAGMAR
        move MOVE_OVERHEAT
        move MOVE_FIRE_PUNCH
        move MOVE_CONFUSE_RAY
        move MOVE_FEINT_ATTACK
        ballseal 0
    endparty

trainerdata 694, "Daniel"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass TRAINERCLASS_SCIENTIST_GS
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 694
        // mon 0
        ivs 0
        abilityslot 15
        level 50
        pokemon SPECIES_NINETALES
        move MOVE_OVERHEAT
        move MOVE_WILL_O_WISP
        move MOVE_QUICK_ATTACK
        move MOVE_ROAR
        ballseal 0
    endparty

trainerdata 695, "Dane"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BUG_CATCHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 695
        // mon 0
        ivs 0
        abilityslot 15
        level 44
        pokemon SPECIES_BEEDRILL
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 48
        pokemon SPECIES_BUTTERFREE
        ballseal 0
    endparty

trainerdata 696, "Dion"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BUG_CATCHER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 696
        // mon 0
        ivs 0
        abilityslot 15
        level 50
        pokemon SPECIES_ARIADOS
        ballseal 0
    endparty

trainerdata 697, "Stacey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BUG_CATCHER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 697
        // mon 0
        ivs 0
        abilityslot 15
        level 52
        pokemon SPECIES_METAPOD
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 56
        pokemon SPECIES_METAPOD
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 60
        pokemon SPECIES_METAPOD
        ballseal 0
    endparty

trainerdata 698, "Ellis"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BUG_CATCHER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 698
        // mon 0
        ivs 0
        abilityslot 15
        level 28
        pokemon SPECIES_WEEDLE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 38
        pokemon SPECIES_KAKUNA
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 46
        pokemon SPECIES_BEEDRILL
        ballseal 0
    endparty

trainerdata 699, "Abner"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BUG_CATCHER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 699
        // mon 0
        ivs 0
        abilityslot 15
        level 44
        pokemon SPECIES_BUTTERFREE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 15
        level 44
        pokemon SPECIES_BEEDRILL
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 15
        level 44
        pokemon SPECIES_PIKACHU
        ballseal 0
    endparty

trainerdata 700, "Giovanni" // multi @ tohjo falls
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_ROCKET_BOSS
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 700
        // mon 0
        ivs 100
        abilityslot 15
        level 42
        pokemon SPECIES_NIDOKING
        item ITEM_NONE
        move MOVE_FOCUS_ENERGY
        move MOVE_FURY_ATTACK
        move MOVE_DOUBLE_KICK
        move MOVE_SHADOW_CLAW
        ballseal 0

        // mon 1
        ivs 100
        abilityslot 32
        level 40
        pokemon SPECIES_KANGASKHAN
        item ITEM_NONE
        move MOVE_DIZZY_PUNCH
        move MOVE_SUCKER_PUNCH
        move MOVE_LEER
        move MOVE_OUTRAGE
        ballseal 0

        // mon 2
        ivs 100
        abilityslot 15
        level 43
        pokemon SPECIES_HONCHKROW
        item ITEM_NONE
        move MOVE_DARK_PULSE
        move MOVE_NASTY_PLOT
        move MOVE_SWAGGER
        move MOVE_SHADOW_BALL
        ballseal 0

        // mon 3
        ivs 100
        abilityslot 15
        level 46
        pokemon SPECIES_NIDOQUEEN
        item ITEM_NONE
        move MOVE_EARTH_POWER
        move MOVE_SUPERPOWER
        move MOVE_CRUNCH
        move MOVE_ROAR
        ballseal 0
    endparty

trainerdata 701, "Lance"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_CHAMPION
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 701
        // mon 0
        ivs 250
        abilityslot 15
        level 72
        pokemon SPECIES_SALAMENCE
        item ITEM_LUM_BERRY
        move MOVE_FLAMETHROWER
        move MOVE_SHADOW_CLAW
        move MOVE_DRAGON_CLAW
        move MOVE_REST
        ballseal 0

        // mon 1
        ivs 250
        abilityslot 15
        level 68
        pokemon SPECIES_GYARADOS
        item ITEM_NONE
        move MOVE_THUNDER_WAVE
        move MOVE_ICE_FANG
        move MOVE_WATERFALL
        move MOVE_DRAGON_DANCE
        ballseal 0

        // mon 2
        ivs 250
        abilityslot 15
        level 72
        pokemon SPECIES_GARCHOMP
        item ITEM_NONE
        move MOVE_SWORDS_DANCE
        move MOVE_OUTRAGE
        move MOVE_EARTHQUAKE
        move MOVE_ROAR
        ballseal 0

        // mon 3
        ivs 250
        abilityslot 15
        level 73
        pokemon SPECIES_ALTARIA
        item ITEM_NONE
        move MOVE_PERISH_SONG
        move MOVE_DRAGON_BREATH
        move MOVE_DOUBLE_TEAM
        move MOVE_HYPER_BEAM
        ballseal 0

        // mon 4
        ivs 250
        abilityslot 15
        level 68
        pokemon SPECIES_CHARIZARD
        item ITEM_NONE
        move MOVE_FLAMETHROWER
        move MOVE_AIR_SLASH
        move MOVE_DRAGON_CLAW
        move MOVE_HYPER_BEAM
        ballseal 0

        // mon 5
        ivs 250
        abilityslot 15
        level 75
        pokemon SPECIES_DRAGONITE
        item ITEM_SITRUS_BERRY
        move MOVE_FIRE_BLAST
        move MOVE_SAFEGUARD
        move MOVE_DRACO_METEOR
        move MOVE_HYPER_BEAM
        ballseal 0
    endparty

trainerdata 702, "Will"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_ELITE_FOUR_WILL
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 702
        // mon 0
        ivs 250
        abilityslot 32
        level 58
        pokemon SPECIES_BRONZONG
        item ITEM_NONE
        move MOVE_REFLECT
        move MOVE_PAYBACK
        move MOVE_GRAVITY
        move MOVE_PSYCHIC
        ballseal 0

        // mon 1
        ivs 250
        abilityslot 15
        level 60
        pokemon SPECIES_JYNX
        item ITEM_NONE
        move MOVE_FAKE_TEARS
        move MOVE_LOVELY_KISS
        move MOVE_BLIZZARD
        move MOVE_DREAM_EATER
        ballseal 0

        // mon 2
        ivs 250
        abilityslot 15
        level 59
        pokemon SPECIES_GRUMPIG
        item ITEM_NONE
        move MOVE_CONFUSE_RAY
        move MOVE_SIGNAL_BEAM
        move MOVE_POWER_GEM
        move MOVE_PSYCHIC
        ballseal 0

        // mon 3
        ivs 250
        abilityslot 32
        level 60
        pokemon SPECIES_SLOWBRO
        item ITEM_NONE
        move MOVE_CURSE
        move MOVE_AMNESIA
        move MOVE_BODY_SLAM
        move MOVE_PSYCHIC
        ballseal 0

        // mon 4
        ivs 250
        abilityslot 15
        level 61
        pokemon SPECIES_GARDEVOIR
        item ITEM_NONE
        move MOVE_FOCUS_BLAST
        move MOVE_CHARGE_BEAM
        move MOVE_CALM_MIND
        move MOVE_PSYCHIC
        ballseal 0

        // mon 5
        ivs 250
        abilityslot 32
        level 62
        pokemon SPECIES_XATU
        item ITEM_SITRUS_BERRY
        move MOVE_QUICK_ATTACK
        move MOVE_SHADOW_BALL
        move MOVE_CONFUSE_RAY
        move MOVE_PSYCHIC
        ballseal 0
    endparty

trainerdata 703, "Koga"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_ELITE_FOUR_KOGA
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 703
        // mon 0
        ivs 250
        abilityslot 32
        level 61
        pokemon SPECIES_SKUNTANK
        item ITEM_NONE
        move MOVE_SUCKER_PUNCH
        move MOVE_DIG
        move MOVE_TOXIC
        move MOVE_EXPLOSION
        ballseal 0

        // mon 1
        ivs 250
        abilityslot 15
        level 63
        pokemon SPECIES_VENOMOTH
        item ITEM_NONE
        move MOVE_DOUBLE_TEAM
        move MOVE_BATON_PASS
        move MOVE_PSYCHIC
        move MOVE_SILVER_WIND
        ballseal 0

        // mon 2
        ivs 250
        abilityslot 32
        level 60
        pokemon SPECIES_TOXICROAK
        item ITEM_NONE
        move MOVE_CROSS_CHOP
        move MOVE_X_SCISSOR
        move MOVE_SWAGGER
        move MOVE_GUNK_SHOT
        ballseal 0

        // mon 3
        ivs 250
        abilityslot 32
        level 62
        pokemon SPECIES_MUK
        item ITEM_BLACK_SLUDGE
        move MOVE_MINIMIZE
        move MOVE_SCREECH
        move MOVE_SWAGGER
        move MOVE_TOXIC
        ballseal 0

        // mon 4
        ivs 250
        abilityslot 15
        level 64
        pokemon SPECIES_CROBAT
        item ITEM_NONE
        move MOVE_TOXIC
        move MOVE_MEAN_LOOK
        move MOVE_FLY
        move MOVE_CROSS_POISON
        ballseal 0

        // mon 5
        ivs 250
        abilityslot 32
        level 62
        pokemon SPECIES_SWALOT
        item ITEM_LEFTOVERS
        move MOVE_YAWN
        move MOVE_AMNESIA
        move MOVE_PAIN_SPLIT
        move MOVE_SLUDGE_BOMB
        ballseal 0
    endparty

trainerdata 704, "Bruno"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_ELITE_FOUR_BRUNO
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 704
        // mon 0
        ivs 250
        abilityslot 32
        level 62
        pokemon SPECIES_HITMONTOP
        item ITEM_NONE
        move MOVE_COUNTER
        move MOVE_QUICK_ATTACK
        move MOVE_CLOSE_COMBAT
        move MOVE_EARTHQUAKE
        ballseal 0

        // mon 1
        ivs 250
        abilityslot 32
        level 61
        pokemon SPECIES_HITMONLEE
        item ITEM_NONE
        move MOVE_SWAGGER
        move MOVE_CLOSE_COMBAT
        move MOVE_REVERSAL
        move MOVE_BLAZE_KICK
        ballseal 0

        // mon 2
        ivs 250
        abilityslot 32
        level 61
        pokemon SPECIES_HITMONCHAN
        item ITEM_NONE
        move MOVE_SUBSTITUTE
        move MOVE_DRAIN_PUNCH
        move MOVE_CLOSE_COMBAT
        move MOVE_BULLET_PUNCH
        ballseal 0

        // mon 3
        ivs 250
        abilityslot 15
        level 62
        pokemon SPECIES_HARIYAMA
        item ITEM_SITRUS_BERRY
        move MOVE_LOW_KICK
        move MOVE_PAYBACK
        move MOVE_BULLET_PUNCH
        move MOVE_BULK_UP
        ballseal 0

        // mon 4
        ivs 250
        abilityslot 32
        level 64
        pokemon SPECIES_MACHAMP
        item ITEM_NONE
        move MOVE_BULLET_PUNCH
        move MOVE_FORESIGHT
        move MOVE_STONE_EDGE
        move MOVE_DYNAMIC_PUNCH
        ballseal 0

        // mon 5
        ivs 250
        abilityslot 32
        level 64
        pokemon SPECIES_LUCARIO
        item ITEM_NONE
        move MOVE_EXTREME_SPEED
        move MOVE_CLOSE_COMBAT
        move MOVE_COUNTER
        move MOVE_IRON_TAIL
        ballseal 0
    endparty

trainerdata 705, "Karen"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_ELITE_FOUR_KAREN
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 705
        // mon 0
        ivs 250
        abilityslot 15
        level 62
        pokemon SPECIES_WEAVILE
        item ITEM_NONE
        move MOVE_ICE_SHARD
        move MOVE_NIGHT_SLASH
        move MOVE_ICE_PUNCH
        move MOVE_LOW_KICK
        ballseal 0

        // mon 1
        ivs 250
        abilityslot 15
        level 62
        pokemon SPECIES_SPIRITOMB
        item ITEM_NONE
        move MOVE_CURSE
        move MOVE_CONFUSE_RAY
        move MOVE_PAIN_SPLIT
        move MOVE_SUCKER_PUNCH
        ballseal 0

        // mon 2
        ivs 250
        abilityslot 32
        level 62
        pokemon SPECIES_ABSOL
        item ITEM_NONE
        move MOVE_NIGHT_SLASH
        move MOVE_PSYCHO_CUT
        move MOVE_DETECT
        move MOVE_PERISH_SONG
        ballseal 0

        // mon 3
        ivs 250
        abilityslot 32
        level 64
        pokemon SPECIES_HONCHKROW
        item ITEM_NONE
        move MOVE_DRILL_PECK
        move MOVE_WHIRLWIND
        move MOVE_SUCKER_PUNCH
        move MOVE_THUNDER_WAVE
        ballseal 0

        // mon 4
        ivs 250
        abilityslot 15
        level 63
        pokemon SPECIES_HOUNDOOM
        item ITEM_NONE
        move MOVE_NASTY_PLOT
        move MOVE_DARK_PULSE
        move MOVE_FLAMETHROWER
        move MOVE_SLUDGE_BOMB
        ballseal 0

        // mon 5
        ivs 250
        abilityslot 15
        level 64
        pokemon SPECIES_UMBREON
        item ITEM_SITRUS_BERRY
        move MOVE_CURSE
        move MOVE_PAYBACK
        move MOVE_CONFUSE_RAY
        move MOVE_SUCKER_PUNCH
        ballseal 0
    endparty

trainerdata 706, "Proton"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_EXECUTIVE_PROTON
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 706
        // mon 0
        ivs 255
        abilityslot 15
        level 66
        pokemon SPECIES_GIGALITH
        item ITEM_CUSTAP_BERRY
        move MOVE_POWER_GEM
        move MOVE_EARTHQUAKE
        move MOVE_EXPLOSION
        move MOVE_STEALTH_ROCK
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 66
        pokemon SPECIES_GYARADOS
        item ITEM_LEFTOVERS
        move MOVE_HURRICANE
        move MOVE_EARTHQUAKE
        move MOVE_STONE_EDGE
        move MOVE_COIL
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 66
        pokemon SPECIES_EELEKTROSS
        item ITEM_ASSAULT_VEST
        move MOVE_THUNDERBOLT
        move MOVE_FLAMETHROWER
        move MOVE_KNOCK_OFF
        move MOVE_VOLT_SWITCH
        nature NATURE_CALM
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_TANGROWTH
        item ITEM_ASSAULT_VEST
        move MOVE_GIGA_DRAIN
        move MOVE_EARTHQUAKE
        move MOVE_SLUDGE_BOMB
        move MOVE_KNOCK_OFF
        nature NATURE_SASSY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 66
        pokemon SPECIES_GARCHOMP
        item ITEM_ASSAULT_VEST
        move MOVE_DRACO_METEOR
        move MOVE_EARTHQUAKE
        move MOVE_IRON_HEAD
        move MOVE_ROCK_SLIDE
        nature NATURE_CAREFUL
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 15
        level 66
        pokemon SPECIES_HERACROSS
        item ITEM_HERACRONITE
        move MOVE_PIN_MISSILE
        move MOVE_ARM_THRUST
        move MOVE_ROCK_BLAST
        move MOVE_SWORDS_DANCE
        nature NATURE_ADAMANT
        ballseal 0
    endparty

trainerdata 707, "Palmer"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_TOWER_TYCOON
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 707
        // mon 0
        ivs 0
        abilityslot 15
        level 5
        pokemon SPECIES_RATTATA
        ballseal 0
    endparty

trainerdata 708, "Argenta"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_HALL_MATRON
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 708
        // mon 0
        ivs 0
        abilityslot 15
        level 5
        pokemon SPECIES_RATTATA
        ballseal 0
    endparty

trainerdata 709, "Thorton"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_FACTORY_HEAD
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 709
        // mon 0
        ivs 0
        abilityslot 15
        level 5
        pokemon SPECIES_RATTATA
        ballseal 0
    endparty

trainerdata 710, "Dahlia"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_ARCADE_STAR
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 710
        // mon 0
        ivs 0
        abilityslot 15
        level 5
        pokemon SPECIES_RATTATA
        ballseal 0
    endparty

trainerdata 711, "Darach"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_CASTLE_VALET
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 711
        // mon 0
        ivs 0
        abilityslot 15
        level 5
        pokemon SPECIES_RATTATA
        ballseal 0
    endparty

trainerdata 712, "Falkner"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_LEADER_FALKNER
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 712
        // mon 0
        ivs 200
        abilityslot 15
        level 50
        pokemon SPECIES_STARAPTOR
        item ITEM_NONE
        move MOVE_ATTRACT
        move MOVE_BRAVE_BIRD
        move MOVE_CLOSE_COMBAT
        move MOVE_U_TURN
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 15
        level 52
        pokemon SPECIES_NOCTOWL
        item ITEM_NONE
        move MOVE_ROOST
        move MOVE_AIR_SLASH
        move MOVE_SHADOW_BALL
        move MOVE_FEATHER_DANCE
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 15
        level 52
        pokemon SPECIES_SWELLOW
        item ITEM_FLAME_ORB
        move MOVE_FACADE
        move MOVE_PROTECT
        move MOVE_DOUBLE_TEAM
        move MOVE_ENDEAVOR
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 15
        level 54
        pokemon SPECIES_HONCHKROW
        item ITEM_NONE
        move MOVE_NIGHT_SLASH
        move MOVE_SUCKER_PUNCH
        move MOVE_THUNDER_WAVE
        move MOVE_DARK_PULSE
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 15
        level 48
        pokemon SPECIES_PELIPPER
        item ITEM_NONE
        move MOVE_SURF
        move MOVE_TAILWIND
        move MOVE_ICE_BEAM
        move MOVE_HIDDEN_POWER
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 15
        level 56
        pokemon SPECIES_PIDGEOT
        item ITEM_NONE
        move MOVE_RETURN
        move MOVE_DOUBLE_TEAM
        move MOVE_SWAGGER
        move MOVE_ROOST
        ballseal 0
    endparty

trainerdata 713, "Bugsy"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_LEADER_BUGSY
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 713
        // mon 0
        ivs 200
        abilityslot 32
        level 56
        pokemon SPECIES_SCIZOR
        item ITEM_SITRUS_BERRY
        move MOVE_BULLET_PUNCH
        move MOVE_X_SCISSOR
        move MOVE_SWORDS_DANCE
        move MOVE_SUPERPOWER
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 15
        level 48
        pokemon SPECIES_SHEDINJA
        item ITEM_NONE
        move MOVE_TOXIC
        move MOVE_X_SCISSOR
        move MOVE_SHADOW_SNEAK
        move MOVE_SWAGGER
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 32
        level 52
        pokemon SPECIES_YANMEGA
        item ITEM_NONE
        move MOVE_DETECT
        move MOVE_BUG_BUZZ
        move MOVE_AIR_SLASH
        move MOVE_ANCIENT_POWER
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 15
        level 55
        pokemon SPECIES_PINSIR
        item ITEM_NONE
        move MOVE_EARTHQUAKE
        move MOVE_GUILLOTINE
        move MOVE_X_SCISSOR
        move MOVE_ROCK_TOMB
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 15
        level 54
        pokemon SPECIES_HERACROSS
        item ITEM_NONE
        move MOVE_CLOSE_COMBAT
        move MOVE_MEGAHORN
        move MOVE_STONE_EDGE
        move MOVE_COUNTER
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 15
        level 52
        pokemon SPECIES_VESPIQUEN
        item ITEM_SITRUS_BERRY
        move MOVE_PROTECT
        move MOVE_CONFUSE_RAY
        move MOVE_ATTACK_ORDER
        move MOVE_DEFEND_ORDER
        ballseal 0
    endparty

trainerdata 714, "Whitney"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_LEADER_WHITNEY
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | F_PRIORITIZE_STATUS_MOVES | 0
    battletype SINGLE_BATTLE
    endentry

    party 714
        // mon 0
        ivs 250
        abilityslot 15
        level 52
        pokemon SPECIES_GIRAFARIG
        item ITEM_NONE
        move MOVE_PSYCHIC
        move MOVE_SHADOW_BALL
        move MOVE_CALM_MIND
        move MOVE_BATON_PASS
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 15
        level 50
        pokemon SPECIES_LICKILICKY
        item ITEM_NONE
        move MOVE_WRING_OUT
        move MOVE_FLAMETHROWER
        move MOVE_ICE_BEAM
        move MOVE_THUNDERBOLT
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 15
        level 54
        pokemon SPECIES_BIBAREL
        item ITEM_NONE
        move MOVE_DOUBLE_TEAM
        move MOVE_CHARGE_BEAM
        move MOVE_SURF
        move MOVE_ICE_BEAM
        ballseal 0

        // mon 3
        ivs 250
        abilityslot 32
        level 54
        pokemon SPECIES_DELCATTY
        item ITEM_NONE
        move MOVE_FAKE_OUT
        move MOVE_ASSIST
        move MOVE_CALM_MIND
        move MOVE_BATON_PASS
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 15
        level 52
        pokemon SPECIES_CLEFABLE
        item ITEM_NONE
        move MOVE_BLIZZARD
        move MOVE_THUNDER
        move MOVE_FIRE_BLAST
        move MOVE_CALM_MIND
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 32
        level 58
        pokemon SPECIES_MILTANK
        item ITEM_LUM_BERRY
        move MOVE_BODY_SLAM
        move MOVE_ATTRACT
        move MOVE_SLEEP_TALK
        move MOVE_REST
        ballseal 0
    endparty

trainerdata 715, "Morty"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_LEADER_MORTY
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | F_PRIORITIZE_DAMAGE | F_PRIORITIZE_HEALING | 0
    battletype SINGLE_BATTLE
    endentry

    party 715
        // mon 0
        ivs 200
        abilityslot 32
        level 52
        pokemon SPECIES_DRIFBLIM
        item ITEM_SITRUS_BERRY
        move MOVE_DESTINY_BOND
        move MOVE_SUBSTITUTE
        move MOVE_THUNDERBOLT
        move MOVE_SHADOW_BALL
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 15
        level 52
        pokemon SPECIES_DUSKNOIR
        item ITEM_NONE
        move MOVE_PAIN_SPLIT
        move MOVE_WILL_O_WISP
        move MOVE_SUBSTITUTE
        move MOVE_PAYBACK
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 15
        level 52
        pokemon SPECIES_SABLEYE
        item ITEM_NONE
        move MOVE_SUCKER_PUNCH
        move MOVE_BRICK_BREAK
        move MOVE_ICE_PUNCH
        move MOVE_FAKE_OUT
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 15
        level 54
        pokemon SPECIES_MISMAGIUS
        item ITEM_NONE
        move MOVE_PERISH_SONG
        move MOVE_MEAN_LOOK
        move MOVE_CONFUSE_RAY
        move MOVE_ASTONISH
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 15
        level 57
        pokemon SPECIES_GENGAR
        item ITEM_NONE
        move MOVE_HYPNOSIS
        move MOVE_CONFUSE_RAY
        move MOVE_SHADOW_BALL
        move MOVE_FOCUS_BLAST
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 15
        level 57
        pokemon SPECIES_GENGAR
        item ITEM_NONE
        move MOVE_SUBSTITUTE
        move MOVE_SHADOW_BALL
        move MOVE_THUNDERBOLT
        move MOVE_DESTINY_BOND
        ballseal 0
    endparty

trainerdata 716, "Pryce"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_LEADER_PRYCE
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | F_USE_WEATHER | 0
    battletype SINGLE_BATTLE
    endentry

    party 716
        // mon 0
        ivs 200
        abilityslot 15
        level 56
        pokemon SPECIES_ABOMASNOW
        item ITEM_NONE
        move MOVE_ICE_SHARD
        move MOVE_WOOD_HAMMER
        move MOVE_EARTHQUAKE
        move MOVE_BLIZZARD
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 15
        level 58
        pokemon SPECIES_DEWGONG
        item ITEM_LUM_BERRY
        move MOVE_DIVE
        move MOVE_SHEER_COLD
        move MOVE_SLEEP_TALK
        move MOVE_REST
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 15
        level 52
        pokemon SPECIES_GLALIE
        item ITEM_NONE
        move MOVE_PAYBACK
        move MOVE_TORMENT
        move MOVE_ATTRACT
        move MOVE_BLIZZARD
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 15
        level 52
        pokemon SPECIES_FROSLASS
        item ITEM_NONE
        move MOVE_ICE_SHARD
        move MOVE_CONFUSE_RAY
        move MOVE_ATTRACT
        move MOVE_BLIZZARD
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 32
        level 54
        pokemon SPECIES_WALREIN
        item ITEM_NONE
        move MOVE_HAIL
        move MOVE_BODY_SLAM
        move MOVE_SWAGGER
        move MOVE_BLIZZARD
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 32
        level 60
        pokemon SPECIES_MAMOSWINE
        item ITEM_SITRUS_BERRY
        move MOVE_EARTHQUAKE
        move MOVE_AVALANCHE
        move MOVE_STONE_EDGE
        move MOVE_DOUBLE_TEAM
        ballseal 0
    endparty

trainerdata 717, "Jasmine"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_LEADER_JASMINE
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 717
        // mon 0
        ivs 200
        abilityslot 15
        level 52
        pokemon SPECIES_METAGROSS
        item ITEM_NONE
        move MOVE_METEOR_MASH
        move MOVE_BULLET_PUNCH
        move MOVE_GRAVITY
        move MOVE_EXPLOSION
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 32
        level 56
        pokemon SPECIES_MAGNEZONE
        item ITEM_NONE
        move MOVE_ZAP_CANNON
        move MOVE_LOCK_ON
        move MOVE_MIRROR_COAT
        move MOVE_METAL_SOUND
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 15
        level 52
        pokemon SPECIES_SKARMORY
        item ITEM_NONE
        move MOVE_AIR_SLASH
        move MOVE_SPIKES
        move MOVE_NIGHT_SLASH
        move MOVE_STEEL_WING
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 32
        level 50
        pokemon SPECIES_BRONZONG
        item ITEM_NONE
        move MOVE_GYRO_BALL
        move MOVE_HYPNOSIS
        move MOVE_DREAM_EATER
        move MOVE_GRAVITY
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 15
        level 52
        pokemon SPECIES_EMPOLEON
        item ITEM_NONE
        move MOVE_HYDRO_PUMP
        move MOVE_BLIZZARD
        move MOVE_AQUA_JET
        move MOVE_ROAR
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 32
        level 62
        pokemon SPECIES_STEELIX
        item ITEM_NONE
        move MOVE_STONE_EDGE
        move MOVE_STEALTH_ROCK
        move MOVE_ROAR
        move MOVE_IRON_TAIL
        ballseal 0
    endparty

trainerdata 718, "Chuck"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_LEADER_CHUCK
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 718
        // mon 0
        ivs 200
        abilityslot 15
        level 54
        pokemon SPECIES_MEDICHAM
        item ITEM_SITRUS_BERRY
        move MOVE_HIGH_JUMP_KICK
        move MOVE_PSYCHO_CUT
        move MOVE_ATTRACT
        move MOVE_THUNDER_PUNCH
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 32
        level 52
        pokemon SPECIES_HITMONCHAN
        item ITEM_NONE
        move MOVE_MACH_PUNCH
        move MOVE_SWAGGER
        move MOVE_FOCUS_PUNCH
        move MOVE_DOUBLE_TEAM
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 32
        level 55
        pokemon SPECIES_HITMONLEE
        item ITEM_NONE
        move MOVE_HIGH_JUMP_KICK
        move MOVE_FAKE_OUT
        move MOVE_BLAZE_KICK
        move MOVE_BULK_UP
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 32
        level 54
        pokemon SPECIES_BRELOOM
        item ITEM_TOXIC_ORB
        move MOVE_SUBSTITUTE
        move MOVE_FOCUS_PUNCH
        move MOVE_DRAIN_PUNCH
        move MOVE_STONE_EDGE
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 15
        level 56
        pokemon SPECIES_PRIMEAPE
        item ITEM_NONE
        move MOVE_CLOSE_COMBAT
        move MOVE_PAYBACK
        move MOVE_THUNDER_PUNCH
        move MOVE_SWAGGER
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 15
        level 60
        pokemon SPECIES_POLIWRATH
        item ITEM_SITRUS_BERRY
        move MOVE_DOUBLE_TEAM
        move MOVE_WATERFALL
        move MOVE_FOCUS_PUNCH
        move MOVE_SUBSTITUTE
        ballseal 0
    endparty

trainerdata 719, "Clair"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_LEADER_CLAIR
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 719
        // mon 0
        ivs 200
        abilityslot 15
        level 56
        pokemon SPECIES_GYARADOS
        item ITEM_WACAN_BERRY
        move MOVE_DRAGON_DANCE
        move MOVE_EARTHQUAKE
        move MOVE_WATERFALL
        move MOVE_DRAGON_PULSE
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 15
        level 52
        pokemon SPECIES_DRAGONAIR
        item ITEM_NONE
        move MOVE_THUNDER_WAVE
        move MOVE_DRAGON_RUSH
        move MOVE_THUNDERBOLT
        move MOVE_FLAMETHROWER
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 15
        level 52
        pokemon SPECIES_AERODACTYL
        item ITEM_NONE
        move MOVE_EARTHQUAKE
        move MOVE_THUNDER_FANG
        move MOVE_ROCK_SLIDE
        move MOVE_ROAR
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 32
        level 56
        pokemon SPECIES_KINGDRA
        item ITEM_NONE
        move MOVE_YAWN
        move MOVE_HYDRO_PUMP
        move MOVE_ICE_BEAM
        move MOVE_DRAGON_BREATH
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 15
        level 52
        pokemon SPECIES_CHARIZARD
        item ITEM_NONE
        move MOVE_SHADOW_CLAW
        move MOVE_AIR_SLASH
        move MOVE_DRAGON_CLAW
        move MOVE_FIRE_FANG
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 15
        level 60
        pokemon SPECIES_DRAGONITE
        item ITEM_SITRUS_BERRY
        move MOVE_THUNDER
        move MOVE_SAFEGUARD
        move MOVE_DRAGON_BREATH
        move MOVE_HYPER_BEAM
        ballseal 0
    endparty

trainerdata 720, "Brock"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_LEADER_BROCK
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 720
        // mon 0
        ivs 200
        abilityslot 32
        level 55
        pokemon SPECIES_GOLEM
        item ITEM_NONE
        move MOVE_SANDSTORM
        move MOVE_ROCK_SLIDE
        move MOVE_ROCK_POLISH
        move MOVE_EARTHQUAKE
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 32
        level 54
        pokemon SPECIES_RELICANTH
        item ITEM_LUM_BERRY
        move MOVE_HEAD_SMASH
        move MOVE_AQUA_TAIL
        move MOVE_EARTHQUAKE
        move MOVE_REST
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 32
        level 56
        pokemon SPECIES_OMASTAR
        item ITEM_NONE
        move MOVE_ANCIENT_POWER
        move MOVE_BRINE
        move MOVE_PROTECT
        move MOVE_SANDSTORM
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 15
        level 61
        pokemon SPECIES_ONIX
        item ITEM_SITRUS_BERRY
        move MOVE_STEALTH_ROCK
        move MOVE_ROCK_SLIDE
        move MOVE_ROCK_POLISH
        move MOVE_SANDSTORM
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 32
        level 55
        pokemon SPECIES_KABUTOPS
        item ITEM_NONE
        move MOVE_ROCK_SLIDE
        move MOVE_AQUA_JET
        move MOVE_ENDURE
        move MOVE_GIGA_DRAIN
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 15
        level 57
        pokemon SPECIES_RAMPARDOS
        item ITEM_NONE
        move MOVE_EARTHQUAKE
        move MOVE_STONE_EDGE
        move MOVE_AVALANCHE
        move MOVE_ROCK_POLISH
        ballseal 0
    endparty

trainerdata 721, "Misty"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_LEADER_MISTY
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 721
        // mon 0
        ivs 200
        abilityslot 32
        level 60
        pokemon SPECIES_STARMIE
        item ITEM_COLBUR_BERRY
        move MOVE_THUNDERBOLT
        move MOVE_PSYCHIC
        move MOVE_ICE_BEAM
        move MOVE_SURF
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 32
        level 56
        pokemon SPECIES_QUAGSIRE
        item ITEM_NONE
        move MOVE_WATER_PULSE
        move MOVE_AMNESIA
        move MOVE_EARTHQUAKE
        move MOVE_RAIN_DANCE
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 15
        level 56
        pokemon SPECIES_LAPRAS
        item ITEM_NONE
        move MOVE_SURF
        move MOVE_PERISH_SONG
        move MOVE_BLIZZARD
        move MOVE_RAIN_DANCE
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 15
        level 54
        pokemon SPECIES_LANTURN
        item ITEM_NONE
        move MOVE_CONFUSE_RAY
        move MOVE_THUNDERBOLT
        move MOVE_SURF
        move MOVE_THUNDER_WAVE
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 15
        level 54
        pokemon SPECIES_FLOATZEL
        item ITEM_NONE
        move MOVE_AGILITY
        move MOVE_ICE_FANG
        move MOVE_WATERFALL
        move MOVE_BATON_PASS
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 15
        level 60
        pokemon SPECIES_MILOTIC
        item ITEM_NONE
        move MOVE_HYDRO_PUMP
        move MOVE_ICE_BEAM
        move MOVE_REST
        move MOVE_SLEEP_TALK
        ballseal 0
    endparty

trainerdata 722, "Lt. Surge"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_LEADER_LT_SURGE
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 722
        // mon 0
        ivs 200
        abilityslot 15
        level 60
        pokemon SPECIES_RAICHU
        item ITEM_NONE
        move MOVE_THUNDER_WAVE
        move MOVE_QUICK_ATTACK
        move MOVE_THUNDERBOLT
        move MOVE_GRASS_KNOT
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 15
        level 52
        pokemon SPECIES_MANECTRIC
        item ITEM_PINAP_BERRY
        move MOVE_THUNDER_WAVE
        move MOVE_NATURAL_GIFT
        move MOVE_DISCHARGE
        move MOVE_OVERHEAT
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 15
        level 52
        pokemon SPECIES_MAGNEZONE
        item ITEM_NONE
        move MOVE_THUNDERBOLT
        move MOVE_DOUBLE_TEAM
        move MOVE_MAGNET_RISE
        move MOVE_MIRROR_SHOT
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 32
        level 52
        pokemon SPECIES_ELECTRODE
        item ITEM_NONE
        move MOVE_THUNDER_WAVE
        move MOVE_DOUBLE_TEAM
        move MOVE_THUNDERBOLT
        move MOVE_EXPLOSION
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 15
        level 58
        pokemon SPECIES_PACHIRISU
        item ITEM_NONE
        move MOVE_QUICK_ATTACK
        move MOVE_SUPER_FANG
        move MOVE_DISCHARGE
        move MOVE_SWEET_KISS
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 15
        level 56
        pokemon SPECIES_ELECTIVIRE
        item ITEM_SITRUS_BERRY
        move MOVE_THUNDERBOLT
        move MOVE_CROSS_CHOP
        move MOVE_ICE_PUNCH
        move MOVE_EARTHQUAKE
        ballseal 0
    endparty

trainerdata 723, "Erika"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_LEADER_ERIKA
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | F_USE_WEATHER | 0
    battletype SINGLE_BATTLE
    endentry

    party 723
        // mon 0
        ivs 200
        abilityslot 15
        level 54
        pokemon SPECIES_SHIFTRY
        item ITEM_NONE
        move MOVE_LEAF_STORM
        move MOVE_SUCKER_PUNCH
        move MOVE_EXPLOSION
        move MOVE_SUNNY_DAY
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 15
        level 53
        pokemon SPECIES_JUMPLUFF
        item ITEM_NONE
        move MOVE_U_TURN
        move MOVE_MEMENTO
        move MOVE_SLEEP_POWDER
        move MOVE_GIGA_DRAIN
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 15
        level 56
        pokemon SPECIES_VICTREEBEL
        item ITEM_KELPSY_BERRY
        move MOVE_NATURAL_GIFT
        move MOVE_SLUDGE_BOMB
        move MOVE_LEAF_STORM
        move MOVE_LEAF_BLADE
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 15
        level 56
        pokemon SPECIES_BELLOSSOM
        item ITEM_NONE
        move MOVE_SUNNY_DAY
        move MOVE_SOLAR_BEAM
        move MOVE_GIGA_DRAIN
        move MOVE_ATTRACT
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 15
        level 60
        pokemon SPECIES_TANGROWTH
        item ITEM_NONE
        move MOVE_SWORDS_DANCE
        move MOVE_POWER_WHIP
        move MOVE_ROCK_SLIDE
        move MOVE_EARTHQUAKE
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 15
        level 55
        pokemon SPECIES_ROSERADE
        item ITEM_NONE
        move MOVE_WEATHER_BALL
        move MOVE_ENERGY_BALL
        move MOVE_SLUDGE_BOMB
        move MOVE_STUN_SPORE
        ballseal 0
    endparty

trainerdata 724, "Janine"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_LEADER_JANINE
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 724
        // mon 0
        ivs 200
        abilityslot 15
        level 52
        pokemon SPECIES_CROBAT
        item ITEM_NONE
        move MOVE_HEAT_WAVE
        move MOVE_CROSS_POISON
        move MOVE_CONFUSE_RAY
        move MOVE_U_TURN
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 15
        level 56
        pokemon SPECIES_WEEZING
        item ITEM_NONE
        move MOVE_THUNDERBOLT
        move MOVE_SLUDGE_BOMB
        move MOVE_TOXIC
        move MOVE_EXPLOSION
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 32
        level 52
        pokemon SPECIES_TOXICROAK
        item ITEM_NONE
        move MOVE_CROSS_CHOP
        move MOVE_POISON_JAB
        move MOVE_ATTRACT
        move MOVE_SUBSTITUTE
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 15
        level 58
        pokemon SPECIES_ARIADOS
        item ITEM_NONE
        move MOVE_TOXIC
        move MOVE_BOUNCE
        move MOVE_SWAGGER
        move MOVE_NIGHT_SHADE
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 15
        level 59
        pokemon SPECIES_VENOMOTH
        item ITEM_SITRUS_BERRY
        move MOVE_SLEEP_POWDER
        move MOVE_DOUBLE_TEAM
        move MOVE_BUG_BUZZ
        move MOVE_PSYCHIC
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 15
        level 55
        pokemon SPECIES_DRAPION
        item ITEM_NONE
        move MOVE_CROSS_POISON
        move MOVE_CONFUSE_RAY
        move MOVE_CRUNCH
        move MOVE_SWORDS_DANCE
        ballseal 0
    endparty

trainerdata 725, "Sabrina"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_LEADER_SABRINA
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | F_PRIORITIZE_STATUS_MOVES | 0
    battletype SINGLE_BATTLE
    endentry

    party 725
        // mon 0
        ivs 200
        abilityslot 15
        level 60
        pokemon SPECIES_ALAKAZAM
        item ITEM_NONE
        move MOVE_GRAVITY
        move MOVE_FOCUS_BLAST
        move MOVE_ENERGY_BALL
        move MOVE_PSYCHIC
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 32
        level 58
        pokemon SPECIES_ESPEON
        item ITEM_NONE
        move MOVE_CALM_MIND
        move MOVE_BATON_PASS
        move MOVE_SHADOW_BALL
        move MOVE_PSYCHIC
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 15
        level 56
        pokemon SPECIES_MR_MIME
        item ITEM_NONE
        move MOVE_REFLECT
        move MOVE_SKILL_SWAP
        move MOVE_THUNDER
        move MOVE_PSYCHIC
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 15
        level 54
        pokemon SPECIES_JYNX
        item ITEM_NONE
        move MOVE_BLIZZARD
        move MOVE_PERISH_SONG
        move MOVE_PSYCHIC
        move MOVE_FOCUS_BLAST
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 15
        level 53
        pokemon SPECIES_WOBBUFFET
        item ITEM_NONE
        move MOVE_COUNTER
        move MOVE_MIRROR_COAT
        move MOVE_DESTINY_BOND
        move MOVE_ENCORE
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 15
        level 53
        pokemon SPECIES_GALLADE
        item ITEM_SITRUS_BERRY
        move MOVE_CLOSE_COMBAT
        move MOVE_PSYCHO_CUT
        move MOVE_NIGHT_SLASH
        move MOVE_STONE_EDGE
        ballseal 0
    endparty

trainerdata 726, "Blaine"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_LEADER_BLAINE
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 726
        // mon 0
        ivs 200
        abilityslot 15
        level 54
        pokemon SPECIES_TORKOAL
        item ITEM_NONE
        move MOVE_SUNNY_DAY
        move MOVE_YAWN
        move MOVE_BODY_SLAM
        move MOVE_OVERHEAT
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 32
        level 57
        pokemon SPECIES_CAMERUPT
        item ITEM_NONE
        move MOVE_EARTHQUAKE
        move MOVE_ERUPTION
        move MOVE_SOLAR_BEAM
        move MOVE_SUNNY_DAY
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 32
        level 60
        pokemon SPECIES_RAPIDASH
        item ITEM_NONE
        move MOVE_MEGAHORN
        move MOVE_QUICK_ATTACK
        move MOVE_OVERHEAT
        move MOVE_FLARE_BLITZ
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 15
        level 58
        pokemon SPECIES_MAGCARGO
        item ITEM_NONE
        move MOVE_CURSE
        move MOVE_GYRO_BALL
        move MOVE_OVERHEAT
        move MOVE_STONE_EDGE
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 32
        level 54
        pokemon SPECIES_HOUNDOOM
        item ITEM_NONE
        move MOVE_SHADOW_BALL
        move MOVE_DARK_PULSE
        move MOVE_FLAMETHROWER
        move MOVE_SUCKER_PUNCH
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 15
        level 62
        pokemon SPECIES_MAGMORTAR
        item ITEM_NONE
        move MOVE_THUNDERBOLT
        move MOVE_LOW_KICK
        move MOVE_FLAMETHROWER
        move MOVE_CONFUSE_RAY
        ballseal 0
    endparty

trainerdata 727, "Blue"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_LEADER_BLUE
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 727
        // mon 0
        ivs 100
        abilityslot 15
        level 67
        pokemon SPECIES_EXEGGUTOR
        item ITEM_NONE
        move MOVE_LEAF_STORM
        move MOVE_PSYCHIC
        move MOVE_EXPLOSION
        move MOVE_TRICK_ROOM
        ballseal 0

        // mon 1
        ivs 250
        abilityslot 32
        level 69
        pokemon SPECIES_MACHAMP
        item ITEM_IRON_BALL
        move MOVE_DYNAMIC_PUNCH
        move MOVE_STONE_EDGE
        move MOVE_FLING
        move MOVE_ATTRACT
        ballseal 0

        // mon 2
        ivs 250
        abilityslot 32
        level 70
        pokemon SPECIES_RHYPERIOR
        item ITEM_NONE
        move MOVE_MEGAHORN
        move MOVE_STONE_EDGE
        move MOVE_THUNDER_FANG
        move MOVE_EARTHQUAKE
        ballseal 0

        // mon 3
        ivs 250
        abilityslot 15
        level 68
        pokemon SPECIES_ARCANINE
        item ITEM_NONE
        move MOVE_FLARE_BLITZ
        move MOVE_EXTREME_SPEED
        move MOVE_THUNDER_FANG
        move MOVE_CRUNCH
        ballseal 0

        // mon 4
        ivs 250
        abilityslot 15
        level 70
        pokemon SPECIES_TYRANITAR
        item ITEM_NONE
        move MOVE_LOW_KICK
        move MOVE_FIRE_FANG
        move MOVE_ROCK_SLIDE
        move MOVE_EARTHQUAKE
        ballseal 0

        // mon 5
        ivs 250
        abilityslot 15
        level 72
        pokemon SPECIES_PIDGEOT
        item ITEM_SITRUS_BERRY
        move MOVE_RETURN
        move MOVE_DOUBLE_TEAM
        move MOVE_AIR_SLASH
        move MOVE_STEEL_WING
        ballseal 0
    endparty

trainerdata 728, "Charlotte"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_BEAUTY
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 728
        // mon 0
        ivs 0
        abilityslot 15
        level 16
        pokemon SPECIES_BELLOSSOM
        ballseal 1
    endparty

trainerdata 729, "Duff & Eda"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_YOUNG_COUPLE
    nummons 0x80 | 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 729
        // mon 0
        ivs 255
        abilityslot 2
        level 52
        pokemon SPECIES_STEELIX
        item ITEM_LIFE_ORB
        move MOVE_IRON_HEAD
        move MOVE_STOMPING_TANTRUM
        move MOVE_BODY_PRESS
        move MOVE_ROCK_SLIDE
        nature NATURE_ADAMANT
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 52
        pokemon SPECIES_CLOYSTER
        item ITEM_FOCUS_SASH
        move MOVE_ICICLE_SPEAR
        move MOVE_LIQUIDATION
        move MOVE_ROCK_BLAST
        move MOVE_SHELL_SMASH
        nature NATURE_ADAMANT
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 32
        level 52
        pokemon SPECIES_MACHAMP
        item ITEM_ASSAULT_VEST
        move MOVE_DYNAMIC_PUNCH
        move MOVE_STONE_EDGE
        move MOVE_HIGH_HORSEPOWER
        move MOVE_POWER_UP_PUNCH
        nature NATURE_ADAMANT
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 32
        level 52
        pokemon SPECIES_LOPUNNY
        item ITEM_LIFE_ORB
        move MOVE_FRUSTRATION
        move MOVE_CLOSE_COMBAT
        move MOVE_FAKE_OUT
        move MOVE_U_TURN
        nature NATURE_ADAMANT
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 52
        pokemon SPECIES_INCINEROAR
        item ITEM_MIRROR_HERB
        move MOVE_BLAZE_KICK
        move MOVE_LASH_OUT
        move MOVE_FAKE_OUT
        move MOVE_PARTING_SHOT
        nature NATURE_ADAMANT
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 32
        level 52
        pokemon SPECIES_GARDEVOIR
        item ITEM_FOCUS_SASH
        move MOVE_PSYSHOCK
        move MOVE_DRAINING_KISS
        move MOVE_MYSTICAL_FIRE
        move MOVE_RECOVER
        nature NATURE_TIMID
        ballseal 0
    endparty

trainerdata 730, "Thom & Kae"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_DOUBLE_TEAM
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | F_DOUBLE_BATTLE | 0
    battletype DOUBLE_BATTLE
    endentry

    party 730
        // mon 0
        ivs 255
        abilityslot 15
        level 52
        pokemon SPECIES_MASQUERAIN
        item ITEM_COVERT_CLOAK
        move MOVE_STRUGGLE_BUG
        move MOVE_AIR_SLASH
        move MOVE_TAILWIND
        move MOVE_HELPING_HAND
        nature NATURE_TIMID
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 52
        pokemon SPECIES_ARAQUANID
        item ITEM_CLEAR_AMULET
        move MOVE_LIQUIDATION
        move MOVE_LEECH_LIFE
        move MOVE_TRAILBLAZE
        move MOVE_STICKY_WEB
        nature NATURE_JOLLY
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 52
        pokemon SPECIES_ESPEON
        item ITEM_LIGHT_CLAY
        move MOVE_GLITZY_GLOW
        move MOVE_ALLURING_VOICE
        move MOVE_GRASS_KNOT
        move MOVE_THUNDER_WAVE
        nature NATURE_MODEST
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 52
        pokemon SPECIES_UMBREON
        item ITEM_LIGHT_CLAY
        move MOVE_BADDY_BAD
        move MOVE_FOUL_PLAY
        move MOVE_HELPING_HAND
        move MOVE_YAWN
        nature NATURE_IMPISH
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 52
        pokemon SPECIES_ELECTIVIRE
        item ITEM_ASSAULT_VEST
        move MOVE_THUNDER_PUNCH
        move MOVE_FIRE_PUNCH
        move MOVE_ICE_PUNCH
        move MOVE_STOMPING_TANTRUM
        nature NATURE_ADAMANT
        ballseal 0

        // mon 0
        ivs 255
        abilityslot 2
        level 52
        pokemon SPECIES_MAGMORTAR
        item ITEM_QUICK_CLAW
        move MOVE_HEAT_WAVE
        move MOVE_THUNDERBOLT
        move MOVE_SCORCHING_SANDS
        move MOVE_WILL_O_WISP
        nature NATURE_MODEST
        ballseal 0
    endparty

trainerdata 731, "Devin"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_NATURE_SET
    trainerclass TRAINERCLASS_HIKER
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EXPERT_ATTACKS | F_PRIORITIZE_DAMAGE | 0
    battletype SINGLE_BATTLE
    endentry

    party 731
        // mon 0
        ivs 255
        abilityslot 2
        level 52
        pokemon SPECIES_EXPLOUD
        item ITEM_EJECT_PACK
        move MOVE_BOOMBURST
        move MOVE_OVERHEAT
        move MOVE_SURF
        move MOVE_STOMPING_TANTRUM
        nature NATURE_QUIET
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 15
        level 51
        pokemon SPECIES_BEWEAR
        item ITEM_ASSAULT_VEST
        move MOVE_RETURN
        move MOVE_DRAIN_PUNCH
        move MOVE_DARKEST_LARIAT
        move MOVE_STOMPING_TANTRUM
        nature NATURE_ADAMANT
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 32
        level 51
        pokemon SPECIES_SNORLAX
        item ITEM_LEFTOVERS
        move MOVE_DOUBLE_EDGE
        move MOVE_EARTHQUAKE
        move MOVE_HEAT_CRASH
        move MOVE_SLACK_OFF
        nature NATURE_CAREFUL
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 32
        level 51
        pokemon SPECIES_DRAMPA
        item ITEM_LEFTOVERS
        move MOVE_HYPER_VOICE
        move MOVE_FLAMETHROWER
        move MOVE_GLARE
        move MOVE_ROOST
        nature NATURE_BOLD
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 2
        level 52
        pokemon SPECIES_DUDUNSPARCE
        item ITEM_LEFTOVERS
        move MOVE_BODY_SLAM
        move MOVE_SHADOW_BALL
        move MOVE_COIL
        move MOVE_ROOST
        nature NATURE_SASSY
        ballseal 0
    endparty

trainerdata 732, "Grant"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass TRAINERCLASS_CAMPER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 732
        // mon 0
        ivs 0
        abilityslot 15
        level 21
        pokemon SPECIES_SKIPLOOM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 21
        pokemon SPECIES_MARILL
        ballseal 0
    endparty

trainerdata 733, "Lance"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_CHAMPION
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 733
        // mon 0
        ivs 250
        abilityslot 15
        level 68
        pokemon SPECIES_GYARADOS
        item ITEM_NONE
        move MOVE_THUNDER_WAVE
        move MOVE_ICE_FANG
        move MOVE_WATERFALL
        move MOVE_DRAGON_DANCE
        ballseal 0

        // mon 1
        ivs 250
        abilityslot 15
        level 68
        pokemon SPECIES_CHARIZARD
        item ITEM_NONE
        move MOVE_FLAMETHROWER
        move MOVE_AIR_SLASH
        move MOVE_DRAGON_CLAW
        move MOVE_HYPER_BEAM
        ballseal 0

        // mon 2
        ivs 250
        abilityslot 15
        level 75
        pokemon SPECIES_DRAGONITE
        item ITEM_NONE
        move MOVE_FIRE_PUNCH
        move MOVE_SAFEGUARD
        move MOVE_DRACO_METEOR
        move MOVE_HYPER_BEAM
        ballseal 0
    endparty

trainerdata 734, "Clair"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_LEADER_CLAIR
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 734
        // mon 0
        ivs 200
        abilityslot 15
        level 52
        pokemon SPECIES_DRAGONAIR
        item ITEM_NONE
        move MOVE_THUNDER_WAVE
        move MOVE_DRAGON_RUSH
        move MOVE_THUNDERBOLT
        move MOVE_FLAMETHROWER
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 32
        level 56
        pokemon SPECIES_KINGDRA
        item ITEM_NONE
        move MOVE_YAWN
        move MOVE_HYDRO_PUMP
        move MOVE_ICE_BEAM
        move MOVE_DRAGON_BREATH
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 15
        level 60
        pokemon SPECIES_DRAGONITE
        item ITEM_NONE
        move MOVE_THUNDER
        move MOVE_PROTECT
        move MOVE_DRAGON_BREATH
        move MOVE_HYPER_BEAM
        ballseal 0
    endparty

trainerdata 735, "Silver"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_RIVAL
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 735
        // mon 0
        ivs 250
        abilityslot 15
        level 60
        pokemon SPECIES_MEGANIUM
        item ITEM_NONE
        move MOVE_PETAL_DANCE
        move MOVE_BODY_SLAM
        move MOVE_LIGHT_SCREEN
        move MOVE_SYNTHESIS
        ballseal 0

        // mon 1
        ivs 250
        abilityslot 15
        level 58
        pokemon SPECIES_CROBAT
        item ITEM_NONE
        move MOVE_TOXIC
        move MOVE_BITE
        move MOVE_CONFUSE_RAY
        move MOVE_AIR_CUTTER
        ballseal 0

        // mon 2
        ivs 250
        abilityslot 15
        level 56
        pokemon SPECIES_GENGAR
        item ITEM_NONE
        move MOVE_DARK_PULSE
        move MOVE_SLUDGE_BOMB
        move MOVE_SHADOW_BALL
        move MOVE_CONFUSE_RAY
        ballseal 0
    endparty

trainerdata 736, "Silver"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_RIVAL
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 736
        // mon 0
        ivs 250
        abilityslot 15
        level 60
        pokemon SPECIES_TYPHLOSION
        item ITEM_NONE
        move MOVE_ROLLOUT
        move MOVE_FLAMETHROWER
        move MOVE_WILL_O_WISP
        move MOVE_SWIFT
        ballseal 0

        // mon 1
        ivs 250
        abilityslot 15
        level 58
        pokemon SPECIES_CROBAT
        item ITEM_NONE
        move MOVE_TOXIC
        move MOVE_BITE
        move MOVE_CONFUSE_RAY
        move MOVE_AIR_CUTTER
        ballseal 0

        // mon 2
        ivs 250
        abilityslot 15
        level 56
        pokemon SPECIES_GENGAR
        item ITEM_NONE
        move MOVE_DARK_PULSE
        move MOVE_SLUDGE_BOMB
        move MOVE_SHADOW_BALL
        move MOVE_CONFUSE_RAY
        ballseal 0
    endparty

trainerdata 737, "Silver"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass TRAINERCLASS_RIVAL
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 737
        // mon 0
        ivs 250
        abilityslot 15
        level 60
        pokemon SPECIES_FERALIGATR
        item ITEM_NONE
        move MOVE_CRUNCH
        move MOVE_AQUA_TAIL
        move MOVE_SLASH
        move MOVE_ICE_FANG
        ballseal 0

        // mon 1
        ivs 250
        abilityslot 15
        level 58
        pokemon SPECIES_CROBAT
        item ITEM_NONE
        move MOVE_TOXIC
        move MOVE_BITE
        move MOVE_CONFUSE_RAY
        move MOVE_AIR_CUTTER
        ballseal 0

        // mon 2
        ivs 250
        abilityslot 15
        level 56
        pokemon SPECIES_GENGAR
        item ITEM_NONE
        move MOVE_DARK_PULSE
        move MOVE_SLUDGE_BOMB
        move MOVE_SHADOW_BALL
        move MOVE_CONFUSE_RAY
        ballseal 0
    endparty
