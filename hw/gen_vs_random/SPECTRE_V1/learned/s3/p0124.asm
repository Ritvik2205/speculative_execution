.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 71
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
adc bl, 88
jmp .bb_0.1
.bb_0.1:
sbb al, 118
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
sub cl, -47
add al, al
jle .bb_0.3
jmp .exit_0
.bb_0.3:
sub al, -66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
