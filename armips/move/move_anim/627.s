.nds
.thumb

.include "armips/include/animscriptcmd.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/species.inc"
.include "asm/include/moves.inc"

.create "build/move/move_anim/0_627", 0

// All-Out Pummeling

a010_627:
    cmd43
    cmd0C 7, 1
    changebg 0, 0x800001
    waitforchangebg

    // Z-Move name
    loadparticlefromspa 1, 544
    // hit + clouds
    loadparticlefromspa 0, 500
    // Double Kick
    loadparticlefromspa 2, 55
    // Comet Punch
    loadparticlefromspa 3, 35
    waitparticle

    // Z-Move name
    addparticle 1, 0, 0
    wait 700

    loop 3

    // Kicks from Double Kick
    loop 3
    addparticle 2, 1, 4
    addparticle 2, 2, 4
    addparticle 2, 0, 4
    callfunction 36, 5, 1, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1827, 117
    doloop
    // Punches from Comet Punch
    addparticle 3, 1, 4
    addparticle 3, 0, 4
    loop 4
    callfunction 36, 5, 1, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    playsepan 1827, 117
    wait 6
    doloop

    doloop

    waitparticle
    unloadparticle 1
    unloadparticle 2
    unloadparticle 3

    // Mega Punch
    loadparticlefromspa 1, 36

    // slide mon
    playsepan 1925, -117
    slideattackingmon -16, 8
    waitstate
    wait 15
    waitparticle
    playsepan 1847, 117
    slideattackingmon 32, -16
    waitstate

    // Mega Punch
    addparticle 1, 2, 4
    addparticle 1, 0, 4
    addparticle 1, 1, 4
    waitse 1847, 117, 1
    callfunction 36, 5, 4, 0, 1, 2, 264, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitparticle
    unloadparticle 1
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    //waitstate

    // hit + clouds
    playsepanmod 1993, -117, 117, 4, 2
    addparticle 0, 1, 4
    addparticle 0, 0, 4
    shaketargetmon 4, 7 // 4 times magnitude 7
    slideattackingmon -16, 8
    waitstate

    unloadparticle 0
    waitstate
    
    cmd43
    cmd0C 7, 1
    resetbg 0, 0x1000001
    wait 10
    waitstate
    end
    

.close
