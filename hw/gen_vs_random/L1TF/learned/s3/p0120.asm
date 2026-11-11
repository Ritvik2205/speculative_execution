.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and dil, dil
jmp .bb_0.2
.bb_0.2:
inc cl
and rdi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdi]
adc dx, 40
sub ax, dx
sbb al, 92
lea si, qword ptr [rdx + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
