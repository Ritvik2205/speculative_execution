.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 68
xor al, 9
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
btc rcx, 64
or rdx, -48
and dl, -73
xor al, dil
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
xor di, -83
test cl, 62
xor ax, 23633
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
