.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/constants.s"

.create "build/move/move_anim/0_638", 0

// Savage Spin-Out

a010_638:
    Func_HideBattler BATTLE_ANIM_ATTACKER_PARTNER, TRUE
    Func_HideBattler BATTLE_ANIM_DEFENDER_PARTNER, TRUE

    // Rock Wrecker background
    cmd43
    cmd0C 0, -32
    cmd0C 1, 0
    cmd0C 6, 1
    cmd0C 7, 1
    cmd0C 5, 0
    changebg 39, 0x20001
    waitforchangebg

    // Z-Move name
    loadparticlefromspa 1, SPA_SAVAGE_SPIN_OUT
    addparticle 1, 0, 0
    wait 700
    unloadparticle 1

    // String Shot
    loadparticlefromspa 0, 112
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    addparticle 0, 0, 17
    cmd37 6, 0, 2, 6, 5, 0, 0, "NaN", "NaN"
    playsepan 1964, 117
    waitse 1919, 117, 50
    initresources 0, 3, 1, 1, 1, 1, 0, 0
    loadresources 0, 1
    loadpalette 0, 1, 1
    loadcell 0, 1
    loadcellanm 0, 1
    addsomething 0, 1, 1, 1, 1, 1, 0, 0, 1, 3, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    freeresources 0
    waitparticle
    unloadparticle 0
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate

    Func_RevolveBattler BATTLE_ANIM_DEFENDER, 3, 10
    waitstate

    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_DEFENDER, 0, -5, 5
    waitstate
    Func_MoveBattler BATTLE_ANIM_BATTLER_SPRITE_DEFENDER, 0, 5, 5
    waitstate

    // Stomp squish part
    Func_ScaleBattlerSprite BATTLE_ANIM_BATTLER_SPRITE_DEFENDER, 100, 130, 100, 70, 100, 1310721, 262148
    playsepan 1954, 117

    cmd0C 0, -32
    cmd0C 1, 0
    cmd0C 6, 1
    cmd0C 7, 1
    cmd0C 5, 0
    resetbg 39, 0x40001
    waitforchangebg

    Func_HideBattler BATTLE_ANIM_ATTACKER_PARTNER, FALSE
    Func_HideBattler BATTLE_ANIM_DEFENDER_PARTNER, FALSE

    end

.close
