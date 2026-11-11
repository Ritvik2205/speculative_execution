.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
sbb al, 118
sub al, 63
lea rax, qword ptr [rdx + rbx + 64]
and dil, bl
lea ax, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
sub al, dil
inc edx
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
xor dil, -37
jnp .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
