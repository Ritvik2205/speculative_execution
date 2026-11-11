.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dil
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
test dil, -116
sbb bl, 79
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
sub al, -66
xor dl, cl
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
jnp .bb_0.4
jmp .exit_0
.bb_0.4:
or edi, 76
mov bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
