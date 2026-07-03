.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"
.include "armips/include/constants.s"

.create "build/move/move_anim/0_629", 0

// Supersonic Skystrike

a010_629:
    Func_HideBattler BATTLE_ANIM_ATTACKER_PARTNER, TRUE
    Func_HideBattler BATTLE_ANIM_DEFENDER_PARTNER, TRUE

    cmd0C 0, -32
    cmd0C 1, 0
    cmd0C 6, 1
    cmd0C 7, 1
    cmd0C 4, 0
    changebg 18, 0x20001
    waitforchangebg

    // Z-Move name
    loadparticlefromspa 1, SPA_SUPERSONIC_SKYSTRIKE
    addparticle 1, 0, 0
    wait 700
    unloadparticle 1

    loadparticlefromspa 1, 32

    loadparticlefromspa 0, 263


    addparticle 0, 1, 4
    wait 1
    callfunction 50, 2, 5, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1911, -117
    callfunction 15, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 0, 3
    waitstate
    addparticle 0, 1, 4

    freeresources 0
    waitparticle
    unloadparticle 0

    loadparticlefromspa 0, 431

    initspriteresource
    loadspriteresource 0
    loadspritemaybe 0, 0, 0, 0
    loadspriteresource 4
    loadspritemaybe 2, 0, 4, 4
    cmd52 2, 0, 4
    callfunction 38, 6, 1, 16, 0, 0, 16, 8, "NaN", "NaN", "NaN", "NaN"
    wait 1
    callfunction 40, 2, 2, 1, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    enablemonsprite 0, 0x0
    enablemonsprite 4, 0x0
    playsepanmod 2068, -117, 117, 4, 2
    jumpifcontest _0438
    jumpifside 0, _01E0, _0690
    end
_01E0:
    addparticle 0, 1, 17
    cmd37 6, 0, 2, 6, 1, 0, 0, "NaN", "NaN"
    addparticle 0, 0, 3
    wait 15
    playsepan 1874, 117
    callfunction 36, 5, 4, 0, 1, 6, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 8, 0, 1, 31, 14, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 8, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 9, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 5, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 6, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 7, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    waitparticle
    unloadparticle 0
    enablemonsprite 0, 0x1
    enablemonsprite 4, 0x1
    callfunction 38, 6, 1, 0, 16, 16, 0, 8, "NaN", "NaN", "NaN", "NaN"
    wait 7
    callfunction 40, 2, 2, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    cmd0C 0, -32
    cmd0C 1, 0
    cmd0C 6, 1
    cmd0C 7, 1
    cmd0C 4, 0
    resetbg 18, 0x40001
    waitforchangebg
    unloadspriteresource
    resetsprite 0
    cmd53 0
    resetsprite 4
    end
_0438:
    addparticle 0, 3, 17
    cmd37 6, 0, 2, 6, 1, 0, 0, "NaN", "NaN"
    addparticle 0, 0, 3
    wait 15
    playsepan 1874, 117
    callfunction 36, 5, 4, 0, 1, 6, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 8, 0, 1, 31, 14, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 8, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 9, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 5, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 6, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 7, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    waitparticle
    unloadparticle 0
    enablemonsprite 0, 0x1
    enablemonsprite 4, 0x1
    callfunction 38, 6, 1, 0, 16, 16, 0, 8, "NaN", "NaN", "NaN", "NaN"
    wait 7
    callfunction 40, 2, 2, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    cmd0C 0, -32
    cmd0C 1, 0
    cmd0C 6, 1
    cmd0C 7, 1
    cmd0C 4, 0
    resetbg 18, 0x40001
    waitforchangebg
    unloadspriteresource
    resetsprite 0
    cmd53 0
    resetsprite 4
    end
_0690:
    addparticle 0, 2, 17
    cmd37 6, 0, 2, 6, 1, 0, 0, "NaN", "NaN"
    addparticle 0, 0, 3
    wait 15
    playsepan 1874, 117
    callfunction 36, 5, 4, 0, 1, 6, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    callfunction 34, 6, 8, 0, 1, 31, 14, 0, "NaN", "NaN", "NaN", "NaN"
    addparticle 0, 8, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 9, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 5, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 6, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 7, 17
    cmd37 6, 0, 2, 2, 0, 0, 0, "NaN", "NaN"
    waitparticle
    unloadparticle 0
    enablemonsprite 0, 0x1
    enablemonsprite 4, 0x1
    callfunction 38, 6, 1, 0, 16, 16, 0, 8, "NaN", "NaN", "NaN", "NaN"
    wait 7
    callfunction 40, 2, 2, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    cmd0C 0, -32
    cmd0C 1, 0
    cmd0C 6, 1
    cmd0C 7, 1
    cmd0C 4, 0
    resetbg 18, 0x40001
    waitforchangebg
    unloadspriteresource
    resetsprite 0
    cmd53 0
    resetsprite 4

    Func_HideBattler BATTLE_ANIM_ATTACKER_PARTNER, FALSE
    Func_HideBattler BATTLE_ANIM_DEFENDER_PARTNER, FALSE

    end

.close
