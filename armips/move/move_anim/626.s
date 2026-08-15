.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/constants.s"

.create "build/move/move_anim/0_626", 0

// Breakneck Blitz

a010_626:
    Func_HideBattler BATTLE_ANIM_ATTACKER_PARTNER, TRUE
    Func_HideBattler BATTLE_ANIM_DEFENDER_PARTNER, TRUE

    cmd43
    cmd0C 7, 1
    changebg 0, 0x800001
    waitforchangebg

    // Z-Move name
    loadparticlefromspa 1, SPA_BREAKNECK_BLITZ
    loadparticlefromspa 0, 500
    waitparticle

    addparticle 1, 2, 0

    // slide mon
    playsepan 1925, -117
    slideattackingmon -16, 8
    waitstate
    wait 15
    waitparticle
    playsepan 1847, 117
    slideattackingmon 32, -16
    waitstate

    // hit + clouds
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
