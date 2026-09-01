.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/constants.s"

.create "build/move/move_anim/0_658", 0

// Black Hole Eclipse

a010_658:
    Func_HideBattler BATTLE_ANIM_ATTACKER_PARTNER, TRUE
    Func_HideBattler BATTLE_ANIM_DEFENDER_PARTNER, TRUE

    // Z-Move name
    loadparticlefromspa 1, SPA_BLACK_HOLE_ECLIPSE
    addparticle 1, 0, 0

    // Dark Void background
    cmd0C 4, 0
    cmd0C 0, 0
    cmd0C 1, -1
    changebg 44, 0x800001
    waitforchangebg

    wait 700
    unloadparticle 1

    // Will-O-Wisp
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
    loadparticle 0, 279
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    playsepanmod 1937, -117, 117, 4, 2
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 6, 1, 16, 0, "NaN", "NaN"
    cmd37 5, 3, 0, 0, 0, 0, "NaN", "NaN", "NaN"
    wait 30
    addparticle 0, 1, 4
    playsepan 2011, 117
    callfunction 36, 5, 2, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 0

    // Gravity

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
    loadparticle 0, 374
    waitstate
    unloadspriteresource
    resetsprite 0
    resetsprite 1
    resetsprite 2
    resetsprite 3
    wait 10
    playsepan 2065, -117
    addparticle 0, 0, 4
    //cmd37 6, 0, 1, 2, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 2, 4
    //cmd37 6, 0, 0, 0, 0, 0, 0, "NaN", "NaN"
    addparticle 0, 1, 4
    //cmd37 6, 0, 1, 2, 0, 0, 0, "NaN", "NaN"
    wait 10
    stopse 2065
    playsepan 1881, 0
    //callfunction 42, 8, 2056, 100, 100, 100, 60, 100, 1966081, 655370, "NaN", "NaN"
    callfunction 42, 8, (1 << 3) | (1 << 8), 100, 100, 100, 60, 100, 1966081, 655370, "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0

    // Restore background

    cmd0C 4, 0
    cmd0C 0, 0
    cmd0C 1, -1
    cmd0C 4, 1
    resetbg 44, 0x1000001
    waitforchangebg

    Func_HideBattler BATTLE_ANIM_ATTACKER_PARTNER, FALSE
    Func_HideBattler BATTLE_ANIM_DEFENDER_PARTNER, FALSE

    end

.close
