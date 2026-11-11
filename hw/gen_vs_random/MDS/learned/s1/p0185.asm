.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -2
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
xor al, 9
jmp .bb_0.1
.bb_0.1:
test dl, cl
xor al, cl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
jmp .bb_0.2
.bb_0.2:
and sil, dil
and rsi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rsi]
or cl, dil
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
test dil, cl
and cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
