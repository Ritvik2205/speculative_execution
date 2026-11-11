.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -31
and eax, 33
xor rax, -1657511731
jmp .bb_0.1
.bb_0.1:
or cl, 6
test al, 22
test sil, -96
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and bl, dil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
test rbx, 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
