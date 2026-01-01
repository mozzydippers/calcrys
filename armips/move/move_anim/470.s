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

    playsepanmod 1939, -117, 0x75, 4, 2

    changebg 47, 0x020001
    waitforchangebg

    addparticle 0,0,3
    addparticle 0,8,3
    wait 30
    addparticle 1, 0, 3
    // Terminate effect early and reload
    unloadparticle 0

    wait 60

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
    addparticle 1, 1, 3

    waitcry 0
    wait 15

    resetbg 47, 0x040001

    waitstate
    waitforchangebg

    unloadparticle 1
    unloadparticle 2
    end

.close
