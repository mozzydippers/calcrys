.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"
.include "armips/include/constants.s"

.create "build/move/move_anim/0_631", 0

// Acid Downpour

a010_631:
    Func_HideBattler BATTLE_ANIM_ATTACKER_PARTNER, TRUE
    Func_HideBattler BATTLE_ANIM_DEFENDER_PARTNER, TRUE

    cmd43
    cmd0C 0, -32
    cmd0C 1, 0
    cmd0C 6, 1
    cmd0C 7, 1
    changebg 13, 0x20001
    waitforchangebg

    // Z-Move name
    loadparticlefromspa 1, SPA_ACID_DOWNPOUR
    addparticle 1, 0, 0
    wait 700
    unloadparticle 1

    loadparticlefromspa 0, 208
    loadparticlefromspa 1, 459
    waitparticle

    // Gunk Shot
    playsepan 1894, -117
    addparticle 1, 0, 3
    addparticle 1, 1, 17
    cmd37 6, 0, 2, 1, 1, 0, 0, "NaN", "NaN"
    addparticle 1, 2, 3

    // Sludge Bomb
    addparticle2 0, 1, 2, 3
    callfunction 66, 6, 1, 0, 0, 0, 14, 64, "NaN", "NaN", "NaN", "NaN"
    repeatse 1998, 0, 2, 4
    wait 10
    repeatse 1979, 117, 2, 12
    addparticle 0, 1, 4
    addparticle 0, 0, 4
    wait 5
    callfunction 34, 6, 8, 0, 2, 31764, 14, 0, "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0

    wait 30
    playsepanmod 1896, -117, 117, 4, 2
    addparticle 1, 3, 4
    callfunction 34, 6, 8, 0, 1, 31764, 10, 0, "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 2, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 1


    cmd43
    cmd0C 0, -32
    cmd0C 1, 0
    cmd0C 6, 1
    cmd0C 7, 1
    resetbg 13, 0x40001
    waitforchangebg

    Func_HideBattler BATTLE_ANIM_ATTACKER_PARTNER, FALSE
    Func_HideBattler BATTLE_ANIM_DEFENDER_PARTNER, FALSE

    end

.close
