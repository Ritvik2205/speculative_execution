.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
test dx, 16353
or cl, bl
xor rsi, -117
jmp .bb_0.1
.bb_0.1:
and al, -55
xor cl, 24
xor dl, cl
test cl, 0
test dil, -51
and cl, 79
and rsi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rsi]
or bl, sil
and cl, cl
and al, -114
and bx, 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
