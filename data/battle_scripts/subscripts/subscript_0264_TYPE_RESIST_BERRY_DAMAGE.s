.include "asm/include/battle_commands.inc"

.data

_000:
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_BATTLE_STATUS, BATTLE_STATUS_IGNORE_TYPE_IMMUNITY|BATTLE_STATUS_IGNORE_TYPE_EFFECTIVENESS, _338
    CompareVarToValue OPCODE_FLAG_SET, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_ONE_HIT_KO, _338
    CheckAbility CHECK_OPCODE_NOT_HAVE, BATTLER_CATEGORY_ATTACKER, ABILITY_NORMALIZE, _020
    UpdateVar OPCODE_SET, BSCRIPT_VAR_CALC_TEMP, 0x00000000
    GoTo _097

_020:
    CheckAbility CHECK_OPCODE_NOT_HAVE, BATTLER_CATEGORY_ATTACKER, ABILITY_REFRIGERATE, _036
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_MOVE_TYPE, TYPE_NORMAL, _095
    UpdateVar OPCODE_SET, BSCRIPT_VAR_CALC_TEMP, 0x0000000F
    GoTo _097

_036:
    CheckAbility CHECK_OPCODE_NOT_HAVE, BATTLER_CATEGORY_ATTACKER, ABILITY_AERILATE, _052
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_MOVE_TYPE, TYPE_NORMAL, _095
    UpdateVar OPCODE_SET, BSCRIPT_VAR_CALC_TEMP, 0x00000002
    GoTo _097

_052:
    CheckAbility CHECK_OPCODE_NOT_HAVE, BATTLER_CATEGORY_ATTACKER, ABILITY_GALVANIZE, _068
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_MOVE_TYPE, TYPE_NORMAL, _095
    UpdateVar OPCODE_SET, BSCRIPT_VAR_CALC_TEMP, 0x0000000D
    GoTo _097

_068:
    CheckAbility CHECK_OPCODE_NOT_HAVE, BATTLER_CATEGORY_ATTACKER, ABILITY_PIXILATE, _084
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_MOVE_TYPE, TYPE_NORMAL, _095
    UpdateVar OPCODE_SET, BSCRIPT_VAR_CALC_TEMP, 0x0000000D
    GoTo _097

_084:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_MOVE_TYPE, TYPE_NORMAL, _095
    UpdateVarFromVar OPCODE_GET, BSCRIPT_VAR_MOVE_TYPE, BSCRIPT_VAR_CALC_TEMP
    GoTo _097

_095:
    GetCurrentMoveData MOVEATTRIBUTE_TYPE

_097:
    GetItemHoldEffect BATTLER_CATEGORY_MSG_TEMP, BSCRIPT_VAR_TEMP_DATA
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 35, _197
    CompareVarToValue OPCODE_FLAG_NOT, BSCRIPT_VAR_MOVE_STATUS_FLAGS, MOVE_STATUS_SUPER_EFFECTIVE, _338
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 19, _204
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 20, _211
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 21, _218
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 22, _225
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 23, _232
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 24, _239
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 25, _246
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 26, _253
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 27, _260
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 28, _267
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 29, _274
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 30, _281
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 31, _288
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 32, _295
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 33, _302
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 148, _309
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_TEMP_DATA, 34, _316
    GoTo _338

_197:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, 0x00000000, _321
    GoTo _338

_204:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, 0x0000000A, _321
    GoTo _338

_211:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, 0x0000000B, _321
    GoTo _338

_218:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, 0x0000000D, _321
    GoTo _338

_225:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, 0x0000000C, _321
    GoTo _338

_232:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, 0x0000000F, _321
    GoTo _338

_239:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, 0x00000001, _321
    GoTo _338

_246:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, 0x00000003, _321
    GoTo _338

_253:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, 0x00000004, _321
    GoTo _338

_260:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, 0x00000002, _321
    GoTo _338

_267:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, 0x0000000E, _321
    GoTo _338

_274:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, 0x00000006, _321
    GoTo _338

_281:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, 0x00000005, _321
    GoTo _338

_288:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, 0x00000007, _321
    GoTo _338

_295:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, 0x00000010, _321
    GoTo _338

_302:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, 0x00000011, _321
    GoTo _338

_309:
    CompareVarToValue OPCODE_EQU, BSCRIPT_VAR_CALC_TEMP, 0x00000009, _321
    GoTo _338

_316:
    CompareVarToValue OPCODE_NEQ, BSCRIPT_VAR_CALC_TEMP, 0x00000008, _338

_321:
    // PlayBattleAnimation BATTLER_CATEGORY_MSG_TEMP, BATTLE_ANIMATION_HELD_ITEM
    // Wait 
    DivideVarByValue BSCRIPT_VAR_HP_CALC, 2
    // The {0} weakened {1}’s power!
    // PrintMessage 1131, TAG_ITEM_MOVE, BATTLER_CATEGORY_MSG_BATTLER_TEMP, BATTLER_CATEGORY_ATTACKER
    // Wait 
    // WaitButtonABTime 30
    //RemoveItem BATTLER_CATEGORY_MSG_TEMP

_338:
    End 
