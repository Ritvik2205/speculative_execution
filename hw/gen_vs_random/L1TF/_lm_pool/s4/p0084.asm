.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, dil
sbb al, -23
sub sil, -99
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], 46
xor al, 16
adc bl, 86
sbb rax, 2044012157
lea rax, qword ptr [rsi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], sil
and cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
