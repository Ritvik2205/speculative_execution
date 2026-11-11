.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, al
and si, -121
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rsi
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
or dx, 125
or bl, sil
jmp .bb_0.2
.bb_0.2:
test cl, al
test cl, 54
test esi, 1857129931
and rdx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rdx]
xor dil, -5
test al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
