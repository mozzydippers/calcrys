.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/constants.s"

.create "build/move/move_anim/0_652", 0

// Shattered Psyche

a010_652:
    Func_HideBattler BATTLE_ANIM_ATTACKER_PARTNER, TRUE
    Func_HideBattler BATTLE_ANIM_DEFENDER_PARTNER, TRUE

    // Z-Move name
    loadparticlefromspa 1, SPA_SHATTERED_PSYCHE
    addparticle 1, 0, 0


    // Calm Mind
    loadparticlefromspa 0, 365
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate

    wait 500

    repeatse 1936, -117, 2, 4
    addparticle 0, 0, 3
    addparticle 0, 1, 3
    waitparticle
    unloadparticle 0
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate


    unloadparticle 1


    // Leer
    loadparticlefromspa 0, 74
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    addparticle 0, 0, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 0, -4128, 0, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 0, -4128, 0, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 2, 17
    cmd37 6, 0, 1, 5, 0, 0, 0, "NaN", "NaN"
    cmd37 4, 0, -4128, 0, 0, "NaN", "NaN", "NaN", "NaN"
    wait 10
    callfunction 36, 5, 1, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 1, 0, 1, 2, 272, "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1930, -117
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0


    // Psychic background
    initspriteresource
    loadspriteresource 0
    loadspritemaybe 1, 0, 0, 0
    changebg 52, 0x800001
    waitforchangebg2
    callfunction 76, 1, 50, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitforchangebg


    // Focus Blast
    loadparticlefromspa 0, SPA_SHATTERED_PSYCHE_1
    playsepan 1530, -117
    addparticle 0, 0, 17
    cmd37 6, 0, 1, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 1, 17
    cmd37 6, 0, 1, 2, 0, 0, 0, "NaN", "NaN"
    wait 80
    waitparticle
    unloadparticle 0


    // Flail
    //callfunction 27, 5, 1, 10, 0, 10, 9, "NaN", "NaN", "NaN", "NaN", "NaN"
    //waitstate

    shaketargetmon 9, 30


    // Seed Flare
    loadparticlefromspa 0, 483

    playsepan 2113, -117
    addparticle 0, 0, 4
    addparticle 0, 2, 4
    addparticle 0, 1, 4
    callfunction 33, 5, 0, 0, 0, 13, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    wait 40
    playsepan 2106, 0
    callfunction 33, 5, 0, 0, 13, 0, 32767, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 68, 5, 4, 4, 0, 10, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 36, 5, 2, 0, 1, 6, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0


    Func_HideBattler BATTLE_ANIM_ATTACKER_PARTNER, FALSE
    Func_HideBattler BATTLE_ANIM_DEFENDER_PARTNER, FALSE

    cmd43
    cmd0C 4, 1
    resetbg 52, 0x1000001
    waitstate
    unloadspriteresource
    resetsprite 0
    cmd53 0
    resetsprite 4
    waitforchangebg

    end


.close
