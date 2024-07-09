.nds
.thumb

// humbly ROBBED from Drayano c[:

// These work by generating a number 0-99, then doing a load of >= checks
// The last one is == 99 so this has to be changed

.open "base/overlay/overlay_0002.bin", 0x02245B80

// Rock Smash encounters
// Change rates to 50/50

.org 0x022477B0

// 50%
// then values 50 - 99 activate last slot
.byte 50

// Surfing Encounters
// Change rates to 40/20/20/10/10

.org 0x02247734

// 40%
.byte 40
.skip 9

// 20%
.byte 60
.skip 7
.byte 60
.skip 3

// 20%
.byte 80
.skip 7
.byte 80
.skip 3

// 10%
// then values 90 - 99 activate last slot
.byte 90

// Old Rod Encounters
// Change rates to 20/20/20/20/20

.org 0x02247778

// 20%
.byte 20
.skip 7

// 20%
.byte 40
.skip 7

// 20%
.byte 60
.skip 7

// 20%
// then values 90 - 99 activate last slot
.byte 80

// Headbutt encounters
// Change rates to 20/20/20/20/10/10

.org 0x022477D4

// 20%
.byte 20
.skip 7

// 20%
.byte 40
.skip 7

// 20%
.byte 60
.skip 7

// 20%
.byte 80
.skip 7

// 10%
// then values 90 - 99 activate last slot
.byte 90

.close