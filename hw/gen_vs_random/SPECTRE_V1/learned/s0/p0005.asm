.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, -37
or bl, 97
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], -51
xor al, dil
adc al, -82
test dil, -116
and al, bl
and dl, bl
xchg bl, dil
mov cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
