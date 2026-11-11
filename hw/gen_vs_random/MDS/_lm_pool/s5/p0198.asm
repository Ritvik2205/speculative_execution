.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, al
xor bl, -102
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 66
xor rdx, -59
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
and sil, 89
jmp .bb_0.1
.bb_0.1:
test dl, 9
xor dil, -5
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
or cl, dil
jmp .bb_0.2
.bb_0.2:
or al, 16
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
test esi, 1857129931
and sil, -56
jmp .bb_0.3
.bb_0.3:
and ax, -4410
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
btc edi, 230
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
