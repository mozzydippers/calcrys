.nds
.thumb
.include "armips/include/animscriptcmd.s"

//mega

.create "build/move/move_anim/0_470", 0x0

MegaAnimScript:
    loadparticlefromspa 0, 490
    loadparticlefromspa 1, 107
    loadparticlefromspa 2, 541
    waitparticle

    playsepanmod 1939, -117, 0x75, 4, 2

    changebg 47, 0x020001
    waitforchangebg

    addparticle 2, 0, 3
    addparticle 0, 1, 3

    waitparticle

    addparticle 1, 8, 3
    addparticle 1, 9, 3
    addparticle 1, 10, 3

    wait 15
    callfunction 0x24, 5, 2, 0, 1, 4, 8 | 0x100, 0, 0, 0, 0, 0

    waitstate
    transform 0
    waitstate
    addparticle 0, 10, 3
    addparticle 0, 12, 3
    wait 15
    unloadparticle 0
    playcry 0, -117, 127
    addparticle 2,1,3
    waitcry 0
    wait 15

    resetbg 47, 0x040001

    waitstate
    waitforchangebg

    waitparticle

    unloadparticle 0
    unloadparticle 1
    unloadparticle 2
    waitstate

    end

.close