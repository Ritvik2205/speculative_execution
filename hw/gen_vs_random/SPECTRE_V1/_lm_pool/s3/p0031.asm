.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 22
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
xor edx, 98
and ax, 23118
and dl, dil
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
sbb dl, cl
test dil, -116
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
