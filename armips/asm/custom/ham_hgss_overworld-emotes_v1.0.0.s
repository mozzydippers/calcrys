.nds
.thumb

.open "base/arm9.bin", 0x02000000

.org 0x02046B48
    ldr r3, =(ShowEmoteOnObject | 1)
    bx r3
.align 4
.pool
    .fill 0x02046B64 - ., 0x00
.close

.open "base/arm9.bin" , 0x02000000

.org 0x20F6BE0

ShowEmoteOnObject:
    push {r4-r6, lr}                    ; Preserve caller registers and return address
    add r4, r0, #0                      ; Copy ScriptContext* to r4 so helper calls cannot overwrite it
    bl 0x0203FE2C
    add r5, r0, #0                      ; Save the target argument to r5
    add r0, r4, #0
    bl 0x0203FE2C
    add r6, r0, #0                      ; Save the emote argument to r6

    add r0, r4, #0
    add r0, #0x80                       ; Address of the FieldSystem* member within ScriptContext
    ldr r4, [r0]                        ; Read that pointer into r4
    add r0, r4, #0
    add r1, r5, #0
    bl 0x020403AC               ; Resolved object ID (from literal or variable) to r0
    add r5, r0, #0                      ; ...and back to r5
    add r0, r4, #0
    add r1, r6, #0
    bl 0x020403AC               ; Resolved emote selector (from literal or variable) to r0

    cmp r0, #13                         ; Check that the emote selector is valid (0-13)...
    bhi SkipEffect                      ; ...otherwise skip ahead to do nothing (no emote)
    add r6, r0, #0                      ; Save native emote effect ID (0-13) to r6

    add r0, r4, #0
    add r1, r5, #0
    bl 0x02041C70              ; Returns the target object pointer in r0, or NULL if not found
    cmp r0, #0
    beq SkipEffect                      ; ...otherwise skip ahead to do nothing (no target)

    add r1, r0, #0
    add r0, r4, #0
    add r2, r6, #0
    bl 0x02203AB4                       ; Trigger Emote (r2) on target (r1)
    mov r0, #1                          ; Yield the script interpreter; the queued task handles completion
    pop {r4-r6, pc}

SkipEffect:
    mov r0, #0                          ; No task started; allow the interpreter to continue
    pop {r4-r6, pc}

.align 4
.pool
.close
