.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
xor rsi, 66
sub bl, -6
sub al, cl
xor dl, dl
and rax, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rax]
sbb al, -107
adc dil, 80
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
