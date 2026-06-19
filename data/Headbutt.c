#include "../include/types.h"
#include "../include/constants/species.h"

typedef struct PACKED HeadbuttEncounterSlot {
    u16 species;
    u8 minLevel;
    u8 maxLevel;
} HeadbuttEncounterSlot;

typedef struct PACKED HeadbuttTreeCoord {
    s16 x;
    s16 y;
} HeadbuttTreeCoord;

typedef struct PACKED HeadbuttFile_000 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_000;

typedef struct PACKED HeadbuttFile_001 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_001;

typedef struct PACKED HeadbuttFile_002 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_002;

typedef struct PACKED HeadbuttFile_003 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_003;

typedef struct PACKED HeadbuttFile_004 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_004;

typedef struct PACKED HeadbuttFile_005 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_005;

typedef struct PACKED HeadbuttFile_006 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_006;

typedef struct PACKED HeadbuttFile_007 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_007;

typedef struct PACKED HeadbuttFile_008 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_008;

typedef struct PACKED HeadbuttFile_009 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[20][6];
} HeadbuttFile_009;

typedef struct PACKED HeadbuttFile_010 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[15][6];
} HeadbuttFile_010;

typedef struct PACKED HeadbuttFile_011 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[4][6];
} HeadbuttFile_011;

typedef struct PACKED HeadbuttFile_012 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[9][6];
} HeadbuttFile_012;

typedef struct PACKED HeadbuttFile_013 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[4][6];
} HeadbuttFile_013;

typedef struct PACKED HeadbuttFile_014 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[6][6];
} HeadbuttFile_014;

typedef struct PACKED HeadbuttFile_015 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[8][6];
} HeadbuttFile_015;

typedef struct PACKED HeadbuttFile_016 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[5][6];
} HeadbuttFile_016;

typedef struct PACKED HeadbuttFile_017 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_017;

typedef struct PACKED HeadbuttFile_018 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_018;

typedef struct PACKED HeadbuttFile_019 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[11][6];
} HeadbuttFile_019;

typedef struct PACKED HeadbuttFile_020 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[10][6];
} HeadbuttFile_020;

typedef struct PACKED HeadbuttFile_021 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[15][6];
} HeadbuttFile_021;

typedef struct PACKED HeadbuttFile_022 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[3][6];
} HeadbuttFile_022;

typedef struct PACKED HeadbuttFile_023 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[19][6];
} HeadbuttFile_023;

typedef struct PACKED HeadbuttFile_024 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[2][6];
} HeadbuttFile_024;

typedef struct PACKED HeadbuttFile_025 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_025;

typedef struct PACKED HeadbuttFile_026 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[3][6];
} HeadbuttFile_026;

typedef struct PACKED HeadbuttFile_027 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[7][6];
} HeadbuttFile_027;

typedef struct PACKED HeadbuttFile_028 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_028;

typedef struct PACKED HeadbuttFile_029 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[15][6];
} HeadbuttFile_029;

typedef struct PACKED HeadbuttFile_030 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[17][6];
} HeadbuttFile_030;

typedef struct PACKED HeadbuttFile_031 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[17][6];
} HeadbuttFile_031;

typedef struct PACKED HeadbuttFile_032 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[15][6];
} HeadbuttFile_032;

typedef struct PACKED HeadbuttFile_033 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[35][6];
} HeadbuttFile_033;

typedef struct PACKED HeadbuttFile_034 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[30][6];
} HeadbuttFile_034;

typedef struct PACKED HeadbuttFile_035 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[15][6];
} HeadbuttFile_035;

typedef struct PACKED HeadbuttFile_036 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[35][6];
} HeadbuttFile_036;

typedef struct PACKED HeadbuttFile_037 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[4][6];
} HeadbuttFile_037;

typedef struct PACKED HeadbuttFile_038 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[15][6];
} HeadbuttFile_038;

typedef struct PACKED HeadbuttFile_039 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[14][6];
} HeadbuttFile_039;

typedef struct PACKED HeadbuttFile_040 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[26][6];
} HeadbuttFile_040;

typedef struct PACKED HeadbuttFile_041 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[13][6];
} HeadbuttFile_041;

typedef struct PACKED HeadbuttFile_042 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[14][6];
} HeadbuttFile_042;

typedef struct PACKED HeadbuttFile_043 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[3][6];
} HeadbuttFile_043;

typedef struct PACKED HeadbuttFile_044 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[10][6];
} HeadbuttFile_044;

typedef struct PACKED HeadbuttFile_045 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[17][6];
} HeadbuttFile_045;

typedef struct PACKED HeadbuttFile_046 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[14][6];
} HeadbuttFile_046;

typedef struct PACKED HeadbuttFile_047 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[3][6];
} HeadbuttFile_047;

typedef struct PACKED HeadbuttFile_048 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[10][6];
} HeadbuttFile_048;

typedef struct PACKED HeadbuttFile_049 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[17][6];
} HeadbuttFile_049;

typedef struct PACKED HeadbuttFile_050 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[21][6];
} HeadbuttFile_050;

typedef struct PACKED HeadbuttFile_051 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[23][6];
} HeadbuttFile_051;

typedef struct PACKED HeadbuttFile_052 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[11][6];
} HeadbuttFile_052;

typedef struct PACKED HeadbuttFile_053 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_053;

typedef struct PACKED HeadbuttFile_054 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[10][6];
} HeadbuttFile_054;

typedef struct PACKED HeadbuttFile_055 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[32][6];
} HeadbuttFile_055;

typedef struct PACKED HeadbuttFile_056 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[18][6];
} HeadbuttFile_056;

typedef struct PACKED HeadbuttFile_057 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_057;

typedef struct PACKED HeadbuttFile_058 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_058;

typedef struct PACKED HeadbuttFile_059 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_059;

typedef struct PACKED HeadbuttFile_060 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[11][6];
} HeadbuttFile_060;

typedef struct PACKED HeadbuttFile_061 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_061;

typedef struct PACKED HeadbuttFile_062 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_062;

typedef struct PACKED HeadbuttFile_063 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_063;

typedef struct PACKED HeadbuttFile_064 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_064;

typedef struct PACKED HeadbuttFile_065 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_065;

typedef struct PACKED HeadbuttFile_066 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_066;

typedef struct PACKED HeadbuttFile_067 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[11][6];
} HeadbuttFile_067;

typedef struct PACKED HeadbuttFile_068 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_068;

typedef struct PACKED HeadbuttFile_069 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_069;

typedef struct PACKED HeadbuttFile_070 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_070;

typedef struct PACKED HeadbuttFile_071 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_071;

typedef struct PACKED HeadbuttFile_072 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_072;

typedef struct PACKED HeadbuttFile_073 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[27][6];
} HeadbuttFile_073;

typedef struct PACKED HeadbuttFile_074 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[15][6];
} HeadbuttFile_074;

typedef struct PACKED HeadbuttFile_075 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_075;

typedef struct PACKED HeadbuttFile_076 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_076;

typedef struct PACKED HeadbuttFile_077 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_077;

typedef struct PACKED HeadbuttFile_078 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[18][6];
} HeadbuttFile_078;

typedef struct PACKED HeadbuttFile_079 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_079;

typedef struct PACKED HeadbuttFile_080 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_080;

typedef struct PACKED HeadbuttFile_081 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_081;

typedef struct PACKED HeadbuttFile_082 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_082;

typedef struct PACKED HeadbuttFile_083 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_083;

typedef struct PACKED HeadbuttFile_084 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_084;

typedef struct PACKED HeadbuttFile_085 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_085;

typedef struct PACKED HeadbuttFile_086 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_086;

typedef struct PACKED HeadbuttFile_087 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_087;

typedef struct PACKED HeadbuttFile_088 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[22][6];
} HeadbuttFile_088;

typedef struct PACKED HeadbuttFile_089 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_089;

typedef struct PACKED HeadbuttFile_090 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[5][6];
} HeadbuttFile_090;

typedef struct PACKED HeadbuttFile_091 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_091;

typedef struct PACKED HeadbuttFile_092 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_092;

typedef struct PACKED HeadbuttFile_093 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[3][6];
} HeadbuttFile_093;

typedef struct PACKED HeadbuttFile_094 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_094;

typedef struct PACKED HeadbuttFile_095 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_095;

typedef struct PACKED HeadbuttFile_096 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[27][6];
} HeadbuttFile_096;

typedef struct PACKED HeadbuttFile_097 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_097;

typedef struct PACKED HeadbuttFile_098 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_098;

typedef struct PACKED HeadbuttFile_099 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_099;

typedef struct PACKED HeadbuttFile_100 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_100;

typedef struct PACKED HeadbuttFile_101 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_101;

typedef struct PACKED HeadbuttFile_102 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_102;

typedef struct PACKED HeadbuttFile_103 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_103;

typedef struct PACKED HeadbuttFile_104 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_104;

typedef struct PACKED HeadbuttFile_105 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_105;

typedef struct PACKED HeadbuttFile_106 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_106;

typedef struct PACKED HeadbuttFile_107 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_107;

typedef struct PACKED HeadbuttFile_108 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_108;

typedef struct PACKED HeadbuttFile_109 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_109;

typedef struct PACKED HeadbuttFile_110 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_110;

typedef struct PACKED HeadbuttFile_111 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_111;

typedef struct PACKED HeadbuttFile_112 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_112;

typedef struct PACKED HeadbuttFile_113 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_113;

typedef struct PACKED HeadbuttFile_114 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_114;

typedef struct PACKED HeadbuttFile_115 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_115;

typedef struct PACKED HeadbuttFile_116 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_116;

typedef struct PACKED HeadbuttFile_117 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[56][6];
} HeadbuttFile_117;

typedef struct PACKED HeadbuttFile_118 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_118;

typedef struct PACKED HeadbuttFile_119 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_119;

typedef struct PACKED HeadbuttFile_120 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_120;

typedef struct PACKED HeadbuttFile_121 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_121;

typedef struct PACKED HeadbuttFile_122 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_122;

typedef struct PACKED HeadbuttFile_123 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_123;

typedef struct PACKED HeadbuttFile_124 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_124;

typedef struct PACKED HeadbuttFile_125 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_125;

typedef struct PACKED HeadbuttFile_126 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_126;

typedef struct PACKED HeadbuttFile_127 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_127;

typedef struct PACKED HeadbuttFile_128 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_128;

typedef struct PACKED HeadbuttFile_129 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_129;

typedef struct PACKED HeadbuttFile_130 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_130;

typedef struct PACKED HeadbuttFile_131 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_131;

typedef struct PACKED HeadbuttFile_132 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_132;

typedef struct PACKED HeadbuttFile_133 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_133;

typedef struct PACKED HeadbuttFile_134 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_134;

typedef struct PACKED HeadbuttFile_135 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_135;

typedef struct PACKED HeadbuttFile_136 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_136;

typedef struct PACKED HeadbuttFile_137 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_137;

typedef struct PACKED HeadbuttFile_138 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_138;

typedef struct PACKED HeadbuttFile_139 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_139;

typedef struct PACKED HeadbuttFile_140 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_140;

typedef struct PACKED HeadbuttFile_141 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_141;

typedef struct PACKED HeadbuttFile_142 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_142;

typedef struct PACKED HeadbuttFile_143 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_143;

typedef struct PACKED HeadbuttFile_144 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_144;

typedef struct PACKED HeadbuttFile_145 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_145;

typedef struct PACKED HeadbuttFile_146 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_146;

typedef struct PACKED HeadbuttFile_147 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[24][6];
} HeadbuttFile_147;

typedef struct PACKED HeadbuttFile_148 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_148;

typedef struct PACKED HeadbuttFile_149 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_149;

typedef struct PACKED HeadbuttFile_150 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_150;

typedef struct PACKED HeadbuttFile_151 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[14][6];
} HeadbuttFile_151;

typedef struct PACKED HeadbuttFile_152 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[6][6];
} HeadbuttFile_152;

typedef struct PACKED HeadbuttFile_153 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_153;

typedef struct PACKED HeadbuttFile_154 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_154;

typedef struct PACKED HeadbuttFile_155 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_155;

typedef struct PACKED HeadbuttFile_156 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_156;

typedef struct PACKED HeadbuttFile_157 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_157;

typedef struct PACKED HeadbuttFile_158 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_158;

typedef struct PACKED HeadbuttFile_159 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_159;

typedef struct PACKED HeadbuttFile_160 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_160;

typedef struct PACKED HeadbuttFile_161 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_161;

typedef struct PACKED HeadbuttFile_162 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_162;

typedef struct PACKED HeadbuttFile_163 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_163;

typedef struct PACKED HeadbuttFile_164 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_164;

typedef struct PACKED HeadbuttFile_165 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_165;

typedef struct PACKED HeadbuttFile_166 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_166;

typedef struct PACKED HeadbuttFile_167 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_167;

typedef struct PACKED HeadbuttFile_168 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_168;

typedef struct PACKED HeadbuttFile_169 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_169;

typedef struct PACKED HeadbuttFile_170 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_170;

typedef struct PACKED HeadbuttFile_171 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_171;

typedef struct PACKED HeadbuttFile_172 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_172;

typedef struct PACKED HeadbuttFile_173 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_173;

typedef struct PACKED HeadbuttFile_174 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[17][6];
} HeadbuttFile_174;

typedef struct PACKED HeadbuttFile_175 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_175;

typedef struct PACKED HeadbuttFile_176 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_176;

typedef struct PACKED HeadbuttFile_177 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_177;

typedef struct PACKED HeadbuttFile_178 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_178;

typedef struct PACKED HeadbuttFile_179 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_179;

typedef struct PACKED HeadbuttFile_180 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_180;

typedef struct PACKED HeadbuttFile_181 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_181;

typedef struct PACKED HeadbuttFile_182 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_182;

typedef struct PACKED HeadbuttFile_183 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_183;

typedef struct PACKED HeadbuttFile_184 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_184;

typedef struct PACKED HeadbuttFile_185 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_185;

typedef struct PACKED HeadbuttFile_186 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_186;

typedef struct PACKED HeadbuttFile_187 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_187;

typedef struct PACKED HeadbuttFile_188 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_188;

typedef struct PACKED HeadbuttFile_189 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_189;

typedef struct PACKED HeadbuttFile_190 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_190;

typedef struct PACKED HeadbuttFile_191 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_191;

typedef struct PACKED HeadbuttFile_192 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_192;

typedef struct PACKED HeadbuttFile_193 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_193;

typedef struct PACKED HeadbuttFile_194 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_194;

typedef struct PACKED HeadbuttFile_195 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_195;

typedef struct PACKED HeadbuttFile_196 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_196;

typedef struct PACKED HeadbuttFile_197 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_197;

typedef struct PACKED HeadbuttFile_198 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_198;

typedef struct PACKED HeadbuttFile_199 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_199;

typedef struct PACKED HeadbuttFile_200 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_200;

typedef struct PACKED HeadbuttFile_201 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_201;

typedef struct PACKED HeadbuttFile_202 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_202;

typedef struct PACKED HeadbuttFile_203 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_203;

typedef struct PACKED HeadbuttFile_204 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_204;

typedef struct PACKED HeadbuttFile_205 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_205;

typedef struct PACKED HeadbuttFile_206 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_206;

typedef struct PACKED HeadbuttFile_207 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_207;

typedef struct PACKED HeadbuttFile_208 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_208;

typedef struct PACKED HeadbuttFile_209 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_209;

typedef struct PACKED HeadbuttFile_210 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_210;

typedef struct PACKED HeadbuttFile_211 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_211;

typedef struct PACKED HeadbuttFile_212 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_212;

typedef struct PACKED HeadbuttFile_213 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_213;

typedef struct PACKED HeadbuttFile_214 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_214;

typedef struct PACKED HeadbuttFile_215 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_215;

typedef struct PACKED HeadbuttFile_216 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_216;

typedef struct PACKED HeadbuttFile_217 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_217;

typedef struct PACKED HeadbuttFile_218 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_218;

typedef struct PACKED HeadbuttFile_219 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_219;

typedef struct PACKED HeadbuttFile_220 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_220;

typedef struct PACKED HeadbuttFile_221 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_221;

typedef struct PACKED HeadbuttFile_222 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_222;

typedef struct PACKED HeadbuttFile_223 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_223;

typedef struct PACKED HeadbuttFile_224 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_224;

typedef struct PACKED HeadbuttFile_225 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_225;

typedef struct PACKED HeadbuttFile_226 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_226;

typedef struct PACKED HeadbuttFile_227 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_227;

typedef struct PACKED HeadbuttFile_228 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_228;

typedef struct PACKED HeadbuttFile_229 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_229;

typedef struct PACKED HeadbuttFile_230 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_230;

typedef struct PACKED HeadbuttFile_231 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_231;

typedef struct PACKED HeadbuttFile_232 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_232;

typedef struct PACKED HeadbuttFile_233 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_233;

typedef struct PACKED HeadbuttFile_234 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_234;

typedef struct PACKED HeadbuttFile_235 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_235;

typedef struct PACKED HeadbuttFile_236 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_236;

typedef struct PACKED HeadbuttFile_237 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_237;

typedef struct PACKED HeadbuttFile_238 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_238;

typedef struct PACKED HeadbuttFile_239 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_239;

typedef struct PACKED HeadbuttFile_240 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_240;

typedef struct PACKED HeadbuttFile_241 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_241;

typedef struct PACKED HeadbuttFile_242 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_242;

typedef struct PACKED HeadbuttFile_243 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_243;

typedef struct PACKED HeadbuttFile_244 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_244;

typedef struct PACKED HeadbuttFile_245 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_245;

typedef struct PACKED HeadbuttFile_246 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_246;

typedef struct PACKED HeadbuttFile_247 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_247;

typedef struct PACKED HeadbuttFile_248 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_248;

typedef struct PACKED HeadbuttFile_249 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_249;

typedef struct PACKED HeadbuttFile_250 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_250;

typedef struct PACKED HeadbuttFile_251 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_251;

typedef struct PACKED HeadbuttFile_252 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_252;

typedef struct PACKED HeadbuttFile_253 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_253;

typedef struct PACKED HeadbuttFile_254 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_254;

typedef struct PACKED HeadbuttFile_255 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_255;

typedef struct PACKED HeadbuttFile_256 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_256;

typedef struct PACKED HeadbuttFile_257 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_257;

typedef struct PACKED HeadbuttFile_258 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_258;

typedef struct PACKED HeadbuttFile_259 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_259;

typedef struct PACKED HeadbuttFile_260 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_260;

typedef struct PACKED HeadbuttFile_261 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_261;

typedef struct PACKED HeadbuttFile_262 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_262;

typedef struct PACKED HeadbuttFile_263 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_263;

typedef struct PACKED HeadbuttFile_264 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_264;

typedef struct PACKED HeadbuttFile_265 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_265;

typedef struct PACKED HeadbuttFile_266 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_266;

typedef struct PACKED HeadbuttFile_267 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_267;

typedef struct PACKED HeadbuttFile_268 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_268;

typedef struct PACKED HeadbuttFile_269 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_269;

typedef struct PACKED HeadbuttFile_270 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_270;

typedef struct PACKED HeadbuttFile_271 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_271;

typedef struct PACKED HeadbuttFile_272 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_272;

typedef struct PACKED HeadbuttFile_273 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_273;

typedef struct PACKED HeadbuttFile_274 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_274;

typedef struct PACKED HeadbuttFile_275 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_275;

typedef struct PACKED HeadbuttFile_276 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_276;

typedef struct PACKED HeadbuttFile_277 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_277;

typedef struct PACKED HeadbuttFile_278 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_278;

typedef struct PACKED HeadbuttFile_279 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_279;

typedef struct PACKED HeadbuttFile_280 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_280;

typedef struct PACKED HeadbuttFile_281 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_281;

typedef struct PACKED HeadbuttFile_282 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_282;

typedef struct PACKED HeadbuttFile_283 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_283;

typedef struct PACKED HeadbuttFile_284 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_284;

typedef struct PACKED HeadbuttFile_285 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_285;

typedef struct PACKED HeadbuttFile_286 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_286;

typedef struct PACKED HeadbuttFile_287 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_287;

typedef struct PACKED HeadbuttFile_288 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_288;

typedef struct PACKED HeadbuttFile_289 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_289;

typedef struct PACKED HeadbuttFile_290 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_290;

typedef struct PACKED HeadbuttFile_291 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_291;

typedef struct PACKED HeadbuttFile_292 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_292;

typedef struct PACKED HeadbuttFile_293 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_293;

typedef struct PACKED HeadbuttFile_294 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_294;

typedef struct PACKED HeadbuttFile_295 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_295;

typedef struct PACKED HeadbuttFile_296 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_296;

typedef struct PACKED HeadbuttFile_297 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_297;

typedef struct PACKED HeadbuttFile_298 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_298;

typedef struct PACKED HeadbuttFile_299 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_299;

typedef struct PACKED HeadbuttFile_300 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_300;

typedef struct PACKED HeadbuttFile_301 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_301;

typedef struct PACKED HeadbuttFile_302 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_302;

typedef struct PACKED HeadbuttFile_303 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_303;

typedef struct PACKED HeadbuttFile_304 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_304;

typedef struct PACKED HeadbuttFile_305 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_305;

typedef struct PACKED HeadbuttFile_306 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_306;

typedef struct PACKED HeadbuttFile_307 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_307;

typedef struct PACKED HeadbuttFile_308 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_308;

typedef struct PACKED HeadbuttFile_309 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_309;

typedef struct PACKED HeadbuttFile_310 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_310;

typedef struct PACKED HeadbuttFile_311 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_311;

typedef struct PACKED HeadbuttFile_312 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_312;

typedef struct PACKED HeadbuttFile_313 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_313;

typedef struct PACKED HeadbuttFile_314 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_314;

typedef struct PACKED HeadbuttFile_315 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_315;

typedef struct PACKED HeadbuttFile_316 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_316;

typedef struct PACKED HeadbuttFile_317 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_317;

typedef struct PACKED HeadbuttFile_318 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_318;

typedef struct PACKED HeadbuttFile_319 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_319;

typedef struct PACKED HeadbuttFile_320 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_320;

typedef struct PACKED HeadbuttFile_321 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_321;

typedef struct PACKED HeadbuttFile_322 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_322;

typedef struct PACKED HeadbuttFile_323 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_323;

typedef struct PACKED HeadbuttFile_324 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_324;

typedef struct PACKED HeadbuttFile_325 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_325;

