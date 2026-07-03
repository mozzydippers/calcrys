.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"
.include "armips/include/constants.s"

.create "build/move/move_anim/0_642", 0

// Corkscrew Crash

a010_642:
    Func_HideBattler BATTLE_ANIM_ATTACKER_PARTNER, TRUE
    Func_HideBattler BATTLE_ANIM_DEFENDER_PARTNER, TRUE

    cmd43
    cmd0C 7, 1
    changebg 0, 0x800001
    waitforchangebg

    // Z-Move name
    loadparticlefromspa 1, SPA_CORKSCREW_CRASH
    addparticle 1, 0, 0
    wait 700
    unloadparticle 1

    // Horn Drill
    initspriteresource
    loadspriteresource 0
    loadspriteresource 1
    loadspriteresource 2
    loadspriteresource 3
    loadspritemaybe 4, 0, 0, 0
    loadspritemaybe 5, 0, 1, 1
    loadspritemaybe 6, 0, 2, 2
    loadspritemaybe 7, 0, 3, 3
    callfunction 78, 1, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    loadparticle 0, 63
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    jumpifcontest _0110
    callfunction 57, 4, 2, 14, -8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    playsepan 1926, 117
    waitse 1850, 117, 5
    jumpifside 0, _01CC, _024C
    end
_0110:
    callfunction 57, 4, 2, 14, -8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    playsepan 1926, 117
    waitse 1850, 117, 5
    addparticle 0, 5, 4
    addparticle 0, 2, 4
    addparticle 0, 8, 4
    callfunction 36, 5, 1, 0, 1, 12, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    callfunction 57, 4, 2, -14, 8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end
_01CC:
    addparticle 0, 3, 4
    addparticle 0, 0, 4
    addparticle 0, 6, 4
    callfunction 36, 5, 1, 0, 1, 12, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    callfunction 57, 4, 2, -14, 8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end
_024C:
    addparticle 0, 4, 4
    addparticle 0, 1, 4
    addparticle 0, 7, 4
    callfunction 36, 5, 1, 0, 1, 12, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0
    callfunction 57, 4, 2, -14, 8, 258, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate

    // hit + clouds
    loadparticlefromspa 0, 500
    playsepanmod 1993, -117, 117, 4, 2
    addparticle 0, 1, 4
    addparticle 0, 0, 4
    shaketargetmon 4, 7 // 4 times magnitude 7
    waitstate

    unloadparticle 0
    waitstate

    cmd43
    cmd0C 7, 1
    resetbg 0, 0x1000001
    wait 10
    waitstate

    Func_HideBattler BATTLE_ANIM_ATTACKER_PARTNER, FALSE
    Func_HideBattler BATTLE_ANIM_DEFENDER_PARTNER, FALSE

    end

.close
