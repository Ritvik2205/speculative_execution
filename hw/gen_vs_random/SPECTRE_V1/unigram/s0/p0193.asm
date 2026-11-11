.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -97 # instrumentation
sets dl
add dil, 13 # instrumentation
setns dil
add bl, -9 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdx]
xchg dil, al
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 36 # instrumentation
sub rax, rax
add al, 110 # instrumentation
add dl, -22 # instrumentation
cmovnz edx, edx
cmovp ax, bx
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], esi
add di, 44
and rdx, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rdx]
imul rdx
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], al
and rdx, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
