.nds
.thumb
.include "armips/include/animscriptcmd.s"
.include "armips/include/constants.s"

// Mega Evolution

.create "build/move/move_anim/0_470", 0x0

MegaAnimScript:
    loadparticlefromspa 0, 489
    loadparticlefromspa 1, SPA_MEGA
    loadparticlefromspa 2, 489

    waitparticle

    changebg 47, 0x020001
    waitforchangebg

    playse 2380

    addparticle 0,0,3
    addparticle 0,8,3
    wait 100

    addparticle 1, 0, 3
    // Terminate effect early and reload
    unloadparticle 0

    wait 30

    // Explosion particles
    addparticle 2, 10, 3
    addparticle 2, 12, 3

    transform 0
    waitstate
    wait 15

    playcry 0, -117, 127

    // Shake client
    shaketargetmon 4, 7
    waitstate

    // Mega symbol
    wait 45
    addparticle 1, 1, 3

    waitcry 0
    waitparticle

    resetbg 47, 0x040001

    waitstate
    waitforchangebg

    unloadparticle 1
    unloadparticle 2
    end

.close