typedef struct PACKED HeadbuttFile_326 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_326;

typedef struct PACKED HeadbuttFile_327 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_327;

typedef struct PACKED HeadbuttFile_328 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_328;

typedef struct PACKED HeadbuttFile_329 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_329;

typedef struct PACKED HeadbuttFile_330 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_330;

typedef struct PACKED HeadbuttFile_331 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_331;

typedef struct PACKED HeadbuttFile_332 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_332;

typedef struct PACKED HeadbuttFile_333 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_333;

typedef struct PACKED HeadbuttFile_334 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_334;

typedef struct PACKED HeadbuttFile_335 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_335;

typedef struct PACKED HeadbuttFile_336 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_336;

typedef struct PACKED HeadbuttFile_337 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_337;

typedef struct PACKED HeadbuttFile_338 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_338;

typedef struct PACKED HeadbuttFile_339 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_339;

typedef struct PACKED HeadbuttFile_340 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_340;

typedef struct PACKED HeadbuttFile_341 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_341;

typedef struct PACKED HeadbuttFile_342 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_342;

typedef struct PACKED HeadbuttFile_343 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_343;

typedef struct PACKED HeadbuttFile_344 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_344;

typedef struct PACKED HeadbuttFile_345 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_345;

typedef struct PACKED HeadbuttFile_346 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_346;

typedef struct PACKED HeadbuttFile_347 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_347;

typedef struct PACKED HeadbuttFile_348 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_348;

typedef struct PACKED HeadbuttFile_349 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_349;

typedef struct PACKED HeadbuttFile_350 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_350;

typedef struct PACKED HeadbuttFile_351 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_351;

typedef struct PACKED HeadbuttFile_352 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_352;

typedef struct PACKED HeadbuttFile_353 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_353;

typedef struct PACKED HeadbuttFile_354 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_354;

typedef struct PACKED HeadbuttFile_355 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_355;

typedef struct PACKED HeadbuttFile_356 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_356;

typedef struct PACKED HeadbuttFile_357 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_357;

typedef struct PACKED HeadbuttFile_358 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_358;

typedef struct PACKED HeadbuttFile_359 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_359;

typedef struct PACKED HeadbuttFile_360 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_360;

typedef struct PACKED HeadbuttFile_361 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_361;

typedef struct PACKED HeadbuttFile_362 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_362;

typedef struct PACKED HeadbuttFile_363 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_363;

typedef struct PACKED HeadbuttFile_364 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_364;

typedef struct PACKED HeadbuttFile_365 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_365;

typedef struct PACKED HeadbuttFile_366 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_366;

typedef struct PACKED HeadbuttFile_367 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_367;

typedef struct PACKED HeadbuttFile_368 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_368;

typedef struct PACKED HeadbuttFile_369 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_369;

typedef struct PACKED HeadbuttFile_370 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_370;

typedef struct PACKED HeadbuttFile_371 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_371;

typedef struct PACKED HeadbuttFile_372 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_372;

typedef struct PACKED HeadbuttFile_373 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_373;

typedef struct PACKED HeadbuttFile_374 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_374;

typedef struct PACKED HeadbuttFile_375 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_375;

typedef struct PACKED HeadbuttFile_376 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_376;

typedef struct PACKED HeadbuttFile_377 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_377;

typedef struct PACKED HeadbuttFile_378 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_378;

typedef struct PACKED HeadbuttFile_379 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_379;

typedef struct PACKED HeadbuttFile_380 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_380;

typedef struct PACKED HeadbuttFile_381 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_381;

typedef struct PACKED HeadbuttFile_382 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_382;

typedef struct PACKED HeadbuttFile_383 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_383;

typedef struct PACKED HeadbuttFile_384 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_384;

typedef struct PACKED HeadbuttFile_385 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_385;

typedef struct PACKED HeadbuttFile_386 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_386;

typedef struct PACKED HeadbuttFile_387 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_387;

typedef struct PACKED HeadbuttFile_388 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_388;

typedef struct PACKED HeadbuttFile_389 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_389;

typedef struct PACKED HeadbuttFile_390 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_390;

typedef struct PACKED HeadbuttFile_391 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_391;

typedef struct PACKED HeadbuttFile_392 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_392;

typedef struct PACKED HeadbuttFile_393 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_393;

typedef struct PACKED HeadbuttFile_394 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_394;

typedef struct PACKED HeadbuttFile_395 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_395;

typedef struct PACKED HeadbuttFile_396 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_396;

typedef struct PACKED HeadbuttFile_397 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_397;

typedef struct PACKED HeadbuttFile_398 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_398;

typedef struct PACKED HeadbuttFile_399 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_399;

typedef struct PACKED HeadbuttFile_400 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_400;

typedef struct PACKED HeadbuttFile_401 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_401;

typedef struct PACKED HeadbuttFile_402 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_402;

typedef struct PACKED HeadbuttFile_403 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_403;

typedef struct PACKED HeadbuttFile_404 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_404;

typedef struct PACKED HeadbuttFile_405 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_405;

typedef struct PACKED HeadbuttFile_406 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_406;

typedef struct PACKED HeadbuttFile_407 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_407;

typedef struct PACKED HeadbuttFile_408 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_408;

typedef struct PACKED HeadbuttFile_409 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_409;

typedef struct PACKED HeadbuttFile_410 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_410;

typedef struct PACKED HeadbuttFile_411 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_411;

typedef struct PACKED HeadbuttFile_412 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_412;

typedef struct PACKED HeadbuttFile_413 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_413;

typedef struct PACKED HeadbuttFile_414 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[13][6];
} HeadbuttFile_414;

typedef struct PACKED HeadbuttFile_415 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_415;

typedef struct PACKED HeadbuttFile_416 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_416;

typedef struct PACKED HeadbuttFile_417 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_417;

typedef struct PACKED HeadbuttFile_418 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_418;

typedef struct PACKED HeadbuttFile_419 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_419;

typedef struct PACKED HeadbuttFile_420 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_420;

typedef struct PACKED HeadbuttFile_421 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_421;

typedef struct PACKED HeadbuttFile_422 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[5][6];
} HeadbuttFile_422;

typedef struct PACKED HeadbuttFile_423 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_423;

typedef struct PACKED HeadbuttFile_424 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_424;

typedef struct PACKED HeadbuttFile_425 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_425;

typedef struct PACKED HeadbuttFile_426 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_426;

typedef struct PACKED HeadbuttFile_427 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_427;

typedef struct PACKED HeadbuttFile_428 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_428;

typedef struct PACKED HeadbuttFile_429 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_429;

typedef struct PACKED HeadbuttFile_430 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_430;

typedef struct PACKED HeadbuttFile_431 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_431;

typedef struct PACKED HeadbuttFile_432 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_432;

typedef struct PACKED HeadbuttFile_433 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_433;

typedef struct PACKED HeadbuttFile_434 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_434;

typedef struct PACKED HeadbuttFile_435 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_435;

typedef struct PACKED HeadbuttFile_436 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_436;

typedef struct PACKED HeadbuttFile_437 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_437;

typedef struct PACKED HeadbuttFile_438 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_438;

typedef struct PACKED HeadbuttFile_439 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_439;

typedef struct PACKED HeadbuttFile_440 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_440;

typedef struct PACKED HeadbuttFile_441 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_441;

typedef struct PACKED HeadbuttFile_442 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_442;

typedef struct PACKED HeadbuttFile_443 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_443;

typedef struct PACKED HeadbuttFile_444 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_444;

typedef struct PACKED HeadbuttFile_445 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_445;

typedef struct PACKED HeadbuttFile_446 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_446;

typedef struct PACKED HeadbuttFile_447 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_447;

typedef struct PACKED HeadbuttFile_448 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_448;

typedef struct PACKED HeadbuttFile_449 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_449;

typedef struct PACKED HeadbuttFile_450 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_450;

typedef struct PACKED HeadbuttFile_451 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_451;

typedef struct PACKED HeadbuttFile_452 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_452;

typedef struct PACKED HeadbuttFile_453 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_453;

typedef struct PACKED HeadbuttFile_454 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_454;

typedef struct PACKED HeadbuttFile_455 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_455;

typedef struct PACKED HeadbuttFile_456 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_456;

typedef struct PACKED HeadbuttFile_457 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_457;

typedef struct PACKED HeadbuttFile_458 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_458;

typedef struct PACKED HeadbuttFile_459 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_459;

typedef struct PACKED HeadbuttFile_460 {
    u16 normalTreeCount;
    u16 specialTreeCount;
    HeadbuttEncounterSlot normalSlots[12];
    HeadbuttEncounterSlot specialSlots[6];
    HeadbuttTreeCoord treeCoords[3][6];
} HeadbuttFile_460;

typedef struct PACKED HeadbuttFile_461 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_461;

typedef struct PACKED HeadbuttFile_462 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_462;

typedef struct PACKED HeadbuttFile_463 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_463;

typedef struct PACKED HeadbuttFile_464 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_464;

typedef struct PACKED HeadbuttFile_465 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_465;

typedef struct PACKED HeadbuttFile_466 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_466;

typedef struct PACKED HeadbuttFile_467 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_467;

typedef struct PACKED HeadbuttFile_468 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_468;

typedef struct PACKED HeadbuttFile_469 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_469;

typedef struct PACKED HeadbuttFile_470 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_470;

typedef struct PACKED HeadbuttFile_471 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_471;

typedef struct PACKED HeadbuttFile_472 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_472;

typedef struct PACKED HeadbuttFile_473 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_473;

typedef struct PACKED HeadbuttFile_474 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_474;

typedef struct PACKED HeadbuttFile_475 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_475;

typedef struct PACKED HeadbuttFile_476 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_476;

typedef struct PACKED HeadbuttFile_477 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_477;

typedef struct PACKED HeadbuttFile_478 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_478;

typedef struct PACKED HeadbuttFile_479 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_479;

typedef struct PACKED HeadbuttFile_480 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_480;

typedef struct PACKED HeadbuttFile_481 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_481;

typedef struct PACKED HeadbuttFile_482 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_482;

typedef struct PACKED HeadbuttFile_483 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_483;

typedef struct PACKED HeadbuttFile_484 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_484;

typedef struct PACKED HeadbuttFile_485 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_485;

typedef struct PACKED HeadbuttFile_486 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_486;

typedef struct PACKED HeadbuttFile_487 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_487;

typedef struct PACKED HeadbuttFile_488 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_488;

typedef struct PACKED HeadbuttFile_489 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_489;

typedef struct PACKED HeadbuttFile_490 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_490;

typedef struct PACKED HeadbuttFile_491 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_491;

typedef struct PACKED HeadbuttFile_492 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_492;

typedef struct PACKED HeadbuttFile_493 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_493;

typedef struct PACKED HeadbuttFile_494 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_494;

typedef struct PACKED HeadbuttFile_495 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_495;

typedef struct PACKED HeadbuttFile_496 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_496;

typedef struct PACKED HeadbuttFile_497 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_497;

typedef struct PACKED HeadbuttFile_498 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_498;

typedef struct PACKED HeadbuttFile_499 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_499;

typedef struct PACKED HeadbuttFile_500 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_500;

typedef struct PACKED HeadbuttFile_501 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_501;

typedef struct PACKED HeadbuttFile_502 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_502;

typedef struct PACKED HeadbuttFile_503 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_503;

typedef struct PACKED HeadbuttFile_504 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_504;

typedef struct PACKED HeadbuttFile_505 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_505;

typedef struct PACKED HeadbuttFile_506 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_506;

typedef struct PACKED HeadbuttFile_507 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_507;

typedef struct PACKED HeadbuttFile_508 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_508;

typedef struct PACKED HeadbuttFile_509 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_509;

typedef struct PACKED HeadbuttFile_510 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_510;

typedef struct PACKED HeadbuttFile_511 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_511;

typedef struct PACKED HeadbuttFile_512 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_512;

typedef struct PACKED HeadbuttFile_513 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_513;

typedef struct PACKED HeadbuttFile_514 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_514;

typedef struct PACKED HeadbuttFile_515 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_515;

typedef struct PACKED HeadbuttFile_516 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_516;

typedef struct PACKED HeadbuttFile_517 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_517;

typedef struct PACKED HeadbuttFile_518 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_518;

typedef struct PACKED HeadbuttFile_519 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_519;

typedef struct PACKED HeadbuttFile_520 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_520;

typedef struct PACKED HeadbuttFile_521 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_521;

typedef struct PACKED HeadbuttFile_522 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_522;

typedef struct PACKED HeadbuttFile_523 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_523;

typedef struct PACKED HeadbuttFile_524 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_524;

typedef struct PACKED HeadbuttFile_525 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_525;

typedef struct PACKED HeadbuttFile_526 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_526;

typedef struct PACKED HeadbuttFile_527 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_527;

typedef struct PACKED HeadbuttFile_528 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_528;

typedef struct PACKED HeadbuttFile_529 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_529;

typedef struct PACKED HeadbuttFile_530 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_530;

typedef struct PACKED HeadbuttFile_531 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_531;

typedef struct PACKED HeadbuttFile_532 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_532;

typedef struct PACKED HeadbuttFile_533 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_533;

typedef struct PACKED HeadbuttFile_534 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_534;

typedef struct PACKED HeadbuttFile_535 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_535;

typedef struct PACKED HeadbuttFile_536 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_536;

typedef struct PACKED HeadbuttFile_537 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_537;

typedef struct PACKED HeadbuttFile_538 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_538;

typedef struct PACKED HeadbuttFile_539 {
    u16 normalTreeCount;
    u16 specialTreeCount;
} HeadbuttFile_539;

