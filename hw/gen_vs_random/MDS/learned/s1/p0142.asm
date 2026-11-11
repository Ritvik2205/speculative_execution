.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -4410
test dl, 48
test sil, 41
btr ax, bx
test ecx, -1843375753
xor cl, 24
jmp .bb_0.1
.bb_0.1:
xor dl, bl
not bl
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
test cl, dil
xor cx, -18
xor rax, -91
and al, 84
or sil, dil
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
