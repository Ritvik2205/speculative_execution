.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], 63
lea cx, qword ptr [rsi]
cmp rdx, -19
adc al, -92
lea rsi, qword ptr [rdi + rcx]
sbb bl, 79
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
sub al, -89
and bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
