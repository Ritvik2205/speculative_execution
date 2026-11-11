.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
not dil
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
xor al, al
and rdx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdx]
xchg bl, al
sbb dil, bl
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
sbb cl, 105
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