typedef struct PACKED HeadbuttArchiveData {
    HeadbuttFile_000 000;
    HeadbuttFile_001 001;
    HeadbuttFile_002 002;
    HeadbuttFile_003 003;
    HeadbuttFile_004 004;
    HeadbuttFile_005 005;
    HeadbuttFile_006 006;
    HeadbuttFile_007 007;
    HeadbuttFile_008 008;
    HeadbuttFile_009 009;
    HeadbuttFile_010 010;
    HeadbuttFile_011 011;
    HeadbuttFile_012 012;
    HeadbuttFile_013 013;
    HeadbuttFile_014 014;
    HeadbuttFile_015 015;
    HeadbuttFile_016 016;
    HeadbuttFile_017 017;
    HeadbuttFile_018 018;
    HeadbuttFile_019 019;
    HeadbuttFile_020 020;
    HeadbuttFile_021 021;
    HeadbuttFile_022 022;
    HeadbuttFile_023 023;
    HeadbuttFile_024 024;
    HeadbuttFile_025 025;
    HeadbuttFile_026 026;
    HeadbuttFile_027 027;
    HeadbuttFile_028 028;
    HeadbuttFile_029 029;
    HeadbuttFile_030 030;
    HeadbuttFile_031 031;
    HeadbuttFile_032 032;
    HeadbuttFile_033 033;
    HeadbuttFile_034 034;
    HeadbuttFile_035 035;
    HeadbuttFile_036 036;
    HeadbuttFile_037 037;
    HeadbuttFile_038 038;
    HeadbuttFile_039 039;
    HeadbuttFile_040 040;
    HeadbuttFile_041 041;
    HeadbuttFile_042 042;
    HeadbuttFile_043 043;
    HeadbuttFile_044 044;
    HeadbuttFile_045 045;
    HeadbuttFile_046 046;
    HeadbuttFile_047 047;
    HeadbuttFile_048 048;
    HeadbuttFile_049 049;
    HeadbuttFile_050 050;
    HeadbuttFile_051 051;
    HeadbuttFile_052 052;
    HeadbuttFile_053 053;
    HeadbuttFile_054 054;
    HeadbuttFile_055 055;
    HeadbuttFile_056 056;
    HeadbuttFile_057 057;
    HeadbuttFile_058 058;
    HeadbuttFile_059 059;
    HeadbuttFile_060 060;
    HeadbuttFile_061 061;
    HeadbuttFile_062 062;
    HeadbuttFile_063 063;
    HeadbuttFile_064 064;
    HeadbuttFile_065 065;
    HeadbuttFile_066 066;
    HeadbuttFile_067 067;
    HeadbuttFile_068 068;
    HeadbuttFile_069 069;
    HeadbuttFile_070 070;
    HeadbuttFile_071 071;
    HeadbuttFile_072 072;
    HeadbuttFile_073 073;
    HeadbuttFile_074 074;
    HeadbuttFile_075 075;
    HeadbuttFile_076 076;
    HeadbuttFile_077 077;
    HeadbuttFile_078 078;
    HeadbuttFile_079 079;
    HeadbuttFile_080 080;
    HeadbuttFile_081 081;
    HeadbuttFile_082 082;
    HeadbuttFile_083 083;
    HeadbuttFile_084 084;
    HeadbuttFile_085 085;
    HeadbuttFile_086 086;
    HeadbuttFile_087 087;
    HeadbuttFile_088 088;
    HeadbuttFile_089 089;
    HeadbuttFile_090 090;
    HeadbuttFile_091 091;
    HeadbuttFile_092 092;
    HeadbuttFile_093 093;
    HeadbuttFile_094 094;
    HeadbuttFile_095 095;
    HeadbuttFile_096 096;
    HeadbuttFile_097 097;
    HeadbuttFile_098 098;
    HeadbuttFile_099 099;
    HeadbuttFile_100 100;
    HeadbuttFile_101 101;
    HeadbuttFile_102 102;
    HeadbuttFile_103 103;
    HeadbuttFile_104 104;
    HeadbuttFile_105 105;
    HeadbuttFile_106 106;
    HeadbuttFile_107 107;
    HeadbuttFile_108 108;
    HeadbuttFile_109 109;
    HeadbuttFile_110 110;
    HeadbuttFile_111 111;
    HeadbuttFile_112 112;
    HeadbuttFile_113 113;
    HeadbuttFile_114 114;
    HeadbuttFile_115 115;
    HeadbuttFile_116 116;
    HeadbuttFile_117 117;
    HeadbuttFile_118 118;
    HeadbuttFile_119 119;
    HeadbuttFile_120 120;
    HeadbuttFile_121 121;
    HeadbuttFile_122 122;
    HeadbuttFile_123 123;
    HeadbuttFile_124 124;
    HeadbuttFile_125 125;
    HeadbuttFile_126 126;
    HeadbuttFile_127 127;
    HeadbuttFile_128 128;
    HeadbuttFile_129 129;
    HeadbuttFile_130 130;
    HeadbuttFile_131 131;
    HeadbuttFile_132 132;
    HeadbuttFile_133 133;
    HeadbuttFile_134 134;
    HeadbuttFile_135 135;
    HeadbuttFile_136 136;
    HeadbuttFile_137 137;
    HeadbuttFile_138 138;
    HeadbuttFile_139 139;
    HeadbuttFile_140 140;
    HeadbuttFile_141 141;
    HeadbuttFile_142 142;
    HeadbuttFile_143 143;
    HeadbuttFile_144 144;
    HeadbuttFile_145 145;
    HeadbuttFile_146 146;
    HeadbuttFile_147 147;
    HeadbuttFile_148 148;
    HeadbuttFile_149 149;
    HeadbuttFile_150 150;
    HeadbuttFile_151 151;
    HeadbuttFile_152 152;
    HeadbuttFile_153 153;
    HeadbuttFile_154 154;
    HeadbuttFile_155 155;
    HeadbuttFile_156 156;
    HeadbuttFile_157 157;
    HeadbuttFile_158 158;
    HeadbuttFile_159 159;
    HeadbuttFile_160 160;
    HeadbuttFile_161 161;
    HeadbuttFile_162 162;
    HeadbuttFile_163 163;
    HeadbuttFile_164 164;
    HeadbuttFile_165 165;
    HeadbuttFile_166 166;
    HeadbuttFile_167 167;
    HeadbuttFile_168 168;
    HeadbuttFile_169 169;
    HeadbuttFile_170 170;
    HeadbuttFile_171 171;
    HeadbuttFile_172 172;
    HeadbuttFile_173 173;
    HeadbuttFile_174 174;
    HeadbuttFile_175 175;
    HeadbuttFile_176 176;
    HeadbuttFile_177 177;
    HeadbuttFile_178 178;
    HeadbuttFile_179 179;
    HeadbuttFile_180 180;
    HeadbuttFile_181 181;
    HeadbuttFile_182 182;
    HeadbuttFile_183 183;
    HeadbuttFile_184 184;
    HeadbuttFile_185 185;
    HeadbuttFile_186 186;
    HeadbuttFile_187 187;
    HeadbuttFile_188 188;
    HeadbuttFile_189 189;
    HeadbuttFile_190 190;
    HeadbuttFile_191 191;
    HeadbuttFile_192 192;
    HeadbuttFile_193 193;
    HeadbuttFile_194 194;
    HeadbuttFile_195 195;
    HeadbuttFile_196 196;
    HeadbuttFile_197 197;
    HeadbuttFile_198 198;
    HeadbuttFile_199 199;
    HeadbuttFile_200 200;
    HeadbuttFile_201 201;
    HeadbuttFile_202 202;
    HeadbuttFile_203 203;
    HeadbuttFile_204 204;
    HeadbuttFile_205 205;
    HeadbuttFile_206 206;
    HeadbuttFile_207 207;
    HeadbuttFile_208 208;
    HeadbuttFile_209 209;
    HeadbuttFile_210 210;
    HeadbuttFile_211 211;
    HeadbuttFile_212 212;
    HeadbuttFile_213 213;
    HeadbuttFile_214 214;
    HeadbuttFile_215 215;
    HeadbuttFile_216 216;
    HeadbuttFile_217 217;
    HeadbuttFile_218 218;
    HeadbuttFile_219 219;
    HeadbuttFile_220 220;
    HeadbuttFile_221 221;
    HeadbuttFile_222 222;
    HeadbuttFile_223 223;
    HeadbuttFile_224 224;
    HeadbuttFile_225 225;
    HeadbuttFile_226 226;
    HeadbuttFile_227 227;
    HeadbuttFile_228 228;
    HeadbuttFile_229 229;
    HeadbuttFile_230 230;
    HeadbuttFile_231 231;
    HeadbuttFile_232 232;
    HeadbuttFile_233 233;
    HeadbuttFile_234 234;
    HeadbuttFile_235 235;
    HeadbuttFile_236 236;
    HeadbuttFile_237 237;
    HeadbuttFile_238 238;
    HeadbuttFile_239 239;
    HeadbuttFile_240 240;
    HeadbuttFile_241 241;
    HeadbuttFile_242 242;
    HeadbuttFile_243 243;
    HeadbuttFile_244 244;
    HeadbuttFile_245 245;
    HeadbuttFile_246 246;
    HeadbuttFile_247 247;
    HeadbuttFile_248 248;
    HeadbuttFile_249 249;
    HeadbuttFile_250 250;
    HeadbuttFile_251 251;
    HeadbuttFile_252 252;
    HeadbuttFile_253 253;
    HeadbuttFile_254 254;
    HeadbuttFile_255 255;
    HeadbuttFile_256 256;
    HeadbuttFile_257 257;
    HeadbuttFile_258 258;
    HeadbuttFile_259 259;
    HeadbuttFile_260 260;
    HeadbuttFile_261 261;
    HeadbuttFile_262 262;
    HeadbuttFile_263 263;
    HeadbuttFile_264 264;
    HeadbuttFile_265 265;
    HeadbuttFile_266 266;
    HeadbuttFile_267 267;
    HeadbuttFile_268 268;
    HeadbuttFile_269 269;
    HeadbuttFile_270 270;
    HeadbuttFile_271 271;
    HeadbuttFile_272 272;
    HeadbuttFile_273 273;
    HeadbuttFile_274 274;
    HeadbuttFile_275 275;
    HeadbuttFile_276 276;
    HeadbuttFile_277 277;
    HeadbuttFile_278 278;
    HeadbuttFile_279 279;
    HeadbuttFile_280 280;
    HeadbuttFile_281 281;
    HeadbuttFile_282 282;
    HeadbuttFile_283 283;
    HeadbuttFile_284 284;
    HeadbuttFile_285 285;
    HeadbuttFile_286 286;
    HeadbuttFile_287 287;
    HeadbuttFile_288 288;
    HeadbuttFile_289 289;
    HeadbuttFile_290 290;
    HeadbuttFile_291 291;
    HeadbuttFile_292 292;
    HeadbuttFile_293 293;
    HeadbuttFile_294 294;
    HeadbuttFile_295 295;
    HeadbuttFile_296 296;
    HeadbuttFile_297 297;
    HeadbuttFile_298 298;
    HeadbuttFile_299 299;
    HeadbuttFile_300 300;
    HeadbuttFile_301 301;
    HeadbuttFile_302 302;
    HeadbuttFile_303 303;
    HeadbuttFile_304 304;
    HeadbuttFile_305 305;
    HeadbuttFile_306 306;
    HeadbuttFile_307 307;
    HeadbuttFile_308 308;
    HeadbuttFile_309 309;
    HeadbuttFile_310 310;
    HeadbuttFile_311 311;
    HeadbuttFile_312 312;
    HeadbuttFile_313 313;
    HeadbuttFile_314 314;
    HeadbuttFile_315 315;
    HeadbuttFile_316 316;
    HeadbuttFile_317 317;
    HeadbuttFile_318 318;
    HeadbuttFile_319 319;
    HeadbuttFile_320 320;
    HeadbuttFile_321 321;
    HeadbuttFile_322 322;
    HeadbuttFile_323 323;
    HeadbuttFile_324 324;
    HeadbuttFile_325 325;
    HeadbuttFile_326 326;
    HeadbuttFile_327 327;
    HeadbuttFile_328 328;
    HeadbuttFile_329 329;
    HeadbuttFile_330 330;
    HeadbuttFile_331 331;
    HeadbuttFile_332 332;
    HeadbuttFile_333 333;
    HeadbuttFile_334 334;
    HeadbuttFile_335 335;
    HeadbuttFile_336 336;
    HeadbuttFile_337 337;
    HeadbuttFile_338 338;
    HeadbuttFile_339 339;
    HeadbuttFile_340 340;
    HeadbuttFile_341 341;
    HeadbuttFile_342 342;
    HeadbuttFile_343 343;
    HeadbuttFile_344 344;
    HeadbuttFile_345 345;
    HeadbuttFile_346 346;
    HeadbuttFile_347 347;
    HeadbuttFile_348 348;
    HeadbuttFile_349 349;
    HeadbuttFile_350 350;
    HeadbuttFile_351 351;
    HeadbuttFile_352 352;
    HeadbuttFile_353 353;
    HeadbuttFile_354 354;
    HeadbuttFile_355 355;
    HeadbuttFile_356 356;
    HeadbuttFile_357 357;
    HeadbuttFile_358 358;
    HeadbuttFile_359 359;
    HeadbuttFile_360 360;
    HeadbuttFile_361 361;
    HeadbuttFile_362 362;
    HeadbuttFile_363 363;
    HeadbuttFile_364 364;
    HeadbuttFile_365 365;
    HeadbuttFile_366 366;
    HeadbuttFile_367 367;
    HeadbuttFile_368 368;
    HeadbuttFile_369 369;
    HeadbuttFile_370 370;
    HeadbuttFile_371 371;
    HeadbuttFile_372 372;
    HeadbuttFile_373 373;
    HeadbuttFile_374 374;
    HeadbuttFile_375 375;
    HeadbuttFile_376 376;
    HeadbuttFile_377 377;
    HeadbuttFile_378 378;
    HeadbuttFile_379 379;
    HeadbuttFile_380 380;
    HeadbuttFile_381 381;
    HeadbuttFile_382 382;
    HeadbuttFile_383 383;
    HeadbuttFile_384 384;
    HeadbuttFile_385 385;
    HeadbuttFile_386 386;
    HeadbuttFile_387 387;
    HeadbuttFile_388 388;
    HeadbuttFile_389 389;
    HeadbuttFile_390 390;
    HeadbuttFile_391 391;
    HeadbuttFile_392 392;
    HeadbuttFile_393 393;
    HeadbuttFile_394 394;
    HeadbuttFile_395 395;
    HeadbuttFile_396 396;
    HeadbuttFile_397 397;
    HeadbuttFile_398 398;
    HeadbuttFile_399 399;
    HeadbuttFile_400 400;
    HeadbuttFile_401 401;
    HeadbuttFile_402 402;
    HeadbuttFile_403 403;
    HeadbuttFile_404 404;
    HeadbuttFile_405 405;
    HeadbuttFile_406 406;
    HeadbuttFile_407 407;
    HeadbuttFile_408 408;
    HeadbuttFile_409 409;
    HeadbuttFile_410 410;
    HeadbuttFile_411 411;
    HeadbuttFile_412 412;
    HeadbuttFile_413 413;
    HeadbuttFile_414 414;
    HeadbuttFile_415 415;
    HeadbuttFile_416 416;
    HeadbuttFile_417 417;
    HeadbuttFile_418 418;
    HeadbuttFile_419 419;
    HeadbuttFile_420 420;
    HeadbuttFile_421 421;
    HeadbuttFile_422 422;
    HeadbuttFile_423 423;
    HeadbuttFile_424 424;
    HeadbuttFile_425 425;
    HeadbuttFile_426 426;
    HeadbuttFile_427 427;
    HeadbuttFile_428 428;
    HeadbuttFile_429 429;
    HeadbuttFile_430 430;
    HeadbuttFile_431 431;
    HeadbuttFile_432 432;
    HeadbuttFile_433 433;
    HeadbuttFile_434 434;
    HeadbuttFile_435 435;
    HeadbuttFile_436 436;
    HeadbuttFile_437 437;
    HeadbuttFile_438 438;
    HeadbuttFile_439 439;
    HeadbuttFile_440 440;
    HeadbuttFile_441 441;
    HeadbuttFile_442 442;
    HeadbuttFile_443 443;
    HeadbuttFile_444 444;
    HeadbuttFile_445 445;
    HeadbuttFile_446 446;
    HeadbuttFile_447 447;
    HeadbuttFile_448 448;
    HeadbuttFile_449 449;
    HeadbuttFile_450 450;
    HeadbuttFile_451 451;
    HeadbuttFile_452 452;
    HeadbuttFile_453 453;
    HeadbuttFile_454 454;
    HeadbuttFile_455 455;
    HeadbuttFile_456 456;
    HeadbuttFile_457 457;
    HeadbuttFile_458 458;
    HeadbuttFile_459 459;
    HeadbuttFile_460 460;
    HeadbuttFile_461 461;
    HeadbuttFile_462 462;
    HeadbuttFile_463 463;
    HeadbuttFile_464 464;
    HeadbuttFile_465 465;
    HeadbuttFile_466 466;
    HeadbuttFile_467 467;
    HeadbuttFile_468 468;
    HeadbuttFile_469 469;
    HeadbuttFile_470 470;
    HeadbuttFile_471 471;
    HeadbuttFile_472 472;
    HeadbuttFile_473 473;
    HeadbuttFile_474 474;
    HeadbuttFile_475 475;
    HeadbuttFile_476 476;
    HeadbuttFile_477 477;
    HeadbuttFile_478 478;
    HeadbuttFile_479 479;
    HeadbuttFile_480 480;
    HeadbuttFile_481 481;
    HeadbuttFile_482 482;
    HeadbuttFile_483 483;
    HeadbuttFile_484 484;
    HeadbuttFile_485 485;
    HeadbuttFile_486 486;
    HeadbuttFile_487 487;
    HeadbuttFile_488 488;
    HeadbuttFile_489 489;
    HeadbuttFile_490 490;
    HeadbuttFile_491 491;
    HeadbuttFile_492 492;
    HeadbuttFile_493 493;
    HeadbuttFile_494 494;
    HeadbuttFile_495 495;
    HeadbuttFile_496 496;
    HeadbuttFile_497 497;
    HeadbuttFile_498 498;
    HeadbuttFile_499 499;
    HeadbuttFile_500 500;
    HeadbuttFile_501 501;
    HeadbuttFile_502 502;
    HeadbuttFile_503 503;
    HeadbuttFile_504 504;
    HeadbuttFile_505 505;
    HeadbuttFile_506 506;
    HeadbuttFile_507 507;
    HeadbuttFile_508 508;
    HeadbuttFile_509 509;
    HeadbuttFile_510 510;
    HeadbuttFile_511 511;
    HeadbuttFile_512 512;
    HeadbuttFile_513 513;
    HeadbuttFile_514 514;
    HeadbuttFile_515 515;
    HeadbuttFile_516 516;
    HeadbuttFile_517 517;
    HeadbuttFile_518 518;
    HeadbuttFile_519 519;
    HeadbuttFile_520 520;
    HeadbuttFile_521 521;
    HeadbuttFile_522 522;
    HeadbuttFile_523 523;
    HeadbuttFile_524 524;
    HeadbuttFile_525 525;
    HeadbuttFile_526 526;
    HeadbuttFile_527 527;
    HeadbuttFile_528 528;
    HeadbuttFile_529 529;
    HeadbuttFile_530 530;
    HeadbuttFile_531 531;
    HeadbuttFile_532 532;
    HeadbuttFile_533 533;
    HeadbuttFile_534 534;
    HeadbuttFile_535 535;
    HeadbuttFile_536 536;
    HeadbuttFile_537 537;
    HeadbuttFile_538 538;
    HeadbuttFile_539 539;
} HeadbuttArchiveData;

