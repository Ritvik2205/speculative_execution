.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 87
test al, 59
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
and dil, -114
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb dl, 127
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
test dil, -116
cmovle dx, di
sbb al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
