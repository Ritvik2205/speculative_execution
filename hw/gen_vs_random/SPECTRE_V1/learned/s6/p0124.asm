.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc al
and rdi, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdi]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
and al, -54
and al, cl
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], cl
jnp .bb_0.3
jmp .exit_0
.bb_0.3:
lea ax, qword ptr [rdx]
adc cl, -19
and rax, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rax]
sbb al, -112
inc edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