const u32 __size[] =
{
    sizeof(HeadbuttFile_000),
    sizeof(HeadbuttFile_001),
    sizeof(HeadbuttFile_002),
    sizeof(HeadbuttFile_003),
    sizeof(HeadbuttFile_004),
    sizeof(HeadbuttFile_005),
    sizeof(HeadbuttFile_006),
    sizeof(HeadbuttFile_007),
    sizeof(HeadbuttFile_008),
    sizeof(HeadbuttFile_009),
    sizeof(HeadbuttFile_010),
    sizeof(HeadbuttFile_011),
    sizeof(HeadbuttFile_012),
    sizeof(HeadbuttFile_013),
    sizeof(HeadbuttFile_014),
    sizeof(HeadbuttFile_015),
    sizeof(HeadbuttFile_016),
    sizeof(HeadbuttFile_017),
    sizeof(HeadbuttFile_018),
    sizeof(HeadbuttFile_019),
    sizeof(HeadbuttFile_020),
    sizeof(HeadbuttFile_021),
    sizeof(HeadbuttFile_022),
    sizeof(HeadbuttFile_023),
    sizeof(HeadbuttFile_024),
    sizeof(HeadbuttFile_025),
    sizeof(HeadbuttFile_026),
    sizeof(HeadbuttFile_027),
    sizeof(HeadbuttFile_028),
    sizeof(HeadbuttFile_029),
    sizeof(HeadbuttFile_030),
    sizeof(HeadbuttFile_031),
    sizeof(HeadbuttFile_032),
    sizeof(HeadbuttFile_033),
    sizeof(HeadbuttFile_034),
    sizeof(HeadbuttFile_035),
    sizeof(HeadbuttFile_036),
    sizeof(HeadbuttFile_037),
    sizeof(HeadbuttFile_038),
    sizeof(HeadbuttFile_039),
    sizeof(HeadbuttFile_040),
    sizeof(HeadbuttFile_041),
    sizeof(HeadbuttFile_042),
    sizeof(HeadbuttFile_043),
    sizeof(HeadbuttFile_044),
    sizeof(HeadbuttFile_045),
    sizeof(HeadbuttFile_046),
    sizeof(HeadbuttFile_047),
    sizeof(HeadbuttFile_048),
    sizeof(HeadbuttFile_049),
    sizeof(HeadbuttFile_050),
    sizeof(HeadbuttFile_051),
    sizeof(HeadbuttFile_052),
    sizeof(HeadbuttFile_053),
    sizeof(HeadbuttFile_054),
    sizeof(HeadbuttFile_055),
    sizeof(HeadbuttFile_056),
    sizeof(HeadbuttFile_057),
    sizeof(HeadbuttFile_058),
    sizeof(HeadbuttFile_059),
    sizeof(HeadbuttFile_060),
    sizeof(HeadbuttFile_061),
    sizeof(HeadbuttFile_062),
    sizeof(HeadbuttFile_063),
    sizeof(HeadbuttFile_064),
    sizeof(HeadbuttFile_065),
    sizeof(HeadbuttFile_066),
    sizeof(HeadbuttFile_067),
    sizeof(HeadbuttFile_068),
    sizeof(HeadbuttFile_069),
    sizeof(HeadbuttFile_070),
    sizeof(HeadbuttFile_071),
    sizeof(HeadbuttFile_072),
    sizeof(HeadbuttFile_073),
    sizeof(HeadbuttFile_074),
    sizeof(HeadbuttFile_075),
    sizeof(HeadbuttFile_076),
    sizeof(HeadbuttFile_077),
    sizeof(HeadbuttFile_078),
    sizeof(HeadbuttFile_079),
    sizeof(HeadbuttFile_080),
    sizeof(HeadbuttFile_081),
    sizeof(HeadbuttFile_082),
    sizeof(HeadbuttFile_083),
    sizeof(HeadbuttFile_084),
    sizeof(HeadbuttFile_085),
    sizeof(HeadbuttFile_086),
    sizeof(HeadbuttFile_087),
    sizeof(HeadbuttFile_088),
    sizeof(HeadbuttFile_089),
    sizeof(HeadbuttFile_090),
    sizeof(HeadbuttFile_091),
    sizeof(HeadbuttFile_092),
    sizeof(HeadbuttFile_093),
    sizeof(HeadbuttFile_094),
    sizeof(HeadbuttFile_095),
    sizeof(HeadbuttFile_096),
    sizeof(HeadbuttFile_097),
    sizeof(HeadbuttFile_098),
    sizeof(HeadbuttFile_099),
    sizeof(HeadbuttFile_100),
    sizeof(HeadbuttFile_101),
    sizeof(HeadbuttFile_102),
    sizeof(HeadbuttFile_103),
    sizeof(HeadbuttFile_104),
    sizeof(HeadbuttFile_105),
    sizeof(HeadbuttFile_106),
    sizeof(HeadbuttFile_107),
    sizeof(HeadbuttFile_108),
    sizeof(HeadbuttFile_109),
    sizeof(HeadbuttFile_110),
    sizeof(HeadbuttFile_111),
    sizeof(HeadbuttFile_112),
    sizeof(HeadbuttFile_113),
    sizeof(HeadbuttFile_114),
    sizeof(HeadbuttFile_115),
    sizeof(HeadbuttFile_116),
    sizeof(HeadbuttFile_117),
    sizeof(HeadbuttFile_118),
    sizeof(HeadbuttFile_119),
    sizeof(HeadbuttFile_120),
    sizeof(HeadbuttFile_121),
    sizeof(HeadbuttFile_122),
    sizeof(HeadbuttFile_123),
    sizeof(HeadbuttFile_124),
    sizeof(HeadbuttFile_125),
    sizeof(HeadbuttFile_126),
    sizeof(HeadbuttFile_127),
    sizeof(HeadbuttFile_128),
    sizeof(HeadbuttFile_129),
    sizeof(HeadbuttFile_130),
    sizeof(HeadbuttFile_131),
    sizeof(HeadbuttFile_132),
    sizeof(HeadbuttFile_133),
    sizeof(HeadbuttFile_134),
    sizeof(HeadbuttFile_135),
    sizeof(HeadbuttFile_136),
    sizeof(HeadbuttFile_137),
    sizeof(HeadbuttFile_138),
    sizeof(HeadbuttFile_139),
    sizeof(HeadbuttFile_140),
    sizeof(HeadbuttFile_141),
    sizeof(HeadbuttFile_142),
    sizeof(HeadbuttFile_143),
    sizeof(HeadbuttFile_144),
    sizeof(HeadbuttFile_145),
    sizeof(HeadbuttFile_146),
    sizeof(HeadbuttFile_147),
    sizeof(HeadbuttFile_148),
    sizeof(HeadbuttFile_149),
    sizeof(HeadbuttFile_150),
    sizeof(HeadbuttFile_151),
    sizeof(HeadbuttFile_152),
    sizeof(HeadbuttFile_153),
    sizeof(HeadbuttFile_154),
    sizeof(HeadbuttFile_155),
    sizeof(HeadbuttFile_156),
    sizeof(HeadbuttFile_157),
    sizeof(HeadbuttFile_158),
    sizeof(HeadbuttFile_159),
    sizeof(HeadbuttFile_160),
    sizeof(HeadbuttFile_161),
    sizeof(HeadbuttFile_162),
    sizeof(HeadbuttFile_163),
    sizeof(HeadbuttFile_164),
    sizeof(HeadbuttFile_165),
    sizeof(HeadbuttFile_166),
    sizeof(HeadbuttFile_167),
    sizeof(HeadbuttFile_168),
    sizeof(HeadbuttFile_169),
    sizeof(HeadbuttFile_170),
    sizeof(HeadbuttFile_171),
    sizeof(HeadbuttFile_172),
    sizeof(HeadbuttFile_173),
    sizeof(HeadbuttFile_174),
    sizeof(HeadbuttFile_175),
    sizeof(HeadbuttFile_176),
    sizeof(HeadbuttFile_177),
    sizeof(HeadbuttFile_178),
    sizeof(HeadbuttFile_179),
    sizeof(HeadbuttFile_180),
    sizeof(HeadbuttFile_181),
    sizeof(HeadbuttFile_182),
    sizeof(HeadbuttFile_183),
    sizeof(HeadbuttFile_184),
    sizeof(HeadbuttFile_185),
    sizeof(HeadbuttFile_186),
    sizeof(HeadbuttFile_187),
    sizeof(HeadbuttFile_188),
    sizeof(HeadbuttFile_189),
    sizeof(HeadbuttFile_190),
    sizeof(HeadbuttFile_191),
    sizeof(HeadbuttFile_192),
    sizeof(HeadbuttFile_193),
    sizeof(HeadbuttFile_194),
    sizeof(HeadbuttFile_195),
    sizeof(HeadbuttFile_196),
    sizeof(HeadbuttFile_197),
    sizeof(HeadbuttFile_198),
    sizeof(HeadbuttFile_199),
    sizeof(HeadbuttFile_200),
    sizeof(HeadbuttFile_201),
    sizeof(HeadbuttFile_202),
    sizeof(HeadbuttFile_203),
    sizeof(HeadbuttFile_204),
    sizeof(HeadbuttFile_205),
    sizeof(HeadbuttFile_206),
    sizeof(HeadbuttFile_207),
    sizeof(HeadbuttFile_208),
    sizeof(HeadbuttFile_209),
    sizeof(HeadbuttFile_210),
    sizeof(HeadbuttFile_211),
    sizeof(HeadbuttFile_212),
    sizeof(HeadbuttFile_213),
    sizeof(HeadbuttFile_214),
    sizeof(HeadbuttFile_215),
    sizeof(HeadbuttFile_216),
    sizeof(HeadbuttFile_217),
    sizeof(HeadbuttFile_218),
    sizeof(HeadbuttFile_219),
    sizeof(HeadbuttFile_220),
    sizeof(HeadbuttFile_221),
    sizeof(HeadbuttFile_222),
    sizeof(HeadbuttFile_223),
    sizeof(HeadbuttFile_224),
    sizeof(HeadbuttFile_225),
    sizeof(HeadbuttFile_226),
    sizeof(HeadbuttFile_227),
    sizeof(HeadbuttFile_228),
    sizeof(HeadbuttFile_229),
    sizeof(HeadbuttFile_230),
    sizeof(HeadbuttFile_231),
    sizeof(HeadbuttFile_232),
    sizeof(HeadbuttFile_233),
    sizeof(HeadbuttFile_234),
    sizeof(HeadbuttFile_235),
    sizeof(HeadbuttFile_236),
    sizeof(HeadbuttFile_237),
    sizeof(HeadbuttFile_238),
    sizeof(HeadbuttFile_239),
    sizeof(HeadbuttFile_240),
    sizeof(HeadbuttFile_241),
    sizeof(HeadbuttFile_242),
    sizeof(HeadbuttFile_243),
    sizeof(HeadbuttFile_244),
    sizeof(HeadbuttFile_245),
    sizeof(HeadbuttFile_246),
    sizeof(HeadbuttFile_247),
    sizeof(HeadbuttFile_248),
    sizeof(HeadbuttFile_249),
    sizeof(HeadbuttFile_250),
    sizeof(HeadbuttFile_251),
    sizeof(HeadbuttFile_252),
    sizeof(HeadbuttFile_253),
    sizeof(HeadbuttFile_254),
    sizeof(HeadbuttFile_255),
    sizeof(HeadbuttFile_256),
    sizeof(HeadbuttFile_257),
    sizeof(HeadbuttFile_258),
    sizeof(HeadbuttFile_259),
    sizeof(HeadbuttFile_260),
    sizeof(HeadbuttFile_261),
    sizeof(HeadbuttFile_262),
    sizeof(HeadbuttFile_263),
    sizeof(HeadbuttFile_264),
    sizeof(HeadbuttFile_265),
    sizeof(HeadbuttFile_266),
    sizeof(HeadbuttFile_267),
    sizeof(HeadbuttFile_268),
    sizeof(HeadbuttFile_269),
    sizeof(HeadbuttFile_270),
    sizeof(HeadbuttFile_271),
    sizeof(HeadbuttFile_272),
    sizeof(HeadbuttFile_273),
    sizeof(HeadbuttFile_274),
    sizeof(HeadbuttFile_275),
    sizeof(HeadbuttFile_276),
    sizeof(HeadbuttFile_277),
    sizeof(HeadbuttFile_278),
    sizeof(HeadbuttFile_279),
    sizeof(HeadbuttFile_280),
    sizeof(HeadbuttFile_281),
    sizeof(HeadbuttFile_282),
    sizeof(HeadbuttFile_283),
    sizeof(HeadbuttFile_284),
    sizeof(HeadbuttFile_285),
    sizeof(HeadbuttFile_286),
    sizeof(HeadbuttFile_287),
    sizeof(HeadbuttFile_288),
    sizeof(HeadbuttFile_289),
    sizeof(HeadbuttFile_290),
    sizeof(HeadbuttFile_291),
    sizeof(HeadbuttFile_292),
    sizeof(HeadbuttFile_293),
    sizeof(HeadbuttFile_294),
    sizeof(HeadbuttFile_295),
    sizeof(HeadbuttFile_296),
    sizeof(HeadbuttFile_297),
    sizeof(HeadbuttFile_298),
    sizeof(HeadbuttFile_299),
    sizeof(HeadbuttFile_300),
    sizeof(HeadbuttFile_301),
    sizeof(HeadbuttFile_302),
    sizeof(HeadbuttFile_303),
    sizeof(HeadbuttFile_304),
    sizeof(HeadbuttFile_305),
    sizeof(HeadbuttFile_306),
    sizeof(HeadbuttFile_307),
    sizeof(HeadbuttFile_308),
    sizeof(HeadbuttFile_309),
    sizeof(HeadbuttFile_310),
    sizeof(HeadbuttFile_311),
    sizeof(HeadbuttFile_312),
    sizeof(HeadbuttFile_313),
    sizeof(HeadbuttFile_314),
    sizeof(HeadbuttFile_315),
    sizeof(HeadbuttFile_316),
    sizeof(HeadbuttFile_317),
    sizeof(HeadbuttFile_318),
    sizeof(HeadbuttFile_319),
    sizeof(HeadbuttFile_320),
    sizeof(HeadbuttFile_321),
    sizeof(HeadbuttFile_322),
    sizeof(HeadbuttFile_323),
    sizeof(HeadbuttFile_324),
    sizeof(HeadbuttFile_325),
    sizeof(HeadbuttFile_326),
    sizeof(HeadbuttFile_327),
    sizeof(HeadbuttFile_328),
    sizeof(HeadbuttFile_329),
    sizeof(HeadbuttFile_330),
    sizeof(HeadbuttFile_331),
    sizeof(HeadbuttFile_332),
    sizeof(HeadbuttFile_333),
    sizeof(HeadbuttFile_334),
    sizeof(HeadbuttFile_335),
    sizeof(HeadbuttFile_336),
    sizeof(HeadbuttFile_337),
    sizeof(HeadbuttFile_338),
    sizeof(HeadbuttFile_339),
    sizeof(HeadbuttFile_340),
    sizeof(HeadbuttFile_341),
    sizeof(HeadbuttFile_342),
    sizeof(HeadbuttFile_343),
    sizeof(HeadbuttFile_344),
    sizeof(HeadbuttFile_345),
    sizeof(HeadbuttFile_346),
    sizeof(HeadbuttFile_347),
    sizeof(HeadbuttFile_348),
    sizeof(HeadbuttFile_349),
    sizeof(HeadbuttFile_350),
    sizeof(HeadbuttFile_351),
    sizeof(HeadbuttFile_352),
    sizeof(HeadbuttFile_353),
    sizeof(HeadbuttFile_354),
    sizeof(HeadbuttFile_355),
    sizeof(HeadbuttFile_356),
    sizeof(HeadbuttFile_357),
    sizeof(HeadbuttFile_358),
    sizeof(HeadbuttFile_359),
    sizeof(HeadbuttFile_360),
    sizeof(HeadbuttFile_361),
    sizeof(HeadbuttFile_362),
    sizeof(HeadbuttFile_363),
    sizeof(HeadbuttFile_364),
    sizeof(HeadbuttFile_365),
    sizeof(HeadbuttFile_366),
    sizeof(HeadbuttFile_367),
    sizeof(HeadbuttFile_368),
    sizeof(HeadbuttFile_369),
    sizeof(HeadbuttFile_370),
    sizeof(HeadbuttFile_371),
    sizeof(HeadbuttFile_372),
    sizeof(HeadbuttFile_373),
    sizeof(HeadbuttFile_374),
    sizeof(HeadbuttFile_375),
    sizeof(HeadbuttFile_376),
    sizeof(HeadbuttFile_377),
    sizeof(HeadbuttFile_378),
    sizeof(HeadbuttFile_379),
    sizeof(HeadbuttFile_380),
    sizeof(HeadbuttFile_381),
    sizeof(HeadbuttFile_382),
    sizeof(HeadbuttFile_383),
    sizeof(HeadbuttFile_384),
    sizeof(HeadbuttFile_385),
    sizeof(HeadbuttFile_386),
    sizeof(HeadbuttFile_387),
    sizeof(HeadbuttFile_388),
    sizeof(HeadbuttFile_389),
    sizeof(HeadbuttFile_390),
    sizeof(HeadbuttFile_391),
    sizeof(HeadbuttFile_392),
    sizeof(HeadbuttFile_393),
    sizeof(HeadbuttFile_394),
    sizeof(HeadbuttFile_395),
    sizeof(HeadbuttFile_396),
    sizeof(HeadbuttFile_397),
    sizeof(HeadbuttFile_398),
    sizeof(HeadbuttFile_399),
    sizeof(HeadbuttFile_400),
    sizeof(HeadbuttFile_401),
    sizeof(HeadbuttFile_402),
    sizeof(HeadbuttFile_403),
    sizeof(HeadbuttFile_404),
    sizeof(HeadbuttFile_405),
    sizeof(HeadbuttFile_406),
    sizeof(HeadbuttFile_407),
    sizeof(HeadbuttFile_408),
    sizeof(HeadbuttFile_409),
    sizeof(HeadbuttFile_410),
    sizeof(HeadbuttFile_411),
    sizeof(HeadbuttFile_412),
    sizeof(HeadbuttFile_413),
    sizeof(HeadbuttFile_414),
    sizeof(HeadbuttFile_415),
    sizeof(HeadbuttFile_416),
    sizeof(HeadbuttFile_417),
    sizeof(HeadbuttFile_418),
    sizeof(HeadbuttFile_419),
    sizeof(HeadbuttFile_420),
    sizeof(HeadbuttFile_421),
    sizeof(HeadbuttFile_422),
    sizeof(HeadbuttFile_423),
    sizeof(HeadbuttFile_424),
    sizeof(HeadbuttFile_425),
    sizeof(HeadbuttFile_426),
    sizeof(HeadbuttFile_427),
    sizeof(HeadbuttFile_428),
    sizeof(HeadbuttFile_429),
    sizeof(HeadbuttFile_430),
    sizeof(HeadbuttFile_431),
    sizeof(HeadbuttFile_432),
    sizeof(HeadbuttFile_433),
    sizeof(HeadbuttFile_434),
    sizeof(HeadbuttFile_435),
    sizeof(HeadbuttFile_436),
    sizeof(HeadbuttFile_437),
    sizeof(HeadbuttFile_438),
    sizeof(HeadbuttFile_439),
    sizeof(HeadbuttFile_440),
    sizeof(HeadbuttFile_441),
    sizeof(HeadbuttFile_442),
    sizeof(HeadbuttFile_443),
    sizeof(HeadbuttFile_444),
    sizeof(HeadbuttFile_445),
    sizeof(HeadbuttFile_446),
    sizeof(HeadbuttFile_447),
    sizeof(HeadbuttFile_448),
    sizeof(HeadbuttFile_449),
    sizeof(HeadbuttFile_450),
    sizeof(HeadbuttFile_451),
    sizeof(HeadbuttFile_452),
    sizeof(HeadbuttFile_453),
    sizeof(HeadbuttFile_454),
    sizeof(HeadbuttFile_455),
    sizeof(HeadbuttFile_456),
    sizeof(HeadbuttFile_457),
    sizeof(HeadbuttFile_458),
    sizeof(HeadbuttFile_459),
    sizeof(HeadbuttFile_460),
    sizeof(HeadbuttFile_461),
    sizeof(HeadbuttFile_462),
    sizeof(HeadbuttFile_463),
    sizeof(HeadbuttFile_464),
    sizeof(HeadbuttFile_465),
    sizeof(HeadbuttFile_466),
    sizeof(HeadbuttFile_467),
    sizeof(HeadbuttFile_468),
    sizeof(HeadbuttFile_469),
    sizeof(HeadbuttFile_470),
    sizeof(HeadbuttFile_471),
    sizeof(HeadbuttFile_472),
    sizeof(HeadbuttFile_473),
    sizeof(HeadbuttFile_474),
    sizeof(HeadbuttFile_475),
    sizeof(HeadbuttFile_476),
    sizeof(HeadbuttFile_477),
    sizeof(HeadbuttFile_478),
    sizeof(HeadbuttFile_479),
    sizeof(HeadbuttFile_480),
    sizeof(HeadbuttFile_481),
    sizeof(HeadbuttFile_482),
    sizeof(HeadbuttFile_483),
    sizeof(HeadbuttFile_484),
    sizeof(HeadbuttFile_485),
    sizeof(HeadbuttFile_486),
    sizeof(HeadbuttFile_487),
    sizeof(HeadbuttFile_488),
    sizeof(HeadbuttFile_489),
    sizeof(HeadbuttFile_490),
    sizeof(HeadbuttFile_491),
    sizeof(HeadbuttFile_492),
    sizeof(HeadbuttFile_493),
    sizeof(HeadbuttFile_494),
    sizeof(HeadbuttFile_495),
    sizeof(HeadbuttFile_496),
    sizeof(HeadbuttFile_497),
    sizeof(HeadbuttFile_498),
    sizeof(HeadbuttFile_499),
    sizeof(HeadbuttFile_500),
    sizeof(HeadbuttFile_501),
    sizeof(HeadbuttFile_502),
    sizeof(HeadbuttFile_503),
    sizeof(HeadbuttFile_504),
    sizeof(HeadbuttFile_505),
    sizeof(HeadbuttFile_506),
    sizeof(HeadbuttFile_507),
    sizeof(HeadbuttFile_508),
    sizeof(HeadbuttFile_509),
    sizeof(HeadbuttFile_510),
    sizeof(HeadbuttFile_511),
    sizeof(HeadbuttFile_512),
    sizeof(HeadbuttFile_513),
    sizeof(HeadbuttFile_514),
    sizeof(HeadbuttFile_515),
    sizeof(HeadbuttFile_516),
    sizeof(HeadbuttFile_517),
    sizeof(HeadbuttFile_518),
    sizeof(HeadbuttFile_519),
    sizeof(HeadbuttFile_520),
    sizeof(HeadbuttFile_521),
    sizeof(HeadbuttFile_522),
    sizeof(HeadbuttFile_523),
    sizeof(HeadbuttFile_524),
    sizeof(HeadbuttFile_525),
    sizeof(HeadbuttFile_526),
    sizeof(HeadbuttFile_527),
    sizeof(HeadbuttFile_528),
    sizeof(HeadbuttFile_529),
    sizeof(HeadbuttFile_530),
    sizeof(HeadbuttFile_531),
    sizeof(HeadbuttFile_532),
    sizeof(HeadbuttFile_533),
    sizeof(HeadbuttFile_534),
    sizeof(HeadbuttFile_535),
    sizeof(HeadbuttFile_536),
    sizeof(HeadbuttFile_537),
    sizeof(HeadbuttFile_538),
    sizeof(HeadbuttFile_539),
};

