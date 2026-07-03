.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"
.include "armips/include/constants.s"

.create "build/move/move_anim/0_646", 0

// Hydro Vortex

a010_646:
    Func_HideBattler BATTLE_ANIM_ATTACKER_PARTNER, TRUE
    Func_HideBattler BATTLE_ANIM_DEFENDER_PARTNER, TRUE

    // Z-Move name
    loadparticlefromspa 1, SPA_HYDRO_VORTEX
    addparticle 1, 0, 0

    // Water Pulse background
    cmd43
    cmd0C 7, 1
    changebg 35, 0x20001
    waitforchangebg2
    callfunction 76, 1, 75, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitforchangebg

    wait 700
    unloadparticle 1

    // Water Pulse
    loadparticlefromspa 0, 370
    addparticle 0, 0, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, 5504, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, 5504, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 0, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 11008, 0, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 11008, 0, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 0, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 22016, 5504, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 22016, 5504, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 0, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -11008, 0, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -11008, 0, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 0, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -27520, 5504, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -27520, 5504, 0, "NaN", "NaN", "NaN", "NaN"
    wait 1
    addparticle 0, 0, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -11008, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 0, -11008, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 0, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 11008, -11008, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 11008, -11008, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 0, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 22016, -11008, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, 22016, -11008, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 0, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -11008, -11008, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -11008, -11008, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 0, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -27520, -11008, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 0, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 1, -27520, -11008, 0, "NaN", "NaN", "NaN", "NaN"
    wait 1

    repeatse 1999, 0, 4, 6
    wait 5

    waitparticle
    unloadparticle 0
    waitstate

    // Aqua Jet
    loadparticlefromspa 0, 471
    playsepan 1925, -117
    callfunction 57, 4, 2, -14, 8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    callfunction 57, 4, 2, 28, -16, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    Func_HideBattler BATTLE_ANIM_ATTACKER, TRUE
    playsepan 2060, -117
    addparticle2 0, 0, 3, 3
    callfunction 65, 8, 0, 0, 0, 0, 8, 64, 0, 131075, "NaN", "NaN"
    addparticle2 0, 1, 4, 3
    callfunction 65, 8, 1, 0, 0, 0, 8, 64, 0, 131075, "NaN", "NaN"
    addparticle2 0, 2, 5, 3
    callfunction 65, 8, 2, 0, 0, 0, 8, 64, 0, 131075, "NaN", "NaN"
    wait 5
    playsepan 2060, 0
    addparticle2 0, 3, 3, 3
    callfunction 65, 8, 3, 0, 0, 0, 8, 64, 0, 327686, "NaN", "NaN"
    addparticle2 0, 4, 4, 3
    callfunction 65, 8, 4, 0, 0, 0, 8, 64, 0, 327686, "NaN", "NaN"
    addparticle2 0, 5, 5, 3
    callfunction 65, 8, 5, 0, 0, 0, 8, 64, 0, 327686, "NaN", "NaN"
    wait 5
    playsepan 2060, 117
    addparticle2 0, 6, 3, 3
    callfunction 65, 8, 6, 0, 0, 0, 8, 64, 0, 458760, "NaN", "NaN"
    addparticle2 0, 7, 4, 3
    callfunction 65, 8, 7, 0, 0, 0, 8, 64, 0, 458760, "NaN", "NaN"
    addparticle2 0, 8, 5, 3
    callfunction 65, 8, 8, 0, 0, 0, 8, 64, 0, 458760, "NaN", "NaN"
    addparticle 0, 0, 4
    addparticle 0, 1, 4
    addparticle 0, 2, 4
    callfunction 36, 5, 2, 0, 1, 4, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 57, 4, 2, -14, 8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0

    // Whirlpool
    loadparticlefromspa 0, 268
    addparticle 0, 0, 4
    addparticle 0, 1, 4
    addparticle 0, 2, 4
    addparticle 0, 3, 4
    playsepan 2045, 117
    wait 5
    callfunction 36, 5, 2, 0, 1, 10, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 8, 0, 2, 32720, 14, 0, "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0

    Func_HideBattler BATTLE_ANIM_ATTACKER, FALSE
    Func_HideBattler BATTLE_ANIM_ATTACKER_PARTNER, FALSE
    Func_HideBattler BATTLE_ANIM_DEFENDER_PARTNER, FALSE

    cmd43
    cmd0C 7, 1
    resetbg 35, 0x40001
    waitforchangebg

    end


.close
