.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -61
and si, -121
or bl, sil
xor si, 91
jmp .bb_0.1
.bb_0.1:
test dl, 9
or rdi, -11
or cl, sil
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
or di, 3
xor al, 115
test al, cl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -22
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