const HeadbuttArchiveData __data =
{
    .000 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .001 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .002 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .003 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .004 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .005 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .006 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .007 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .008 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .009 = {
        .normalTreeCount = 20,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 2, 3 },
            { SPECIES_PINECO, 2, 3 },
            { SPECIES_PINECO, 2, 3 },
            { SPECIES_WURMPLE, 2, 3 },
            { SPECIES_WURMPLE, 2, 3 },
            { SPECIES_WURMPLE, 2, 3 },
            { SPECIES_HOOTHOOT, 5, 6 },
            { SPECIES_SPINARAK, 5, 6 },
            { SPECIES_SPINARAK, 5, 6 },
            { SPECIES_WURMPLE, 5, 6 },
            { SPECIES_WURMPLE, 5, 6 },
            { SPECIES_WURMPLE, 5, 6 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1033, 300 }, { 1033, 301 }, { 1034, 300 }, { 1034, 301 }, { -1, -1 }, { -1, -1 } },
            { { 1034, 307 }, { 1034, 308 }, { 1035, 308 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1037, 306 }, { 1037, 305 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1028, 312 }, { 1028, 311 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1040, 314 }, { 1041, 314 }, { 1040, 312 }, { 1041, 312 }, { -1, -1 }, { -1, -1 } },
            { { 1048, 291 }, { 1049, 291 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1050, 302 }, { 1050, 303 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1049, 315 }, { 1049, 316 }, { 1050, 316 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1046, 345 }, { 1047, 345 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1027, 340 }, { 1027, 341 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1036, 335 }, { 1037, 334 }, { 1037, 335 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1028, 327 }, { 1029, 327 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1030, 345 }, { 1031, 345 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1052, 330 }, { 1052, 331 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1052, 339 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1027, 322 }, { 1027, 323 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1049, 305 }, { 1049, 306 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1040, 329 }, { 1041, 329 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1037, 349 }, { 1037, 348 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1029, 292 }, { 1029, 293 }, { 1028, 293 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .010 = {
        .normalTreeCount = 15,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 3, 4 },
            { SPECIES_PINECO, 3, 4 },
            { SPECIES_PINECO, 3, 4 },
            { SPECIES_WURMPLE, 3, 4 },
            { SPECIES_WURMPLE, 3, 4 },
            { SPECIES_WURMPLE, 3, 4 },
            { SPECIES_HOOTHOOT, 5, 7 },
            { SPECIES_SPINARAK, 5, 7 },
            { SPECIES_SPINARAK, 5, 7 },
            { SPECIES_WURMPLE, 5, 7 },
            { SPECIES_WURMPLE, 5, 7 },
            { SPECIES_WURMPLE, 5, 7 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1044, 197 }, { 1045, 197 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1027, 194 }, { 1027, 195 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1032, 203 }, { 1032, 202 }, { 1032, 201 }, { 1033, 201 }, { 1033, 203 }, { -1, -1 } },
            { { 1028, 207 }, { 1029, 207 }, { 1028, 209 }, { 1029, 209 }, { -1, -1 }, { -1, -1 } },
            { { 1032, 207 }, { 1033, 207 }, { 1032, 209 }, { 1033, 209 }, { -1, -1 }, { -1, -1 } },
            { { 1034, 221 }, { 1035, 221 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1040, 221 }, { 1041, 221 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1042, 211 }, { 1042, 212 }, { 1042, 213 }, { 1043, 211 }, { 1043, 212 }, { 1043, 213 } },
            { { 1052, 221 }, { 1053, 221 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1054, 210 }, { 1054, 211 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1054, 196 }, { 1054, 197 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1047, 194 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1043, 204 }, { 1043, 205 }, { 1042, 204 }, { 1042, 205 }, { -1, -1 }, { -1, -1 } },
            { { 1027, 200 }, { 1027, 201 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1042, 195 }, { 1042, 194 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .011 = {
        .normalTreeCount = 4,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 6, 7 },
            { SPECIES_PINECO, 6, 7 },
            { SPECIES_PINECO, 6, 7 },
            { SPECIES_WURMPLE, 6, 7 },
            { SPECIES_WURMPLE, 6, 7 },
            { SPECIES_WURMPLE, 6, 7 },
            { SPECIES_HOOTHOOT, 9, 10 },
            { SPECIES_HOOTHOOT, 9, 10 },
            { SPECIES_HOOTHOOT, 9, 10 },
            { SPECIES_WURMPLE, 9, 10 },
            { SPECIES_WURMPLE, 9, 10 },
            { SPECIES_WURMPLE, 9, 10 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1096, 98 }, { 1096, 99 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1105, 104 }, { 1105, 103 }, { 1104, 104 }, { 1104, 103 }, { -1, -1 }, { -1, -1 } },
            { { 1121, 117 }, { 1122, 117 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1113, 110 }, { 1113, 109 }, { 1114, 109 }, { 1114, 110 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .012 = {
        .normalTreeCount = 9,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 6, 7 },
            { SPECIES_PINECO, 6, 7 },
            { SPECIES_PINECO, 6, 7 },
            { SPECIES_WURMPLE, 6, 7 },
            { SPECIES_WURMPLE, 6, 7 },
            { SPECIES_WURMPLE, 6, 7 },
            { SPECIES_HOOTHOOT, 9, 10 },
            { SPECIES_HOOTHOOT, 9, 10 },
            { SPECIES_HOOTHOOT, 9, 10 },
            { SPECIES_WURMPLE, 9, 10 },
            { SPECIES_WURMPLE, 9, 10 },
            { SPECIES_WURMPLE, 9, 10 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1234, 115 }, { 1234, 114 }, { 1235, 115 }, { 1235, 114 }, { -1, -1 }, { -1, -1 } },
            { { 1244, 120 }, { 1245, 120 }, { 1245, 121 }, { 1245, 122 }, { 1244, 122 }, { -1, -1 } },
            { { 1264, 112 }, { 1265, 112 }, { 1264, 114 }, { 1265, 114 }, { -1, -1 }, { -1, -1 } },
            { { 1270, 110 }, { 1271, 110 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1266, 124 }, { 1267, 124 }, { 1267, 123 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1264, 120 }, { 1264, 119 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1255, 126 }, { 1255, 125 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1242, 124 }, { 1243, 124 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1256, 112 }, { 1257, 112 }, { 1256, 113 }, { 1256, 114 }, { 1257, 114 }, { -1, -1 } },
        },
    },

    .013 = {
        .normalTreeCount = 4,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 11, 13 },
            { SPECIES_PINECO, 11, 13 },
            { SPECIES_PINECO, 11, 13 },
            { SPECIES_COMBEE, 11, 13 },
            { SPECIES_COMBEE, 11, 13 },
            { SPECIES_COMBEE, 11, 13 },
            { SPECIES_HOOTHOOT, 14, 16 },
            { SPECIES_HOOTHOOT, 14, 16 },
            { SPECIES_HOOTHOOT, 14, 16 },
            { SPECIES_COMBEE, 14, 16 },
            { SPECIES_COMBEE, 14, 16 },
            { SPECIES_COMBEE, 14, 16 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1310, 185 }, { 1310, 184 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1296, 164 }, { 1296, 163 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1303, 161 }, { 1303, 162 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1304, 189 }, { 1305, 189 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .014 = {
        .normalTreeCount = 6,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 11, 13 },
            { SPECIES_PINECO, 11, 13 },
            { SPECIES_PINECO, 11, 13 },
            { SPECIES_COMBEE, 11, 13 },
            { SPECIES_COMBEE, 11, 13 },
            { SPECIES_COMBEE, 11, 13 },
            { SPECIES_HOOTHOOT, 14, 16 },
            { SPECIES_HOOTHOOT, 14, 16 },
            { SPECIES_HOOTHOOT, 14, 16 },
            { SPECIES_COMBEE, 14, 16 },
            { SPECIES_COMBEE, 14, 16 },
            { SPECIES_COMBEE, 14, 16 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1308, 285 }, { 1308, 284 }, { 1308, 283 }, { 1309, 283 }, { -1, -1 }, { -1, -1 } },
            { { 1288, 283 }, { 1289, 283 }, { 1289, 284 }, { 1289, 285 }, { -1, -1 }, { -1, -1 } },
            { { 1287, 272 }, { 1287, 273 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1308, 259 }, { 1309, 259 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1294, 259 }, { 1295, 259 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1285, 260 }, { 1285, 261 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .015 = {
        .normalTreeCount = 8,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_SPEAROW, 15, 17 },
            { SPECIES_HERACROSS, 15, 17 },
            { SPECIES_HERACROSS, 15, 17 },
            { SPECIES_COMBEE, 15, 17 },
            { SPECIES_COMBEE, 15, 17 },
            { SPECIES_COMBEE, 15, 17 },
            { SPECIES_SPEAROW, 18, 20 },
            { SPECIES_SPEAROW, 18, 20 },
            { SPECIES_SPEAROW, 18, 20 },
            { SPECIES_COMBEE, 18, 20 },
            { SPECIES_COMBEE, 18, 20 },
            { SPECIES_COMBEE, 18, 20 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1272, 237 }, { 1273, 237 }, { 1272, 236 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1262, 228 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1257, 233 }, { 1258, 233 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1253, 237 }, { 1254, 237 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1259, 250 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1266, 251 }, { 1267, 251 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1272, 249 }, { 1272, 248 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1250, 243 }, { 1251, 243 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .016 = {
        .normalTreeCount = 5,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 16, 17 },
            { SPECIES_PINECO, 16, 17 },
            { SPECIES_PINECO, 16, 17 },
            { SPECIES_COMBEE, 16, 17 },
            { SPECIES_COMBEE, 16, 17 },
            { SPECIES_COMBEE, 16, 17 },
            { SPECIES_HOOTHOOT, 18, 19 },
            { SPECIES_HOOTHOOT, 18, 19 },
            { SPECIES_HOOTHOOT, 18, 19 },
            { SPECIES_COMBEE, 18, 19 },
            { SPECIES_COMBEE, 18, 19 },
            { SPECIES_COMBEE, 18, 19 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1376, 231 }, { 1376, 232 }, { 1377, 232 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1401, 234 }, { 1401, 233 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1397, 242 }, { 1397, 241 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1393, 233 }, { 1392, 233 }, { 1392, 234 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1392, 244 }, { 1392, 243 }, { 1393, 244 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .017 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .018 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .019 = {
        .normalTreeCount = 11,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_SPEAROW, 13, 14 },
            { SPECIES_HERACROSS, 13, 14 },
            { SPECIES_HERACROSS, 13, 14 },
            { SPECIES_COMBEE, 13, 14 },
            { SPECIES_COMBEE, 13, 14 },
            { SPECIES_COMBEE, 13, 14 },
            { SPECIES_SPEAROW, 15, 16 },
            { SPECIES_SPEAROW, 15, 16 },
            { SPECIES_SPEAROW, 15, 16 },
            { SPECIES_COMBEE, 15, 16 },
            { SPECIES_COMBEE, 15, 16 },
            { SPECIES_COMBEE, 15, 16 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1392, 291 }, { 1393, 291 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1378, 291 }, { 1379, 291 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1380, 291 }, { 1381, 291 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1382, 291 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1364, 291 }, { 1365, 291 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1370, 311 }, { 1371, 311 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1372, 311 }, { 1373, 311 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1374, 311 }, { 1375, 311 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1376, 311 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1379, 311 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1382, 311 }, { 1383, 311 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .020 = {
        .normalTreeCount = 10,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 22, 23 },
            { SPECIES_SPINARAK, 22, 23 },
            { SPECIES_SPINARAK, 22, 23 },
            { SPECIES_WURMPLE, 22, 23 },
            { SPECIES_WURMPLE, 22, 23 },
            { SPECIES_WURMPLE, 22, 23 },
            { SPECIES_HOOTHOOT, 24, 25 },
            { SPECIES_TANGELA, 24, 25 },
            { SPECIES_HOOTHOOT, 24, 25 },
            { SPECIES_WURMPLE, 24, 25 },
            { SPECIES_WURMPLE, 24, 25 },
            { SPECIES_WURMPLE, 24, 25 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1417, 281 }, { 1417, 280 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1417, 299 }, { 1417, 298 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1409, 334 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1409, 348 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1414, 337 }, { 1415, 337 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1414, 347 }, { 1415, 347 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1417, 311 }, { 1417, 310 }, { 1417, 309 }, { 1416, 309 }, { -1, -1 }, { -1, -1 } },
            { { 1417, 325 }, { 1417, 324 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1417, 327 }, { 1417, 326 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1417, 287 }, { 1417, 286 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .021 = {
        .normalTreeCount = 15,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 22, 23 },
            { SPECIES_SPINARAK, 22, 23 },
            { SPECIES_SPINARAK, 22, 23 },
            { SPECIES_WURMPLE, 22, 23 },
            { SPECIES_WURMPLE, 22, 23 },
            { SPECIES_WURMPLE, 22, 23 },
            { SPECIES_HOOTHOOT, 24, 25 },
            { SPECIES_TANGELA, 24, 25 },
            { SPECIES_HOOTHOOT, 24, 25 },
            { SPECIES_WURMPLE, 24, 25 },
            { SPECIES_WURMPLE, 24, 25 },
            { SPECIES_WURMPLE, 24, 25 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1346, 367 }, { 1347, 367 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1384, 367 }, { 1385, 367 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1366, 367 }, { 1367, 367 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1353, 381 }, { 1353, 380 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1365, 376 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1372, 376 }, { 1373, 376 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1387, 376 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1402, 367 }, { 1403, 367 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1429, 366 }, { 1428, 367 }, { 1428, 366 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1429, 360 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1414, 367 }, { 1415, 367 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1414, 373 }, { 1415, 373 }, { 1414, 372 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1420, 363 }, { 1421, 363 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1428, 373 }, { 1429, 373 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1376, 367 }, { 1377, 367 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .022 = {
        .normalTreeCount = 3,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 26, 27 },
            { SPECIES_SPINARAK, 26, 27 },
            { SPECIES_SPINARAK, 26, 27 },
            { SPECIES_WURMPLE, 26, 27 },
            { SPECIES_WURMPLE, 26, 27 },
            { SPECIES_WURMPLE, 26, 27 },
            { SPECIES_HOOTHOOT, 29, 30 },
            { SPECIES_TANGELA, 29, 30 },
            { SPECIES_HOOTHOOT, 29, 30 },
            { SPECIES_WURMPLE, 29, 30 },
            { SPECIES_WURMPLE, 29, 30 },
            { SPECIES_WURMPLE, 29, 30 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1353, 424 }, { 1353, 425 }, { 1353, 426 }, { 1352, 424 }, { -1, -1 }, { -1, -1 } },
            { { 1352, 406 }, { 1353, 406 }, { 1353, 405 }, { 1353, 404 }, { 1352, 404 }, { -1, -1 } },
            { { 1352, 388 }, { 1353, 388 }, { 1353, 389 }, { 1353, 390 }, { 1352, 390 }, { -1, -1 } },
        },
    },

    .023 = {
        .normalTreeCount = 19,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 21, 23 },
            { SPECIES_SPINARAK, 21, 23 },
            { SPECIES_SPINARAK, 21, 23 },
            { SPECIES_WURMPLE, 21, 23 },
            { SPECIES_WURMPLE, 21, 23 },
            { SPECIES_WURMPLE, 21, 23 },
            { SPECIES_HOOTHOOT, 24, 26 },
            { SPECIES_TANGELA, 24, 26 },
            { SPECIES_HOOTHOOT, 24, 26 },
            { SPECIES_WURMPLE, 24, 26 },
            { SPECIES_WURMPLE, 24, 26 },
            { SPECIES_WURMPLE, 24, 26 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1248, 419 }, { 1249, 419 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1262, 419 }, { 1263, 419 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1274, 426 }, { 1275, 426 }, { 1274, 427 }, { 1274, 428 }, { -1, -1 }, { -1, -1 } },
            { { 1280, 430 }, { 1281, 430 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1282, 419 }, { 1283, 419 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1296, 426 }, { 1297, 426 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1300, 419 }, { 1301, 419 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1316, 419 }, { 1317, 419 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1316, 426 }, { 1317, 426 }, { 1316, 427 }, { 1316, 428 }, { 1317, 428 }, { 1317, 427 } },
            { { 1329, 429 }, { 1329, 428 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1328, 419 }, { 1329, 419 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1338, 419 }, { 1339, 419 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1342, 425 }, { 1342, 424 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1309, 426 }, { 1310, 426 }, { 1309, 428 }, { 1310, 428 }, { -1, -1 }, { -1, -1 } },
            { { 1338, 429 }, { 1339, 429 }, { 1339, 428 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1286, 426 }, { 1287, 426 }, { 1287, 428 }, { 1287, 427 }, { -1, -1 }, { -1, -1 } },
            { { 1272, 419 }, { 1273, 419 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1252, 425 }, { 1253, 425 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1290, 419 }, { 1291, 419 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .024 = {
        .normalTreeCount = 2,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_SPEAROW, 26, 27 },
            { SPECIES_HERACROSS, 26, 27 },
            { SPECIES_HERACROSS, 26, 27 },
            { SPECIES_COMBEE, 26, 27 },
            { SPECIES_COMBEE, 26, 27 },
            { SPECIES_COMBEE, 26, 27 },
            { SPECIES_SPEAROW, 29, 30 },
            { SPECIES_SPEAROW, 29, 30 },
            { SPECIES_SPEAROW, 29, 30 },
            { SPECIES_COMBEE, 29, 30 },
            { SPECIES_COMBEE, 29, 30 },
            { SPECIES_COMBEE, 29, 30 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1141, 283 }, { 1142, 283 }, { 1141, 284 }, { 1141, 285 }, { -1, -1 }, { -1, -1 } },
            { { 1149, 279 }, { 1150, 279 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .025 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .026 = {
        .normalTreeCount = 3,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 26, 27 },
            { SPECIES_SPINARAK, 26, 27 },
            { SPECIES_SPINARAK, 26, 27 },
            { SPECIES_WURMPLE, 26, 27 },
            { SPECIES_WURMPLE, 26, 27 },
            { SPECIES_WURMPLE, 26, 27 },
            { SPECIES_HOOTHOOT, 29, 30 },
            { SPECIES_TANGELA, 29, 30 },
            { SPECIES_HOOTHOOT, 29, 30 },
            { SPECIES_WURMPLE, 29, 30 },
            { SPECIES_WURMPLE, 29, 30 },
            { SPECIES_WURMPLE, 29, 30 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1170, 435 }, { 1170, 434 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1178, 429 }, { 1179, 429 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1172, 429 }, { 1173, 429 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .027 = {
        .normalTreeCount = 7,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 3, 4 },
            { SPECIES_PINECO, 3, 4 },
            { SPECIES_PINECO, 3, 4 },
            { SPECIES_WURMPLE, 3, 4 },
            { SPECIES_WURMPLE, 3, 4 },
            { SPECIES_WURMPLE, 3, 4 },
            { SPECIES_HOOTHOOT, 5, 7 },
            { SPECIES_SPINARAK, 5, 7 },
            { SPECIES_SPINARAK, 5, 7 },
            { SPECIES_WURMPLE, 5, 7 },
            { SPECIES_WURMPLE, 5, 7 },
            { SPECIES_WURMPLE, 5, 7 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 986, 269 }, { 986, 270 }, { 985, 269 }, { 985, 270 }, { -1, -1 }, { -1, -1 } },
            { { 986, 278 }, { 986, 277 }, { 985, 278 }, { 985, 277 }, { -1, -1 }, { -1, -1 } },
            { { 975, 269 }, { 976, 269 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 978, 279 }, { 978, 278 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 973, 272 }, { 973, 273 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 973, 281 }, { 973, 280 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 978, 273 }, { 978, 272 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .028 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .029 = {
        .normalTreeCount = 11,
        .specialTreeCount = 4,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 10, 11 },
            { SPECIES_PINECO, 10, 11 },
            { SPECIES_PINECO, 10, 11 },
            { SPECIES_COMBEE, 10, 11 },
            { SPECIES_COMBEE, 10, 11 },
            { SPECIES_COMBEE, 10, 11 },
            { SPECIES_HOOTHOOT, 13, 14 },
            { SPECIES_HOOTHOOT, 13, 14 },
            { SPECIES_HOOTHOOT, 13, 14 },
            { SPECIES_COMBEE, 13, 14 },
            { SPECIES_COMBEE, 13, 14 },
            { SPECIES_COMBEE, 13, 14 },
        },
        .specialSlots =
        {
            { SPECIES_COMBEE, 10, 14 },
            { SPECIES_COMBEE, 10, 14 },
            { SPECIES_SLAKOTH, 10, 14 },
            { SPECIES_SLAKOTH, 10, 14 },
            { SPECIES_SLAKOTH, 10, 14 },
            { SPECIES_SLAKOTH, 15, 18 },
        },
        .treeCoords =
        {
            { { 1388, 47 }, { 1388, 48 }, { 1388, 49 }, { 1387, 47 }, { -1, -1 }, { -1, -1 } },
            { { 1385, 43 }, { 1386, 43 }, { 1385, 42 }, { 1385, 41 }, { 1386, 41 }, { -1, -1 } },
            { { 1371, 37 }, { 1372, 37 }, { 1371, 36 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1368, 43 }, { 1369, 43 }, { 1368, 41 }, { 1369, 41 }, { 1369, 42 }, { 1368, 42 } },
            { { 1353, 45 }, { 1354, 45 }, { 1354, 44 }, { 1353, 43 }, { 1354, 43 }, { -1, -1 } },
            { { 1363, 45 }, { 1364, 45 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1370, 47 }, { 1370, 46 }, { 1371, 47 }, { 1371, 46 }, { -1, -1 }, { -1, -1 } },
            { { 1371, 41 }, { 1372, 41 }, { 1371, 40 }, { 1371, 39 }, { 1372, 39 }, { -1, -1 } },
            { { 1358, 49 }, { 1358, 48 }, { 1359, 49 }, { 1359, 48 }, { -1, -1 }, { -1, -1 } },
            { { 1377, 41 }, { 1377, 40 }, { 1378, 41 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1379, 47 }, { 1379, 48 }, { 1379, 49 }, { 1380, 47 }, { -1, -1 }, { -1, -1 } },
            { { 1315, 41 }, { 1316, 41 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1317, 41 }, { 1318, 41 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1319, 41 }, { 1320, 41 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1321, 41 }, { 1322, 41 }, { 1322, 40 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .030 = {
        .normalTreeCount = 17,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 28, 29 },
            { SPECIES_PINECO, 28, 29 },
            { SPECIES_PINECO, 28, 29 },
            { SPECIES_EXEGGCUTE, 28, 29 },
            { SPECIES_EXEGGCUTE, 28, 29 },
            { SPECIES_EXEGGCUTE, 28, 29 },
            { SPECIES_HOOTHOOT, 31, 32 },
            { SPECIES_SPINARAK, 31, 32 },
            { SPECIES_SPINARAK, 31, 32 },
            { SPECIES_EXEGGCUTE, 31, 32 },
            { SPECIES_EXEGGCUTE, 31, 32 },
            { SPECIES_EXEGGCUTE, 31, 32 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 926, 347 }, { 926, 346 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 926, 357 }, { 926, 356 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 926, 364 }, { 926, 365 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 921, 362 }, { 921, 361 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 924, 321 }, { 924, 320 }, { 924, 319 }, { 925, 319 }, { -1, -1 }, { -1, -1 } },
            { { 905, 390 }, { 906, 390 }, { 906, 389 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 922, 387 }, { 923, 387 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 920, 381 }, { 920, 380 }, { 919, 380 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 913, 383 }, { 914, 383 }, { 913, 381 }, { 914, 381 }, { -1, -1 }, { -1, -1 } },
            { { 918, 372 }, { 919, 372 }, { 919, 371 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 912, 374 }, { 913, 374 }, { 913, 373 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 918, 354 }, { 919, 354 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 912, 354 }, { 913, 354 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 914, 362 }, { 914, 361 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 919, 326 }, { 920, 326 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 917, 333 }, { 918, 333 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 925, 333 }, { 926, 333 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .031 = {
        .normalTreeCount = 17,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 28, 29 },
            { SPECIES_PINECO, 28, 29 },
            { SPECIES_PINECO, 28, 29 },
            { SPECIES_EXEGGCUTE, 28, 29 },
            { SPECIES_EXEGGCUTE, 28, 29 },
            { SPECIES_EXEGGCUTE, 28, 29 },
            { SPECIES_HOOTHOOT, 31, 32 },
            { SPECIES_SPINARAK, 31, 32 },
            { SPECIES_SPINARAK, 31, 32 },
            { SPECIES_EXEGGCUTE, 31, 32 },
            { SPECIES_EXEGGCUTE, 31, 32 },
            { SPECIES_EXEGGCUTE, 31, 32 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 788, 394 }, { 789, 394 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 782, 392 }, { 782, 391 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 782, 398 }, { 783, 398 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 765, 402 }, { 765, 401 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 756, 402 }, { 756, 401 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 748, 406 }, { 749, 406 }, { 748, 408 }, { 749, 408 }, { -1, -1 }, { -1, -1 } },
            { { 744, 400 }, { 745, 400 }, { 744, 399 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 736, 407 }, { 737, 407 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 708, 403 }, { 709, 403 }, { 709, 404 }, { 709, 405 }, { -1, -1 }, { -1, -1 } },
            { { 775, 397 }, { 775, 396 }, { 774, 397 }, { 774, 396 }, { -1, -1 }, { -1, -1 } },
            { { 790, 404 }, { 791, 404 }, { 790, 406 }, { 791, 406 }, { -1, -1 }, { -1, -1 } },
            { { 784, 410 }, { 784, 409 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 760, 408 }, { 761, 408 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 720, 391 }, { 721, 391 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 720, 409 }, { 720, 408 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 729, 404 }, { 729, 403 }, { 728, 403 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 754, 408 }, { 755, 408 }, { 754, 406 }, { 755, 406 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .032 = {
        .normalTreeCount = 15,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HERACROSS, 39, 40 },
            { SPECIES_AIPOM, 39, 40 },
            { SPECIES_AIPOM, 39, 40 },
            { SPECIES_NATU, 39, 40 },
            { SPECIES_NATU, 39, 40 },
            { SPECIES_NATU, 39, 40 },
            { SPECIES_HERACROSS, 41, 43 },
            { SPECIES_AIPOM, 41, 43 },
            { SPECIES_AIPOM, 41, 43 },
            { SPECIES_NATU, 41, 43 },
            { SPECIES_NATU, 41, 43 },
            { SPECIES_NATU, 41, 43 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 834, 264 }, { 834, 265 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 839, 265 }, { 839, 264 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 843, 277 }, { 844, 277 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 886, 276 }, { 886, 275 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 882, 264 }, { 883, 264 }, { 883, 263 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 876, 270 }, { 877, 270 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 875, 262 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 865, 261 }, { 866, 261 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 857, 273 }, { 857, 274 }, { 856, 274 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 866, 278 }, { 866, 277 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 862, 280 }, { 863, 282 }, { 863, 281 }, { 863, 280 }, { -1, -1 }, { -1, -1 } },
            { { 851, 281 }, { 852, 281 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 843, 270 }, { 843, 269 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 833, 275 }, { 834, 275 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 848, 272 }, { 849, 272 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .033 = {
        .normalTreeCount = 35,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 5, 6 },
            { SPECIES_HOOTHOOT, 5, 6 },
            { SPECIES_HOOTHOOT, 5, 6 },
            { SPECIES_HOOTHOOT, 5, 6 },
            { SPECIES_AIPOM, 5, 6 },
            { SPECIES_AIPOM, 5, 6 },
            { SPECIES_HOOTHOOT, 5, 6 },
            { SPECIES_HOOTHOOT, 5, 6 },
            { SPECIES_LEDYBA, 5, 6 },
            { SPECIES_SPINARAK, 5, 6 },
            { SPECIES_HOOTHOOT, 5, 6 },
            { SPECIES_HOOTHOOT, 5, 6 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 588, 396 }, { 588, 397 }, { 589, 397 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 612, 395 }, { 612, 396 }, { 613, 395 }, { 613, 396 }, { -1, -1 }, { -1, -1 } },
            { { 616, 393 }, { 617, 393 }, { 616, 392 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 630, 395 }, { 631, 395 }, { 630, 394 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 648, 397 }, { 649, 397 }, { 648, 396 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 640, 397 }, { 640, 396 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 652, 411 }, { 653, 411 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 640, 410 }, { 641, 410 }, { 641, 409 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 605, 406 }, { 605, 405 }, { 604, 405 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 580, 393 }, { 581, 393 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 580, 403 }, { 581, 403 }, { 581, 405 }, { 581, 404 }, { -1, -1 }, { -1, -1 } },
            { { 588, 407 }, { 589, 407 }, { 588, 408 }, { 588, 409 }, { -1, -1 }, { -1, -1 } },
            { { 594, 389 }, { 595, 389 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 604, 389 }, { 605, 389 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 606, 399 }, { 607, 399 }, { 606, 400 }, { 606, 401 }, { 607, 401 }, { -1, -1 } },
            { { 658, 386 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 617, 407 }, { 618, 407 }, { 618, 406 }, { 618, 405 }, { 617, 405 }, { -1, -1 } },
            { { 622, 403 }, { 623, 403 }, { 623, 402 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 618, 413 }, { 619, 413 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 628, 413 }, { 629, 413 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 638, 413 }, { 639, 413 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 638, 389 }, { 639, 389 }, { 639, 388 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 640, 401 }, { 641, 401 }, { 640, 400 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 584, 413 }, { 585, 413 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 582, 393 }, { 583, 393 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 668, 395 }, { 669, 395 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 664, 407 }, { 665, 407 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 654, 397 }, { 655, 397 }, { 655, 396 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 658, 395 }, { 659, 395 }, { 659, 394 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 632, 401 }, { 633, 401 }, { 632, 399 }, { 633, 399 }, { -1, -1 }, { -1, -1 } },
            { { 596, 405 }, { 597, 405 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 606, 411 }, { 607, 411 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 622, 389 }, { 623, 389 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 658, 407 }, { 659, 407 }, { 658, 408 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 646, 385 }, { 647, 385 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .034 = {
        .normalTreeCount = 30,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 6, 7 },
            { SPECIES_HOOTHOOT, 6, 7 },
            { SPECIES_HOOTHOOT, 6, 7 },
            { SPECIES_HOOTHOOT, 6, 7 },
            { SPECIES_PINECO, 6, 7 },
            { SPECIES_PINECO, 6, 7 },
            { SPECIES_LEDYBA, 6, 7 },
            { SPECIES_LEDYBA, 6, 7 },
            { SPECIES_SPINARAK, 6, 7 },
            { SPECIES_SPINARAK, 6, 7 },
            { SPECIES_LEDYBA, 6, 7 },
            { SPECIES_SPINARAK, 6, 7 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 546, 297 }, { 547, 297 }, { 547, 296 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 571, 302 }, { 572, 302 }, { 571, 301 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 559, 294 }, { 560, 294 }, { 560, 293 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 557, 310 }, { 558, 310 }, { 558, 309 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 554, 305 }, { 554, 304 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 566, 375 }, { 566, 374 }, { 567, 375 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 560, 377 }, { 561, 377 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 566, 363 }, { 567, 363 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 546, 367 }, { 546, 366 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 558, 352 }, { 558, 351 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 565, 345 }, { 565, 344 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 546, 347 }, { 546, 346 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 559, 328 }, { 560, 328 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 569, 321 }, { 570, 321 }, { 569, 322 }, { 569, 323 }, { -1, -1 }, { -1, -1 } },
            { { 547, 321 }, { 547, 320 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 561, 318 }, { 561, 317 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 551, 346 }, { 551, 345 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 568, 356 }, { 568, 357 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 568, 354 }, { 568, 355 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 574, 378 }, { 574, 379 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 566, 312 }, { 566, 311 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 565, 382 }, { 565, 383 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 551, 352 }, { 551, 351 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 546, 311 }, { 547, 311 }, { 547, 312 }, { 547, 313 }, { -1, -1 }, { -1, -1 } },
            { { 554, 377 }, { 555, 377 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 561, 298 }, { 561, 297 }, { 561, 296 }, { 560, 297 }, { 560, 296 }, { -1, -1 } },
            { { 549, 291 }, { 549, 290 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 562, 367 }, { 562, 366 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 569, 333 }, { 569, 332 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 569, 308 }, { 570, 308 }, { 570, 309 }, { 570, 310 }, { 569, 310 }, { -1, -1 } },
        },
    },

    .035 = {
        .normalTreeCount = 15,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 7, 8 },
            { SPECIES_HOOTHOOT, 7, 8 },
            { SPECIES_PIDGEY, 7, 8 },
            { SPECIES_ZUBAT, 7, 8 },
            { SPECIES_HOOTHOOT, 7, 8 },
            { SPECIES_PIDGEY, 7, 8 },
            { SPECIES_HOOTHOOT, 7, 8 },
            { SPECIES_HOOTHOOT, 7, 8 },
            { SPECIES_SPEAROW, 7, 8 },
            { SPECIES_ZUBAT, 7, 8 },
            { SPECIES_HOOTHOOT, 7, 8 },
            { SPECIES_SPEAROW, 7, 8 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 566, 281 }, { 567, 281 }, { 566, 283 }, { 566, 282 }, { -1, -1 }, { -1, -1 } },
            { { 558, 267 }, { 559, 267 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 542, 283 }, { 543, 283 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 544, 259 }, { 545, 259 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 518, 265 }, { 519, 265 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 519, 276 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 534, 275 }, { 534, 276 }, { 535, 276 }, { 535, 275 }, { 535, 274 }, { 534, 274 } },
            { { 553, 279 }, { 554, 279 }, { 553, 278 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 549, 283 }, { 549, 282 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 559, 281 }, { 560, 281 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 568, 277 }, { 568, 276 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 548, 271 }, { 549, 271 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 528, 281 }, { 529, 281 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 528, 265 }, { 529, 265 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 536, 281 }, { 537, 281 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .036 = {
        .normalTreeCount = 35,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_PIDGEY, 14, 15 },
            { SPECIES_PIDGEY, 14, 15 },
            { SPECIES_PIDGEY, 14, 15 },
            { SPECIES_EKANS, 14, 15 },
            { SPECIES_EKANS, 14, 15 },
            { SPECIES_EKANS, 14, 15 },
            { SPECIES_SPEAROW, 14, 15 },
            { SPECIES_SPEAROW, 14, 15 },
            { SPECIES_SPEAROW, 14, 15 },
            { SPECIES_EKANS, 14, 15 },
            { SPECIES_EKANS, 14, 15 },
            { SPECIES_EKANS, 14, 15 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 458, 289 }, { 459, 289 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 478, 291 }, { 478, 290 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 464, 299 }, { 465, 299 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 472, 302 }, { 473, 302 }, { 473, 303 }, { 473, 304 }, { -1, -1 }, { -1, -1 } },
            { { 478, 315 }, { 478, 314 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 474, 327 }, { 475, 327 }, { 474, 329 }, { 474, 328 }, { -1, -1 }, { -1, -1 } },
            { { 463, 318 }, { 464, 318 }, { 463, 320 }, { 464, 320 }, { 463, 319 }, { -1, -1 } },
            { { 464, 327 }, { 465, 327 }, { 465, 329 }, { 465, 328 }, { -1, -1 }, { -1, -1 } },
            { { 460, 331 }, { 461, 331 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 460, 311 }, { 461, 311 }, { 461, 313 }, { 461, 312 }, { -1, -1 }, { -1, -1 } },
            { { 454, 335 }, { 455, 335 }, { 455, 334 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 453, 353 }, { 453, 352 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 453, 351 }, { 453, 350 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 450, 359 }, { 451, 359 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 453, 375 }, { 454, 375 }, { 453, 377 }, { 453, 376 }, { -1, -1 }, { -1, -1 } },
            { { 456, 383 }, { 456, 382 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 449, 387 }, { 449, 386 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 465, 398 }, { 466, 398 }, { 466, 397 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 470, 402 }, { 471, 402 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 472, 409 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 476, 439 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 469, 430 }, { 469, 429 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 471, 440 }, { 472, 440 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 471, 421 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 462, 406 }, { 463, 406 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 455, 417 }, { 455, 416 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 450, 403 }, { 451, 403 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 472, 394 }, { 472, 393 }, { 472, 392 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 458, 307 }, { 459, 307 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 449, 377 }, { 449, 376 }, { 449, 375 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 461, 323 }, { 461, 322 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 478, 316 }, { 478, 317 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 478, 319 }, { 478, 318 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 461, 419 }, { 462, 419 }, { 462, 420 }, { 462, 421 }, { -1, -1 }, { -1, -1 } },
            { { 455, 406 }, { 455, 407 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .037 = {
        .normalTreeCount = 4,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_FEAROW, 26, 26 },
            { SPECIES_FEAROW, 26, 26 },
            { SPECIES_FEAROW, 26, 26 },
            { SPECIES_FEAROW, 26, 26 },
            { SPECIES_AIPOM, 22, 25 },
            { SPECIES_AIPOM, 22, 25 },
            { SPECIES_SPEAROW, 22, 25 },
            { SPECIES_SPEAROW, 22, 25 },
            { SPECIES_SPEAROW, 22, 25 },
            { SPECIES_AIPOM, 22, 25 },
            { SPECIES_AIPOM, 22, 25 },
            { SPECIES_HERACROSS, 26, 26 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 450, 473 }, { 451, 473 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 460, 477 }, { 461, 477 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 453, 465 }, { 453, 464 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 472, 477 }, { 473, 477 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .038 = {
        .normalTreeCount = 15,
        .specialTreeCount = 1,
        .normalSlots =
        {
            { SPECIES_GREEDENT, 30, 32 },
            { SPECIES_GREEDENT, 30, 32 },
            { SPECIES_GREEDENT, 30, 32 },
            { SPECIES_PACHIRISU, 30, 32 },
            { SPECIES_PACHIRISU, 30, 32 },
            { SPECIES_PACHIRISU, 30, 32 },
            { SPECIES_TRUMBEAK, 30, 32 },
            { SPECIES_TRUMBEAK, 30, 32 },
            { SPECIES_TRUMBEAK, 30, 32 },
            { SPECIES_TRUMBEAK, 30, 32 },
            { SPECIES_EMOLGA, 30, 32 },
            { SPECIES_EMOLGA, 30, 32 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 355, 405 }, { 355, 404 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 355, 403 }, { 355, 402 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 355, 401 }, { 355, 400 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 372, 395 }, { 373, 395 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 365, 443 }, { 365, 442 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 382, 441 }, { 382, 440 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 382, 425 }, { 382, 424 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 378, 417 }, { 379, 417 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 370, 413 }, { 370, 412 }, { 370, 411 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 364, 401 }, { 364, 400 }, { 364, 399 }, { 365, 399 }, { -1, -1 }, { -1, -1 } },
            { { 374, 391 }, { 374, 390 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 372, 471 }, { 373, 471 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 361, 473 }, { 361, 472 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 368, 477 }, { 369, 477 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 366, 465 }, { 367, 465 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .039 = {
        .normalTreeCount = 14,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_EXEGGCUTE, 10, 11 },
            { SPECIES_EXEGGCUTE, 10, 11 },
            { SPECIES_EXEGGCUTE, 10, 11 },
            { SPECIES_YANMA, 10, 11 },
            { SPECIES_EXEGGCUTE, 10, 11 },
            { SPECIES_YANMA, 10, 11 },
            { SPECIES_EXEGGCUTE, 10, 11 },
            { SPECIES_EXEGGCUTE, 10, 11 },
            { SPECIES_EXEGGCUTE, 10, 11 },
            { SPECIES_YANMA, 13, 14 },
            { SPECIES_EXEGGCUTE, 13, 14 },
            { SPECIES_EXEGGCUTE, 13, 14 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 377, 258 }, { 377, 259 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 378, 266 }, { 379, 266 }, { 379, 264 }, { 379, 263 }, { 379, 262 }, { 378, 262 } },
            { { 370, 282 }, { 371, 282 }, { 370, 281 }, { 370, 280 }, { 371, 280 }, { -1, -1 } },
            { { 374, 276 }, { 375, 276 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 355, 276 }, { 355, 277 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 356, 295 }, { 357, 295 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 377, 319 }, { 377, 318 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 355, 315 }, { 355, 314 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 378, 313 }, { 379, 313 }, { 378, 311 }, { 379, 311 }, { -1, -1 }, { -1, -1 } },
            { { 366, 317 }, { 366, 316 }, { 366, 315 }, { 367, 315 }, { -1, -1 }, { -1, -1 } },
            { { 359, 301 }, { 359, 300 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 359, 269 }, { 359, 268 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 355, 287 }, { 355, 286 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 368, 265 }, { 369, 265 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .040 = {
        .normalTreeCount = 26,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_APPLIN, 13, 15 },
            { SPECIES_APPLIN, 13, 15 },
            { SPECIES_APPLIN, 13, 15 },
            { SPECIES_APPLIN, 13, 15 },
            { SPECIES_APPLIN, 13, 15 },
            { SPECIES_APPLIN, 13, 15 },
            { SPECIES_APPLIN, 13, 15 },
            { SPECIES_APPLIN, 13, 15 },
            { SPECIES_APPLIN, 13, 15 },
            { SPECIES_APPLIN, 13, 15 },
            { SPECIES_APPLIN, 13, 15 },
            { SPECIES_APPLIN, 13, 15 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 380, 231 }, { 381, 231 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 376, 241 }, { 377, 241 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 377, 253 }, { 377, 252 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 398, 245 }, { 398, 244 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 403, 234 }, { 404, 234 }, { 404, 233 }, { 404, 232 }, { 403, 232 }, { 403, 233 } },
            { { 392, 232 }, { 392, 231 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 414, 245 }, { 414, 244 }, { 414, 243 }, { 413, 243 }, { -1, -1 }, { -1, -1 } },
            { { 391, 251 }, { 392, 251 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 384, 245 }, { 384, 244 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 405, 253 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 422, 249 }, { 423, 249 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 428, 241 }, { 429, 241 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 402, 227 }, { 403, 227 }, { 402, 226 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 444, 249 }, { 445, 249 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 444, 241 }, { 445, 241 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 436, 241 }, { 437, 241 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 421, 243 }, { 421, 242 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 414, 251 }, { 415, 251 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 387, 243 }, { 388, 243 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 377, 249 }, { 377, 248 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 394, 238 }, { 395, 238 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 399, 251 }, { 400, 251 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 405, 247 }, { 406, 247 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 410, 241 }, { 411, 241 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 394, 228 }, { 395, 228 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 434, 252 }, { 434, 251 }, { 435, 251 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .041 = {
        .normalTreeCount = 13,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 12, 14 },
            { SPECIES_PINECO, 12, 14 },
            { SPECIES_PINECO, 12, 14 },
            { SPECIES_EXEGGCUTE, 12, 14 },
            { SPECIES_EXEGGCUTE, 12, 14 },
            { SPECIES_EXEGGCUTE, 12, 14 },
            { SPECIES_HOOTHOOT, 15, 17 },
            { SPECIES_SPINARAK, 15, 17 },
            { SPECIES_SPINARAK, 15, 17 },
            { SPECIES_EXEGGCUTE, 15, 17 },
            { SPECIES_EXEGGCUTE, 15, 17 },
            { SPECIES_EXEGGCUTE, 15, 17 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 390, 210 }, { 390, 209 }, { 390, 208 }, { 391, 208 }, { 391, 209 }, { 391, 210 } },
            { { 396, 217 }, { 397, 217 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 408, 215 }, { 408, 214 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 401, 207 }, { 401, 206 }, { 401, 205 }, { 400, 205 }, { -1, -1 }, { -1, -1 } },
            { { 400, 217 }, { 401, 217 }, { 401, 216 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 386, 213 }, { 387, 213 }, { 387, 214 }, { 387, 215 }, { -1, -1 }, { -1, -1 } },
            { { 385, 201 }, { 385, 200 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 396, 201 }, { 396, 200 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 400, 193 }, { 401, 193 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 406, 199 }, { 407, 199 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 388, 195 }, { 389, 195 }, { 389, 194 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 408, 207 }, { 408, 206 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 404, 221 }, { 405, 221 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .042 = {
        .normalTreeCount = 13,
        .specialTreeCount = 1,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 13, 14 },
            { SPECIES_PINECO, 13, 14 },
            { SPECIES_PINECO, 13, 14 },
            { SPECIES_EXEGGCUTE, 13, 14 },
            { SPECIES_EXEGGCUTE, 13, 14 },
            { SPECIES_EXEGGCUTE, 13, 14 },
            { SPECIES_HOOTHOOT, 15, 16 },
            { SPECIES_SPINARAK, 15, 16 },
            { SPECIES_SPINARAK, 15, 16 },
            { SPECIES_EXEGGCUTE, 15, 16 },
            { SPECIES_EXEGGCUTE, 15, 16 },
            { SPECIES_EXEGGCUTE, 15, 16 },
        },
        .specialSlots =
        {
            { SPECIES_EXEGGCUTE, 18, 25 },
            { SPECIES_EXEGGCUTE, 18, 25 },
            { SPECIES_BURMY, 18, 20 },
            { SPECIES_BURMY, 18, 20 },
            { SPECIES_BURMY, 18, 20 },
            { SPECIES_BURMY, 21, 25 },
        },
        .treeCoords =
        {
            { { 348, 164 }, { 349, 164 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 340, 165 }, { 341, 165 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 332, 161 }, { 333, 161 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 322, 161 }, { 323, 161 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 324, 163 }, { 325, 163 }, { 324, 164 }, { 324, 165 }, { -1, -1 }, { -1, -1 } },
            { { 330, 167 }, { 331, 167 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 342, 178 }, { 343, 178 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 336, 181 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 313, 174 }, { 313, 173 }, { 312, 174 }, { 312, 173 }, { -1, -1 }, { -1, -1 } },
            { { 307, 164 }, { 308, 164 }, { 307, 162 }, { 308, 162 }, { -1, -1 }, { -1, -1 } },
            { { 303, 170 }, { 303, 169 }, { 303, 168 }, { 304, 168 }, { -1, -1 }, { -1, -1 } },
            { { 305, 174 }, { 306, 174 }, { 306, 173 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 315, 164 }, { 316, 164 }, { 315, 162 }, { 316, 162 }, { -1, -1 }, { -1, -1 } },
            { { 302, 189 }, { 302, 190 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .043 = {
        .normalTreeCount = 3,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 14, 15 },
            { SPECIES_PINECO, 14, 15 },
            { SPECIES_PINECO, 14, 15 },
            { SPECIES_EXEGGCUTE, 14, 15 },
            { SPECIES_EXEGGCUTE, 14, 15 },
            { SPECIES_EXEGGCUTE, 14, 15 },
            { SPECIES_HOOTHOOT, 16, 17 },
            { SPECIES_SPINARAK, 16, 17 },
            { SPECIES_SPINARAK, 16, 17 },
            { SPECIES_EXEGGCUTE, 16, 17 },
            { SPECIES_EXEGGCUTE, 16, 17 },
            { SPECIES_EXEGGCUTE, 16, 17 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 269, 183 }, { 270, 183 }, { 270, 182 }, { 270, 181 }, { 269, 181 }, { -1, -1 } },
            { { 284, 193 }, { 285, 193 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 274, 216 }, { 275, 216 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .044 = {
        .normalTreeCount = 10,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_AMBIPOM, 40, 42 },
            { SPECIES_AMBIPOM, 40, 42 },
            { SPECIES_AMBIPOM, 40, 42 },
            { SPECIES_PRIMEAPE, 40, 42 },
            { SPECIES_PRIMEAPE, 40, 42 },
            { SPECIES_PRIMEAPE, 40, 42 },
            { SPECIES_VIKAVOLT, 41, 42 },
            { SPECIES_VIKAVOLT, 41, 42 },
            { SPECIES_PINSIR, 40, 42 },
            { SPECIES_HERACROSS, 40, 42 },
            { SPECIES_PINSIR, 40, 42 },
            { SPECIES_HERACROSS, 40, 42 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 424, 173 }, { 425, 173 }, { 425, 172 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 426, 187 }, { 427, 187 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 448, 184 }, { 449, 184 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 470, 186 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 461, 186 }, { 461, 185 }, { 460, 185 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 442, 182 }, { 443, 182 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 432, 181 }, { 433, 181 }, { 432, 182 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 436, 177 }, { 437, 177 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 458, 181 }, { 458, 180 }, { 458, 179 }, { 459, 179 }, { 459, 180 }, { 459, 181 } },
            { { 469, 179 }, { 470, 179 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .045 = {
        .normalTreeCount = 17,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 15, 16 },
            { SPECIES_PINECO, 15, 16 },
            { SPECIES_PINECO, 15, 16 },
            { SPECIES_EXEGGCUTE, 15, 16 },
            { SPECIES_EXEGGCUTE, 15, 16 },
            { SPECIES_EXEGGCUTE, 15, 16 },
            { SPECIES_HOOTHOOT, 17, 18 },
            { SPECIES_VENONAT, 17, 18 },
            { SPECIES_HOOTHOOT, 17, 18 },
            { SPECIES_EXEGGCUTE, 17, 18 },
            { SPECIES_EXEGGCUTE, 17, 18 },
            { SPECIES_EXEGGCUTE, 17, 18 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 516, 99 }, { 516, 98 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 522, 107 }, { 523, 107 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 516, 127 }, { 517, 127 }, { 516, 126 }, { 517, 126 }, { -1, -1 }, { -1, -1 } },
            { { 528, 133 }, { 529, 133 }, { 528, 134 }, { 528, 135 }, { -1, -1 }, { -1, -1 } },
            { { 537, 103 }, { 538, 103 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 526, 103 }, { 527, 103 }, { 527, 102 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 530, 111 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 535, 125 }, { 535, 124 }, { 536, 125 }, { 536, 124 }, { -1, -1 }, { -1, -1 } },
            { { 528, 153 }, { 529, 153 }, { 528, 155 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 534, 151 }, { 535, 151 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 530, 129 }, { 530, 128 }, { 531, 129 }, { 531, 128 }, { -1, -1 }, { -1, -1 } },
            { { 512, 123 }, { 513, 123 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 514, 105 }, { 515, 105 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 517, 115 }, { 517, 114 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 518, 101 }, { 519, 101 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 539, 113 }, { 540, 113 }, { 539, 112 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 527, 122 }, { 527, 121 }, { 526, 122 }, { 526, 121 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .046 = {
        .normalTreeCount = 14,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_SPEAROW, 21, 22 },
            { SPECIES_HERACROSS, 21, 22 },
            { SPECIES_HERACROSS, 21, 22 },
            { SPECIES_AIPOM, 21, 22 },
            { SPECIES_AIPOM, 21, 22 },
            { SPECIES_AIPOM, 21, 22 },
            { SPECIES_SPEAROW, 23, 24 },
            { SPECIES_SPEAROW, 23, 24 },
            { SPECIES_SPEAROW, 23, 24 },
            { SPECIES_AIPOM, 23, 24 },
            { SPECIES_AIPOM, 23, 24 },
            { SPECIES_AIPOM, 23, 24 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 623, 171 }, { 624, 171 }, { 624, 172 }, { 624, 173 }, { 623, 173 }, { -1, -1 } },
            { { 614, 178 }, { 615, 178 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 606, 172 }, { 607, 172 }, { 607, 171 }, { 606, 171 }, { -1, -1 }, { -1, -1 } },
            { { 608, 164 }, { 608, 163 }, { 608, 162 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 604, 184 }, { 604, 183 }, { 603, 184 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 591, 184 }, { 592, 184 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 585, 176 }, { 586, 176 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 589, 172 }, { 590, 172 }, { 589, 170 }, { 590, 170 }, { -1, -1 }, { -1, -1 } },
            { { 586, 166 }, { 586, 164 }, { 585, 164 }, { 586, 165 }, { -1, -1 }, { -1, -1 } },
            { { 565, 170 }, { 566, 170 }, { 565, 171 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 550, 174 }, { 551, 174 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 557, 168 }, { 558, 168 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 597, 176 }, { 598, 176 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 567, 164 }, { 568, 164 }, { 568, 163 }, { 568, 162 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .047 = {
        .normalTreeCount = 3,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_VESPIQUEN, 66, 69 },
            { SPECIES_VESPIQUEN, 66, 69 },
            { SPECIES_VESPIQUEN, 66, 69 },
            { SPECIES_RIBOMBEE, 66, 67 },
            { SPECIES_URSARING, 68, 69 },
            { SPECIES_QUILLADIN, 66, 66 },
            { SPECIES_VESPIQUEN, 66, 69 },
            { SPECIES_VESPIQUEN, 66, 69 },
            { SPECIES_VESPIQUEN, 66, 69 },
            { SPECIES_URSARING, 68, 69 },
            { SPECIES_GLISCOR, 69, 69 },
            { SPECIES_QUILLADIN, 66, 66 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 667, 335 }, { 666, 335 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 662, 335 }, { 663, 335 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 657, 331 }, { 657, 330 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .048 = {
        .normalTreeCount = 10,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_SPEAROW, 5, 6 },
            { SPECIES_SPEAROW, 5, 6 },
            { SPECIES_SPEAROW, 5, 6 },
            { SPECIES_SPEAROW, 5, 6 },
            { SPECIES_AIPOM, 5, 6 },
            { SPECIES_AIPOM, 5, 6 },
            { SPECIES_COMBEE, 6, 7 },
            { SPECIES_COMBEE, 6, 7 },
            { SPECIES_COMBEE, 6, 7 },
            { SPECIES_TEDDIURSA, 6, 7 },
            { SPECIES_COMBEE, 6, 7 },
            { SPECIES_TEDDIURSA, 6, 7 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 614, 331 }, { 614, 330 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 628, 351 }, { 628, 352 }, { 629, 352 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 610, 351 }, { 610, 350 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 615, 376 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 630, 377 }, { 630, 376 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 623, 380 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 611, 361 }, { 611, 360 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 623, 335 }, { 624, 335 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 626, 331 }, { 626, 330 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 611, 368 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .049 = {
        .normalTreeCount = 17,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 2, 3 },
            { SPECIES_PINECO, 2, 3 },
            { SPECIES_PINECO, 2, 3 },
            { SPECIES_WURMPLE, 2, 3 },
            { SPECIES_WURMPLE, 2, 3 },
            { SPECIES_WURMPLE, 2, 3 },
            { SPECIES_HOOTHOOT, 5, 6 },
            { SPECIES_SPINARAK, 5, 6 },
            { SPECIES_SPINARAK, 5, 6 },
            { SPECIES_WURMPLE, 5, 6 },
            { SPECIES_WURMPLE, 5, 6 },
            { SPECIES_WURMPLE, 5, 6 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1028, 355 }, { 1029, 355 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1030, 355 }, { 1031, 355 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1034, 355 }, { 1035, 355 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1048, 355 }, { 1049, 355 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1030, 377 }, { 1031, 377 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1027, 375 }, { 1027, 374 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1027, 369 }, { 1027, 368 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1027, 365 }, { 1027, 364 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1027, 363 }, { 1027, 362 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1050, 355 }, { 1051, 355 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1048, 381 }, { 1049, 381 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1050, 381 }, { 1051, 381 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1052, 377 }, { 1052, 376 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1052, 371 }, { 1052, 370 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1052, 367 }, { 1052, 366 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1052, 365 }, { 1052, 364 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1052, 361 }, { 1052, 369 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .050 = {
        .normalTreeCount = 21,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 3, 4 },
            { SPECIES_PINECO, 3, 4 },
            { SPECIES_PINECO, 3, 4 },
            { SPECIES_WURMPLE, 3, 4 },
            { SPECIES_WURMPLE, 3, 4 },
            { SPECIES_WURMPLE, 3, 4 },
            { SPECIES_HOOTHOOT, 5, 7 },
            { SPECIES_SPINARAK, 5, 7 },
            { SPECIES_SPINARAK, 5, 7 },
            { SPECIES_WURMPLE, 5, 7 },
            { SPECIES_WURMPLE, 5, 7 },
            { SPECIES_WURMPLE, 5, 7 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1032, 271 }, { 1033, 271 }, { 1033, 273 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1033, 274 }, { 1033, 275 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1028, 271 }, { 1029, 271 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1014, 271 }, { 1015, 271 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1013, 270 }, { 1013, 269 }, { 1012, 269 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1044, 271 }, { 1045, 271 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1054, 270 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1054, 269 }, { 1054, 268 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1052, 267 }, { 1053, 267 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1022, 271 }, { 1023, 271 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1050, 263 }, { 1050, 262 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1050, 261 }, { 1050, 260 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1050, 251 }, { 1050, 250 }, { 1050, 249 }, { 1051, 249 }, { -1, -1 }, { -1, -1 } },
            { { 1054, 248 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1054, 243 }, { 1054, 242 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1054, 247 }, { 1054, 246 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1054, 239 }, { 1054, 238 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1052, 231 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1048, 231 }, { 1049, 231 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1044, 231 }, { 1045, 231 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1040, 231 }, { 1041, 231 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .051 = {
        .normalTreeCount = 21,
        .specialTreeCount = 2,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 3, 5 },
            { SPECIES_PINECO, 3, 5 },
            { SPECIES_PINECO, 3, 5 },
            { SPECIES_WURMPLE, 3, 5 },
            { SPECIES_WURMPLE, 3, 5 },
            { SPECIES_WURMPLE, 3, 5 },
            { SPECIES_HOOTHOOT, 7, 9 },
            { SPECIES_HOOTHOOT, 7, 9 },
            { SPECIES_HOOTHOOT, 7, 9 },
            { SPECIES_WURMPLE, 7, 9 },
            { SPECIES_WURMPLE, 7, 9 },
            { SPECIES_WURMPLE, 7, 9 },
        },
        .specialSlots =
        {
            { SPECIES_WURMPLE, 5, 9 },
            { SPECIES_WURMPLE, 5, 9 },
            { SPECIES_STARLY, 5, 9 },
            { SPECIES_STARLY, 5, 9 },
            { SPECIES_STARLY, 5, 9 },
            { SPECIES_STARLY, 8, 12 },
        },
        .treeCoords =
        {
            { { 1052, 117 }, { 1053, 117 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1060, 117 }, { 1061, 117 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1070, 117 }, { 1071, 117 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1040, 111 }, { 1041, 111 }, { 1040, 109 }, { 1041, 109 }, { -1, -1 }, { -1, -1 } },
            { { 1042, 111 }, { 1043, 111 }, { 1043, 110 }, { 1043, 109 }, { 1042, 109 }, { -1, -1 } },
            { { 1042, 99 }, { 1043, 99 }, { 1043, 101 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1044, 101 }, { 1045, 101 }, { 1044, 99 }, { 1045, 99 }, { -1, -1 }, { -1, -1 } },
            { { 1052, 101 }, { 1053, 101 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1043, 93 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1051, 93 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1061, 87 }, { 1062, 87 }, { 1061, 85 }, { 1062, 85 }, { -1, -1 }, { -1, -1 } },
            { { 1065, 87 }, { 1066, 87 }, { 1065, 85 }, { 1066, 85 }, { -1, -1 }, { -1, -1 } },
            { { 1065, 81 }, { 1065, 80 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1066, 73 }, { 1067, 73 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1062, 73 }, { 1063, 73 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1060, 77 }, { 1061, 77 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1029, 75 }, { 1030, 75 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1031, 75 }, { 1032, 75 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1030, 85 }, { 1030, 84 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1030, 81 }, { 1030, 80 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1030, 79 }, { 1030, 78 }, { 1030, 77 }, { 1031, 77 }, { -1, -1 }, { -1, -1 } },
            { { 1037, 119 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1037, 120 }, { 1037, 121 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .052 = {
        .normalTreeCount = 11,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 11, 13 },
            { SPECIES_PINECO, 11, 13 },
            { SPECIES_PINECO, 11, 13 },
            { SPECIES_COMBEE, 11, 13 },
            { SPECIES_COMBEE, 11, 13 },
            { SPECIES_COMBEE, 11, 13 },
            { SPECIES_HOOTHOOT, 14, 16 },
            { SPECIES_HOOTHOOT, 14, 16 },
            { SPECIES_HOOTHOOT, 14, 16 },
            { SPECIES_COMBEE, 14, 16 },
            { SPECIES_COMBEE, 14, 16 },
            { SPECIES_COMBEE, 14, 16 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1295, 158 }, { 1295, 157 }, { 1296, 158 }, { 1296, 157 }, { -1, -1 }, { -1, -1 } },
            { { 1303, 158 }, { 1304, 158 }, { 1303, 157 }, { 1304, 157 }, { -1, -1 }, { -1, -1 } },
            { { 1303, 156 }, { 1304, 156 }, { 1303, 155 }, { 1304, 155 }, { 1303, 154 }, { 1304, 154 } },
            { { 1322, 134 }, { 1323, 134 }, { 1323, 133 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1323, 128 }, { 1323, 127 }, { 1322, 128 }, { 1322, 127 }, { -1, -1 }, { -1, -1 } },
            { { 1323, 126 }, { 1323, 125 }, { 1322, 126 }, { 1322, 125 }, { -1, -1 }, { -1, -1 } },
            { { 1323, 120 }, { 1323, 119 }, { 1323, 118 }, { 1322, 118 }, { -1, -1 }, { -1, -1 } },
            { { 1330, 112 }, { 1331, 112 }, { 1330, 111 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1332, 112 }, { 1333, 112 }, { 1333, 111 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1333, 110 }, { 1333, 109 }, { 1333, 108 }, { 1332, 108 }, { -1, -1 }, { -1, -1 } },
            { { 1330, 105 }, { 1331, 105 }, { 1330, 104 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .053 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .054 = {
        .normalTreeCount = 10,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_SPEAROW, 11, 13 },
            { SPECIES_HERACROSS, 11, 13 },
            { SPECIES_HERACROSS, 11, 13 },
            { SPECIES_COMBEE, 11, 13 },
            { SPECIES_COMBEE, 11, 13 },
            { SPECIES_COMBEE, 11, 13 },
            { SPECIES_SPEAROW, 14, 16 },
            { SPECIES_SPEAROW, 14, 16 },
            { SPECIES_SPEAROW, 14, 16 },
            { SPECIES_COMBEE, 14, 16 },
            { SPECIES_COMBEE, 14, 16 },
            { SPECIES_COMBEE, 14, 16 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1341, 313 }, { 1342, 313 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1340, 315 }, { 1340, 314 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1340, 325 }, { 1341, 325 }, { 1341, 324 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1341, 323 }, { 1341, 322 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1338, 325 }, { 1339, 325 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1336, 325 }, { 1337, 325 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1336, 329 }, { 1337, 329 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1338, 328 }, { 1338, 327 }, { 1339, 327 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1340, 327 }, { 1341, 327 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1342, 327 }, { 1343, 327 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .055 = {
        .normalTreeCount = 32,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_SPEAROW, 15, 17 },
            { SPECIES_HERACROSS, 15, 17 },
            { SPECIES_HERACROSS, 15, 17 },
            { SPECIES_COMBEE, 15, 17 },
            { SPECIES_COMBEE, 15, 17 },
            { SPECIES_COMBEE, 15, 17 },
            { SPECIES_SPEAROW, 18, 20 },
            { SPECIES_SPEAROW, 18, 20 },
            { SPECIES_SPEAROW, 18, 20 },
            { SPECIES_COMBEE, 18, 20 },
            { SPECIES_COMBEE, 18, 20 },
            { SPECIES_COMBEE, 18, 20 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1198, 225 }, { 1199, 225 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1200, 225 }, { 1201, 225 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1204, 225 }, { 1205, 225 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1210, 225 }, { 1211, 225 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1216, 225 }, { 1217, 225 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1220, 225 }, { 1221, 225 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1222, 225 }, { 1223, 225 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1234, 229 }, { 1235, 229 }, { 1234, 227 }, { 1235, 227 }, { -1, -1 }, { -1, -1 } },
            { { 1240, 237 }, { 1241, 237 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1188, 255 }, { 1189, 255 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1190, 255 }, { 1191, 255 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1193, 249 }, { 1193, 248 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1193, 247 }, { 1193, 246 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1193, 243 }, { 1193, 242 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1193, 269 }, { 1193, 268 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1198, 273 }, { 1199, 273 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1202, 273 }, { 1203, 273 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1210, 273 }, { 1211, 273 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1215, 271 }, { 1216, 271 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1223, 271 }, { 1224, 271 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1219, 267 }, { 1220, 267 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1221, 267 }, { 1222, 267 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1230, 271 }, { 1231, 271 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1232, 271 }, { 1233, 271 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1234, 271 }, { 1235, 271 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1237, 269 }, { 1237, 268 }, { 1237, 267 }, { 1236, 267 }, { -1, -1 }, { -1, -1 } },
            { { 1240, 267 }, { 1240, 266 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1240, 265 }, { 1240, 264 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1240, 263 }, { 1240, 262 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1237, 257 }, { 1237, 256 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1238, 253 }, { 1239, 253 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1240, 255 }, { 1240, 254 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .056 = {
        .normalTreeCount = 18,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 21, 23 },
            { SPECIES_SPINARAK, 21, 23 },
            { SPECIES_SPINARAK, 21, 23 },
            { SPECIES_WURMPLE, 21, 23 },
            { SPECIES_WURMPLE, 21, 23 },
            { SPECIES_WURMPLE, 21, 23 },
            { SPECIES_HOOTHOOT, 26, 34 },
            { SPECIES_TANGELA, 26, 34 },
            { SPECIES_HOOTHOOT, 26, 34 },
            { SPECIES_WURMPLE, 26, 34 },
            { SPECIES_WURMPLE, 26, 34 },
            { SPECIES_WURMPLE, 26, 34 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1193, 417 }, { 1193, 416 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1193, 415 }, { 1193, 414 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1193, 409 }, { 1193, 408 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1193, 407 }, { 1193, 406 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1195, 403 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1198, 403 }, { 1199, 403 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1200, 403 }, { 1201, 403 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1204, 403 }, { 1205, 403 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1208, 403 }, { 1209, 403 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1210, 403 }, { 1211, 403 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1220, 403 }, { 1221, 403 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1226, 403 }, { 1227, 403 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1228, 403 }, { 1229, 403 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1230, 403 }, { 1231, 403 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1234, 403 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1236, 405 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1236, 413 }, { 1236, 412 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1236, 409 }, { 1236, 408 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .057 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .058 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .059 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .060 = {
        .normalTreeCount = 11,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 5, 6 },
            { SPECIES_HOOTHOOT, 5, 6 },
            { SPECIES_CATERPIE, 5, 6 },
            { SPECIES_WEEDLE, 5, 6 },
            { SPECIES_CATERPIE, 5, 6 },
            { SPECIES_WEEDLE, 5, 6 },
            { SPECIES_HOOTHOOT, 5, 6 },
            { SPECIES_HOOTHOOT, 5, 6 },
            { SPECIES_LEDYBA, 5, 6 },
            { SPECIES_SPINARAK, 5, 6 },
            { SPECIES_LEDYBA, 5, 6 },
            { SPECIES_SPINARAK, 5, 6 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 698, 403 }, { 698, 404 }, { 698, 405 }, { 699, 403 }, { -1, -1 }, { -1, -1 } },
            { { 698, 406 }, { 698, 407 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 698, 411 }, { 698, 412 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 692, 413 }, { 693, 413 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 690, 413 }, { 691, 413 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 686, 413 }, { 687, 413 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 680, 411 }, { 681, 411 }, { 681, 412 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 678, 411 }, { 679, 411 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 674, 407 }, { 675, 407 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 692, 390 }, { 692, 391 }, { 693, 391 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 676, 395 }, { 677, 395 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .061 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .062 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .063 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .064 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .065 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .066 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .067 = {
        .normalTreeCount = 7,
        .specialTreeCount = 4,
        .normalSlots =
        {
            { SPECIES_BEEDRILL, 10, 12 },
            { SPECIES_BEEDRILL, 10, 12 },
            { SPECIES_BEEDRILL, 10, 12 },
            { SPECIES_COMBEE, 7, 8 },
            { SPECIES_BEEDRILL, 10, 12 },
            { SPECIES_CUTIEFLY, 7, 8 },
            { SPECIES_BUTTERFREE, 10, 12 },
            { SPECIES_BUTTERFREE, 10, 12 },
            { SPECIES_BUTTERFREE, 10, 12 },
            { SPECIES_COMBEE, 7, 8 },
            { SPECIES_CUTIEFLY, 7, 8 },
            { SPECIES_CHERUBI, 7, 8 },
        },
        .specialSlots =
        {
            { SPECIES_EXEGGCUTE, 18, 20 },
            { SPECIES_EXEGGCUTE, 18, 20 },
            { SPECIES_TAILLOW, 18, 20 },
            { SPECIES_TAILLOW, 18, 20 },
            { SPECIES_TAILLOW, 18, 20 },
            { SPECIES_TAILLOW, 21, 25 },
        },
        .treeCoords =
        {
            { { 570, 408 }, { 570, 409 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 564, 411 }, { 565, 411 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 562, 411 }, { 563, 411 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 552, 407 }, { 553, 407 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 548, 407 }, { 549, 407 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 560, 391 }, { 561, 391 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 552, 390 }, { 552, 391 }, { 553, 391 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 522, 387 }, { 523, 387 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 524, 387 }, { 525, 387 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 521, 389 }, { 521, 388 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 526, 389 }, { 526, 388 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .068 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .069 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .070 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .071 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .072 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .073 = {
        .normalTreeCount = 27,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 12, 15 },
            { SPECIES_HOOTHOOT, 12, 15 },
            { SPECIES_PIDGEY, 12, 15 },
            { SPECIES_CHATOT, 12, 15 },
            { SPECIES_HOOTHOOT, 12, 15 },
            { SPECIES_PIDGEY, 12, 15 },
            { SPECIES_PIDGEY, 12, 15 },
            { SPECIES_PIDGEY, 12, 15 },
            { SPECIES_SPEAROW, 12, 15 },
            { SPECIES_EXEGGCUTE, 12, 15 },
            { SPECIES_SPEAROW, 12, 15 },
            { SPECIES_PIDGEY, 12, 15 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 510, 276 }, { 510, 277 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 506, 265 }, { 507, 265 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 504, 265 }, { 505, 265 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 500, 279 }, { 501, 279 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 496, 279 }, { 496, 280 }, { 496, 281 }, { 497, 279 }, { -1, -1 }, { -1, -1 } },
            { { 490, 283 }, { 491, 283 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 481, 281 }, { 481, 280 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 487, 273 }, { 487, 272 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 484, 265 }, { 485, 265 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 470, 272 }, { 470, 273 }, { 471, 273 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 468, 279 }, { 469, 279 }, { 469, 280 }, { 469, 281 }, { -1, -1 }, { -1, -1 } },
            { { 465, 274 }, { 465, 275 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 465, 272 }, { 465, 273 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 462, 265 }, { 463, 265 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 460, 261 }, { 461, 261 }, { 461, 262 }, { 461, 263 }, { -1, -1 }, { -1, -1 } },
            { { 468, 250 }, { 468, 251 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 468, 246 }, { 468, 247 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 466, 243 }, { 467, 243 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 504, 235 }, { 505, 235 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 506, 236 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 506, 237 }, { 506, 238 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 506, 239 }, { 506, 240 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 457, 230 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 457, 228 }, { 457, 229 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 458, 227 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 459, 227 }, { 460, 227 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 461, 227 }, { 462, 227 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .074 = {
        .normalTreeCount = 15,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_ARBOK, 26, 26 },
            { SPECIES_ARBOK, 26, 26 },
            { SPECIES_TAROUNTULA, 22, 25 },
            { SPECIES_YANMA, 22, 25 },
            { SPECIES_ARBOK, 26, 26 },
            { SPECIES_TAROUNTULA, 22, 25 },
            { SPECIES_TAROUNTULA, 22, 25 },
            { SPECIES_TAROUNTULA, 22, 25 },
            { SPECIES_TAROUNTULA, 22, 25 },
            { SPECIES_EKANS, 22, 25 },
            { SPECIES_EKANS, 22, 25 },
            { SPECIES_HERACROSS, 26, 26 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 426, 465 }, { 427, 465 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 424, 459 }, { 425, 459 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 414, 455 }, { 415, 455 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 406, 455 }, { 407, 455 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 396, 449 }, { 397, 449 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 393, 452 }, { 393, 453 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 394, 467 }, { 395, 467 }, { 395, 468 }, { 395, 469 }, { -1, -1 }, { -1, -1 } },
            { { 395, 470 }, { 395, 471 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 395, 472 }, { 395, 473 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 398, 477 }, { 399, 477 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 400, 477 }, { 401, 477 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 402, 477 }, { 403, 477 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 404, 477 }, { 405, 477 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 410, 477 }, { 411, 477 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 412, 477 }, { 413, 477 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .075 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .076 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .077 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .078 = {
        .normalTreeCount = 18,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_NOCTOWL, 40, 42 },
            { SPECIES_NOCTOWL, 40, 42 },
            { SPECIES_NOCTOWL, 40, 42 },
            { SPECIES_NOCTOWL, 40, 42 },
            { SPECIES_NOCTOWL, 40, 42 },
            { SPECIES_NOCTOWL, 40, 42 },
            { SPECIES_MURKROW, 40, 42 },
            { SPECIES_MURKROW, 40, 42 },
            { SPECIES_MURKROW, 40, 42 },
            { SPECIES_MURKROW, 40, 42 },
            { SPECIES_MURKROW, 40, 42 },
            { SPECIES_HONCHKROW, 42, 42 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 414, 166 }, { 414, 167 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 414, 182 }, { 414, 183 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 414, 184 }, { 414, 185 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 410, 189 }, { 411, 189 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 404, 182 }, { 404, 183 }, { 405, 183 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 400, 189 }, { 401, 189 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 388, 164 }, { 389, 164 }, { 389, 163 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 380, 189 }, { 381, 189 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 374, 189 }, { 375, 189 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 369, 186 }, { 369, 187 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 369, 182 }, { 369, 183 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 369, 176 }, { 369, 177 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 369, 174 }, { 369, 175 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 364, 169 }, { 365, 169 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 360, 163 }, { 361, 163 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 362, 163 }, { 363, 163 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 369, 158 }, { 369, 159 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 378, 173 }, { 379, 173 }, { 379, 172 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .079 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .080 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .081 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .082 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .083 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .084 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .085 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .086 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .087 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .088 = {
        .normalTreeCount = 22,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_PIDGEOT, 58, 60 },
            { SPECIES_PIDGEOT, 58, 60 },
            { SPECIES_EXEGGCUTE, 55, 58 },
            { SPECIES_SEEDOT, 55, 58 },
            { SPECIES_PIDGEOT, 58, 60 },
            { SPECIES_PIDGEOT, 58, 60 },
            { SPECIES_VENOMOTH, 58, 60 },
            { SPECIES_VENOMOTH, 58, 60 },
            { SPECIES_EXEGGCUTE, 55, 58 },
            { SPECIES_SEEDOT, 55, 58 },
            { SPECIES_VENOMOTH, 58, 60 },
            { SPECIES_EXEGGCUTE, 55, 58 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 552, 52 }, { 552, 53 }, { 553, 53 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 552, 62 }, { 553, 62 }, { 553, 61 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 556, 63 }, { 556, 62 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 556, 61 }, { 556, 60 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 546, 68 }, { 547, 68 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 548, 68 }, { 549, 68 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 543, 80 }, { 543, 79 }, { 544, 79 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 523, 89 }, { 523, 88 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 512, 91 }, { 513, 91 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 508, 91 }, { 509, 91 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 506, 91 }, { 507, 91 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 500, 85 }, { 501, 85 }, { 501, 84 }, { 500, 83 }, { 501, 83 }, { -1, -1 } },
            { { 494, 81 }, { 495, 81 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 488, 75 }, { 489, 75 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 487, 74 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 487, 73 }, { 487, 72 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 488, 71 }, { 489, 71 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 504, 33 }, { 505, 33 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 506, 33 }, { 507, 33 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 538, 35 }, { 539, 35 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 540, 35 }, { 541, 35 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 542, 35 }, { 543, 35 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .089 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .090 = {
        .normalTreeCount = 5,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HERACROSS, 39, 40 },
            { SPECIES_AIPOM, 39, 40 },
            { SPECIES_AIPOM, 39, 40 },
            { SPECIES_NATU, 39, 40 },
            { SPECIES_NATU, 39, 40 },
            { SPECIES_NATU, 39, 40 },
            { SPECIES_HERACROSS, 41, 43 },
            { SPECIES_AIPOM, 41, 43 },
            { SPECIES_AIPOM, 41, 43 },
            { SPECIES_NATU, 41, 43 },
            { SPECIES_NATU, 41, 43 },
            { SPECIES_NATU, 41, 43 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 803, 277 }, { 804, 277 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 805, 277 }, { 806, 277 }, { 806, 276 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 811, 275 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 812, 275 }, { 813, 275 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 816, 262 }, { 816, 261 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .091 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .092 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .093 = {
        .normalTreeCount = 3,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 24, 26 },
            { SPECIES_SPINARAK, 24, 26 },
            { SPECIES_SPINARAK, 24, 26 },
            { SPECIES_WURMPLE, 24, 26 },
            { SPECIES_WURMPLE, 24, 26 },
            { SPECIES_WURMPLE, 24, 26 },
            { SPECIES_HOOTHOOT, 27, 30 },
            { SPECIES_TANGELA, 27, 30 },
            { SPECIES_HOOTHOOT, 27, 30 },
            { SPECIES_WURMPLE, 27, 30 },
            { SPECIES_WURMPLE, 27, 30 },
            { SPECIES_WURMPLE, 27, 30 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1046, 393 }, { 1046, 392 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1046, 391 }, { 1046, 390 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1046, 389 }, { 1046, 388 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .094 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .095 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .096 = {
        .normalTreeCount = 22,
        .specialTreeCount = 5,
        .normalSlots =
        {
            { SPECIES_BURMY, 30, 33 },
            { SPECIES_BURMY, 30, 33 },
            { SPECIES_BURMY, 30, 33 },
            { SPECIES_BURMY, 30, 33 },
            { SPECIES_BURMY, 30, 33 },
            { SPECIES_BURMY, 30, 33 },
            { SPECIES_FORRETRESS, 32, 36 },
            { SPECIES_FORRETRESS, 32, 36 },
            { SPECIES_NOIBAT, 32, 35 },
            { SPECIES_APPLIN, 30, 35 },
            { SPECIES_NOIBAT, 32, 35 },
            { SPECIES_SWELLOW, 32, 36 },
        },
        .specialSlots =
        {
            { SPECIES_EXEGGCUTE, 18, 20 },
            { SPECIES_EXEGGCUTE, 18, 20 },
            { SPECIES_CHERUBI, 18, 20 },
            { SPECIES_CHERUBI, 18, 20 },
            { SPECIES_CHERUBI, 18, 20 },
            { SPECIES_CHERUBI, 21, 25 },
        },
        .treeCoords =
        {
            { { 34, 63 }, { 35, 63 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 32, 61 }, { 33, 61 }, { 33, 62 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 27, 56 }, { 27, 55 }, { 26, 55 }, { 26, 56 }, { 26, 57 }, { -1, -1 } },
            { { 23, 55 }, { 23, 54 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 23, 49 }, { 23, 48 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 23, 47 }, { 23, 46 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 23, 43 }, { 23, 42 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 23, 35 }, { 23, 34 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 23, 33 }, { 23, 32 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 27, 23 }, { 27, 22 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 30, 21 }, { 31, 21 }, { 31, 20 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 36, 15 }, { 37, 15 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 40, 13 }, { 41, 13 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 46, 13 }, { 47, 13 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 48, 13 }, { 49, 13 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 54, 13 }, { 55, 13 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 56, 13 }, { 57, 13 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 60, 13 }, { 61, 13 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 64, 15 }, { 65, 15 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 68, 16 }, { 68, 17 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 68, 18 }, { 68, 19 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 76, 25 }, { 77, 25 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 80, 15 }, { 81, 15 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 80, 21 }, { 81, 21 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 82, 20 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 82, 19 }, { 82, 18 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 82, 17 }, { 82, 16 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .097 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .098 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .099 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .100 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .101 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .102 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .103 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .104 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .105 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .106 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .107 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .108 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .109 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .110 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .111 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .112 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .113 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .114 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .115 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .116 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .117 = {
        .normalTreeCount = 56,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_PINECO, 23, 25 },
            { SPECIES_PINECO, 23, 25 },
            { SPECIES_AIPOM, 23, 25 },
            { SPECIES_FOMANTIS, 23, 25 },
            { SPECIES_AIPOM, 23, 25 },
            { SPECIES_KECLEON, 25, 26 },
            { SPECIES_VENONAT, 23, 25 },
            { SPECIES_PANSAGE, 23, 25 },
            { SPECIES_PANSEAR, 23, 25 },
            { SPECIES_PANPOUR, 23, 25 },
            { SPECIES_VENONAT, 23, 25 },
            { 2148, 23, 25 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 9, 81 }, { 9, 80 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 9, 79 }, { 9, 78 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 9, 77 }, { 9, 76 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 9, 71 }, { 9, 70 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 9, 69 }, { 9, 68 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 9, 67 }, { 9, 66 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 10, 63 }, { 11, 63 }, { 10, 61 }, { 11, 61 }, { -1, -1 }, { -1, -1 } },
            { { 12, 63 }, { 13, 63 }, { 12, 61 }, { 13, 61 }, { -1, -1 }, { -1, -1 } },
            { { 12, 75 }, { 13, 75 }, { 12, 74 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 16, 71 }, { 17, 71 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 18, 71 }, { 19, 71 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 22, 71 }, { 23, 71 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 21, 67 }, { 22, 67 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 37, 73 }, { 37, 72 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 42, 71 }, { 43, 71 }, { 42, 69 }, { 43, 69 }, { -1, -1 }, { -1, -1 } },
            { { 28, 51 }, { 29, 51 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 33, 61 }, { 33, 60 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 33, 59 }, { 33, 58 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 33, 55 }, { 33, 54 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 42, 63 }, { 43, 63 }, { 42, 62 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 40, 59 }, { 40, 58 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 40, 55 }, { 40, 54 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 50, 55 }, { 51, 55 }, { 50, 54 }, { 51, 54 }, { -1, -1 }, { -1, -1 } },
            { { 46, 49 }, { 47, 49 }, { 47, 48 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 48, 47 }, { 49, 47 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 9, 50 }, { 9, 51 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 10, 43 }, { 11, 43 }, { 11, 42 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 12, 39 }, { 13, 39 }, { 13, 38 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 22, 33 }, { 23, 33 }, { 23, 32 }, { 23, 31 }, { 22, 31 }, { -1, -1 } },
            { { 28, 33 }, { 29, 33 }, { 29, 34 }, { 29, 35 }, { -1, -1 }, { -1, -1 } },
            { { 30, 25 }, { 31, 25 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 34, 29 }, { 35, 29 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 36, 29 }, { 37, 29 }, { 37, 28 }, { 37, 27 }, { 36, 27 }, { -1, -1 } },
            { { 32, 19 }, { 33, 19 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 34, 19 }, { 35, 19 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 40, 25 }, { 40, 24 }, { 40, 23 }, { 41, 23 }, { -1, -1 }, { -1, -1 } },
            { { 50, 25 }, { 51, 25 }, { 51, 26 }, { 51, 27 }, { -1, -1 }, { -1, -1 } },
            { { 54, 31 }, { 54, 30 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 42, 39 }, { 43, 39 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 48, 21 }, { 49, 21 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 40, 16 }, { 41, 16 }, { 40, 15 }, { 41, 15 }, { 40, 14 }, { 41, 14 } },
            { { 32, 9 }, { 33, 9 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 36, 9 }, { 37, 9 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 38, 9 }, { 39, 9 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 24, 19 }, { 25, 19 }, { 24, 17 }, { 25, 17 }, { -1, -1 }, { -1, -1 } },
            { { 20, 21 }, { 21, 21 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 16, 21 }, { 17, 21 }, { 16, 20 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 9, 25 }, { 9, 24 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 9, 23 }, { 9, 22 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 34, 35 }, { 35, 35 }, { 34, 33 }, { 35, 33 }, { -1, -1 }, { -1, -1 } },
            { { 36, 35 }, { 37, 35 }, { 36, 33 }, { 37, 33 }, { -1, -1 }, { -1, -1 } },
            { { 38, 39 }, { 38, 38 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 38, 37 }, { 38, 36 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 50, 47 }, { 51, 47 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 52, 47 }, { 53, 47 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 46, 35 }, { 47, 35 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .118 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .119 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .120 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .121 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .122 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .123 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .124 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .125 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .126 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .127 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .128 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .129 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .130 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .131 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .132 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .133 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .134 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .135 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .136 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .137 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .138 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .139 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .140 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .141 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .142 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .143 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .144 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .145 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .146 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .147 = {
        .normalTreeCount = 24,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 3, 4 },
            { SPECIES_SEEDOT, 3, 4 },
            { SPECIES_SEEDOT, 3, 4 },
            { SPECIES_SPINARAK, 3, 4 },
            { SPECIES_HOOTHOOT, 3, 4 },
            { SPECIES_SHROOMISH, 3, 4 },
            { SPECIES_HOOTHOOT, 5, 7 },
            { SPECIES_SEEDOT, 5, 7 },
            { SPECIES_SEEDOT, 5, 7 },
            { SPECIES_ARIADOS, 5, 7 },
            { SPECIES_NOCTOWL, 5, 7 },
            { SPECIES_SHROOMISH, 5, 7 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 51, 73 }, { 52, 73 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 49, 67 }, { 50, 67 }, { 50, 66 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 44, 62 }, { 44, 61 }, { 44, 60 }, { 43, 60 }, { 43, 61 }, { 43, 62 } },
            { { 40, 57 }, { 41, 57 }, { 41, 56 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 39, 58 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 39, 63 }, { 39, 62 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 36, 65 }, { 37, 65 }, { 36, 64 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 26, 65 }, { 27, 65 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 24, 65 }, { 25, 65 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 22, 63 }, { 22, 62 }, { 22, 61 }, { 23, 61 }, { -1, -1 }, { -1, -1 } },
            { { 24, 53 }, { 24, 52 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 10, 69 }, { 10, 68 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 40, 48 }, { 40, 47 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 40, 46 }, { 40, 45 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 40, 44 }, { 40, 43 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 40, 40 }, { 40, 39 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 45, 40 }, { 45, 39 }, { 45, 38 }, { 46, 40 }, { 46, 39 }, { 46, 38 } },
            { { 45, 46 }, { 45, 45 }, { 46, 46 }, { 46, 45 }, { -1, -1 }, { -1, -1 } },
            { { 37, 28 }, { 38, 28 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 29, 27 }, { 29, 26 }, { 28, 27 }, { 28, 26 }, { -1, -1 }, { -1, -1 } },
            { { 23, 27 }, { 23, 26 }, { 22, 27 }, { 22, 26 }, { -1, -1 }, { -1, -1 } },
            { { 23, 25 }, { 23, 24 }, { 22, 25 }, { 22, 24 }, { -1, -1 }, { -1, -1 } },
            { { 23, 23 }, { 23, 22 }, { 22, 23 }, { 22, 22 }, { -1, -1 }, { -1, -1 } },
            { { 17, 23 }, { 17, 22 }, { 16, 23 }, { 16, 22 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .148 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .149 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .150 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .151 = {
        .normalTreeCount = 10,
        .specialTreeCount = 4,
        .normalSlots =
        {
            { SPECIES_RUFFLET, 50, 52 },
            { SPECIES_RUFFLET, 50, 52 },
            { SPECIES_RUFFLET, 50, 52 },
            { SPECIES_RUFFLET, 50, 52 },
            { SPECIES_VULLABY, 50, 52 },
            { SPECIES_VULLABY, 50, 52 },
            { SPECIES_VULLABY, 50, 52 },
            { SPECIES_VULLABY, 50, 52 },
            { SPECIES_VULLABY, 50, 52 },
            { SPECIES_VULLABY, 50, 52 },
            { SPECIES_RUFFLET, 50, 52 },
            { SPECIES_RUFFLET, 50, 52 },
        },
        .specialSlots =
        {
            { 2726, 54, 54 },
            { 2726, 54, 54 },
            { SPECIES_BRAVIARY, 54, 54 },
            { SPECIES_MANDIBUZZ, 54, 54 },
            { SPECIES_RUFFLET, 50, 52 },
            { SPECIES_VULLABY, 50, 52 },
        },
        .treeCoords =
        {
            { { 108, 383 }, { 109, 383 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 100, 361 }, { 100, 360 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 106, 373 }, { 106, 372 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 121, 366 }, { 121, 367 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 106, 383 }, { 107, 383 }, { 106, 382 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 106, 379 }, { 106, 378 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 104, 365 }, { 105, 365 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 102, 365 }, { 103, 365 }, { 102, 364 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 100, 359 }, { 100, 358 }, { 100, 357 }, { 101, 357 }, { -1, -1 }, { -1, -1 } },
            { { 104, 355 }, { 104, 354 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 82, 361 }, { 82, 360 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 82, 363 }, { 82, 362 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 121, 365 }, { 121, 364 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 132, 363 }, { 133, 363 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .152 = {
        .normalTreeCount = 6,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_CRABRAWLER, 51, 52 },
            { SPECIES_CRABRAWLER, 51, 52 },
            { SPECIES_CRABRAWLER, 51, 52 },
            { SPECIES_RUFFLET, 50, 51 },
            { SPECIES_RUFFLET, 50, 51 },
            { SPECIES_VULLABY, 50, 51 },
            { SPECIES_CRABRAWLER, 51, 52 },
            { SPECIES_CRABRAWLER, 51, 52 },
            { SPECIES_CRABRAWLER, 51, 52 },
            { SPECIES_VULLABY, 50, 51 },
            { SPECIES_VULLABY, 50, 51 },
            { SPECIES_RUFFLET, 50, 51 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 82, 325 }, { 82, 324 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 75, 335 }, { 76, 335 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 82, 339 }, { 82, 338 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 106, 335 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 106, 347 }, { 106, 346 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 82, 335 }, { 82, 334 }, { 82, 333 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .153 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .154 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .155 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .156 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .157 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .158 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .159 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .160 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .161 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .162 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .163 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .164 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .165 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .166 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .167 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .168 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .169 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .170 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .171 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .172 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .173 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .174 = {
        .normalTreeCount = 17,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_CRABRAWLER, 51, 52 },
            { SPECIES_CRABRAWLER, 51, 52 },
            { SPECIES_CRABRAWLER, 51, 52 },
            { SPECIES_EXEGGCUTE, 50, 52 },
            { SPECIES_EXEGGCUTE, 50, 52 },
            { SPECIES_EXEGGCUTE, 50, 52 },
            { SPECIES_CRABRAWLER, 51, 52 },
            { SPECIES_CRABRAWLER, 51, 52 },
            { SPECIES_CRABRAWLER, 51, 52 },
            { SPECIES_EXEGGCUTE, 50, 52 },
            { SPECIES_EXEGGCUTE, 50, 52 },
            { SPECIES_MUNCHLAX, 50, 52 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 77, 317 }, { 78, 317 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 76, 313 }, { 76, 312 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 76, 311 }, { 76, 310 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 76, 307 }, { 76, 306 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 76, 303 }, { 76, 302 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 76, 301 }, { 76, 300 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 76, 297 }, { 76, 296 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 77, 293 }, { 78, 293 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 79, 293 }, { 80, 293 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 97, 293 }, { 98, 293 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 99, 293 }, { 100, 293 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 99, 317 }, { 100, 317 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 101, 315 }, { 101, 314 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 101, 309 }, { 101, 308 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 101, 307 }, { 101, 306 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 101, 305 }, { 101, 304 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 101, 299 }, { 101, 298 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .175 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .176 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .177 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .178 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .179 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .180 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .181 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .182 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .183 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .184 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .185 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .186 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .187 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .188 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .189 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .190 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .191 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .192 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .193 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .194 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .195 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .196 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .197 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .198 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .199 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .200 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .201 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .202 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .203 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .204 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .205 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .206 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .207 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .208 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .209 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .210 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .211 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .212 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .213 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .214 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .215 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .216 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .217 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .218 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .219 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .220 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .221 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .222 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .223 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .224 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .225 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .226 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .227 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .228 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .229 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .230 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .231 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .232 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .233 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .234 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .235 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .236 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .237 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .238 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .239 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .240 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .241 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .242 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .243 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .244 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .245 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .246 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .247 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .248 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .249 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .250 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .251 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .252 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .253 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .254 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .255 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .256 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .257 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .258 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .259 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .260 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .261 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .262 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .263 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .264 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .265 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .266 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .267 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .268 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .269 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .270 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .271 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .272 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .273 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .274 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .275 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .276 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .277 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .278 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .279 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .280 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .281 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .282 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .283 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .284 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .285 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .286 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .287 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .288 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .289 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .290 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .291 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .292 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .293 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .294 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .295 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .296 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .297 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .298 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .299 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .300 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .301 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .302 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .303 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .304 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .305 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .306 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .307 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .308 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .309 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .310 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .311 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .312 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .313 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .314 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .315 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .316 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .317 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .318 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .319 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .320 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .321 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .322 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .323 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .324 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .325 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .326 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .327 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .328 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .329 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .330 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .331 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .332 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .333 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .334 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .335 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .336 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .337 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .338 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .339 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .340 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .341 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .342 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .343 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .344 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .345 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .346 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .347 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .348 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .349 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .350 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .351 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .352 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .353 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .354 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .355 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .356 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .357 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .358 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .359 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .360 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .361 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .362 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .363 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .364 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .365 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .366 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .367 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .368 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .369 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .370 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .371 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .372 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .373 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .374 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .375 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .376 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .377 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .378 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .379 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .380 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .381 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .382 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .383 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .384 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .385 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .386 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .387 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .388 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .389 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .390 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .391 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .392 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .393 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .394 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .395 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .396 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .397 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .398 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .399 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .400 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .401 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .402 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .403 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .404 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .405 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .406 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .407 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .408 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .409 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .410 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .411 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .412 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .413 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .414 = {
        .normalTreeCount = 13,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HOOTHOOT, 3, 4 },
            { SPECIES_PINECO, 3, 4 },
            { SPECIES_PINECO, 3, 4 },
            { SPECIES_WURMPLE, 3, 4 },
            { SPECIES_WURMPLE, 3, 4 },
            { SPECIES_WURMPLE, 3, 4 },
            { SPECIES_HOOTHOOT, 5, 7 },
            { SPECIES_SPINARAK, 5, 7 },
            { SPECIES_SPINARAK, 5, 7 },
            { SPECIES_WURMPLE, 5, 7 },
            { SPECIES_WURMPLE, 5, 7 },
            { SPECIES_WURMPLE, 5, 7 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1032, 138 }, { 1032, 137 }, { 1033, 137 }, { 1033, 138 }, { 1033, 139 }, { -1, -1 } },
            { { 1054, 162 }, { 1054, 163 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1043, 137 }, { 1043, 139 }, { 1044, 138 }, { 1044, 139 }, { -1, -1 }, { -1, -1 } },
            { { 1040, 141 }, { 1041, 141 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1045, 158 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1047, 179 }, { 1047, 178 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1054, 157 }, { 1054, 156 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1054, 139 }, { 1054, 138 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1054, 130 }, { 1054, 131 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1054, 183 }, { 1054, 182 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1045, 164 }, { 1045, 165 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1054, 167 }, { 1054, 166 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1047, 174 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .415 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .416 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .417 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .418 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .419 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .420 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .421 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .422 = {
        .normalTreeCount = 5,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_SPEAROW, 26, 27 },
            { SPECIES_HERACROSS, 26, 27 },
            { SPECIES_HERACROSS, 26, 27 },
            { SPECIES_COMBEE, 26, 27 },
            { SPECIES_COMBEE, 26, 27 },
            { SPECIES_COMBEE, 26, 27 },
            { SPECIES_SPEAROW, 29, 30 },
            { SPECIES_SPEAROW, 29, 30 },
            { SPECIES_SPEAROW, 29, 30 },
            { SPECIES_COMBEE, 29, 30 },
            { SPECIES_COMBEE, 29, 30 },
            { SPECIES_COMBEE, 29, 30 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 1162, 263 }, { 1163, 263 }, { 1162, 262 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1167, 261 }, { 1167, 260 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1163, 280 }, { 1164, 280 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1174, 277 }, { 1174, 276 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 1178, 261 }, { 1179, 261 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .423 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .424 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .425 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .426 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .427 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .428 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .429 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .430 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .431 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .432 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .433 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .434 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .435 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .436 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .437 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .438 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .439 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .440 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .441 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .442 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .443 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .444 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .445 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .446 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .447 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .448 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .449 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .450 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .451 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .452 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .453 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .454 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .455 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .456 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .457 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .458 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .459 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .460 = {
        .normalTreeCount = 3,
        .specialTreeCount = 0,
        .normalSlots =
        {
            { SPECIES_HERACROSS, 42, 44 },
            { SPECIES_AIPOM, 42, 44 },
            { SPECIES_AIPOM, 42, 44 },
            { SPECIES_NATU, 42, 44 },
            { SPECIES_NATU, 42, 44 },
            { SPECIES_NATU, 42, 44 },
            { SPECIES_HERACROSS, 45, 48 },
            { SPECIES_AIPOM, 45, 48 },
            { SPECIES_AIPOM, 45, 48 },
            { SPECIES_NATU, 45, 48 },
            { SPECIES_NATU, 45, 48 },
            { SPECIES_NATU, 45, 48 },
        },
        .specialSlots =
        {
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
            { SPECIES_NONE, 0, 0 },
        },
        .treeCoords =
        {
            { { 23, 32 }, { 24, 32 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 15, 47 }, { 16, 47 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
            { { 15, 13 }, { 16, 13 }, { -1, -1 }, { -1, -1 }, { -1, -1 }, { -1, -1 } },
        },
    },

    .461 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .462 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .463 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .464 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .465 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .466 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .467 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .468 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .469 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .470 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .471 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .472 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .473 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .474 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .475 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .476 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .477 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .478 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .479 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .480 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .481 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .482 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .483 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .484 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .485 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .486 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .487 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .488 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .489 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .490 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .491 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .492 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .493 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .494 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .495 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .496 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .497 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .498 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .499 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .500 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .501 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .502 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .503 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .504 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .505 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .506 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .507 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .508 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .509 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .510 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .511 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .512 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .513 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .514 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .515 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .516 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .517 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .518 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .519 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .520 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .521 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .522 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .523 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .524 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .525 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .526 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .527 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .528 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .529 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .530 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .531 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .532 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .533 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .534 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .535 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .536 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .537 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .538 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

    .539 = {
        .normalTreeCount = 0,
        .specialTreeCount = 0,
    },

};
