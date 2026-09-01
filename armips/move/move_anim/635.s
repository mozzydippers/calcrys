.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/constants.s"

.create "build/move/move_anim/0_635", 0

// Continental Crush

a010_635:
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
    loadparticlefromspa 1, SPA_CONTINENTAL_CRUSH
    addparticle 1, 0, 0
    wait 700
    unloadparticle 1

    // Rock Throw
    // TODO: Larger rock
    loadparticlefromspa 0, 119
    addparticle 0, 1, 4
    addparticle 0, 2, 4
    addparticle 0, 0, 4
    wait 12
    playsepan 1972, 117
    wait 8

    // Stomp
    callfunction 42, 8, 264, 100, 130, 100, 70, 100, 1310721, 262148, "NaN", "NaN"
    playsepan 1954, 117

    callfunction 36, 5, 0, 1, 1, 8, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    waitparticle
    unloadparticle 0

    // Show sprite
    callfunction 40, 2, 2, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"

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
