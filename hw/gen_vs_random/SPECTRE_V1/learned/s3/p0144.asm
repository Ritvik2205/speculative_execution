.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -33
mov al, dil
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdx]
test dl, -105
xor dl, al
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
and cl, -57
jnp .bb_0.3
jmp .exit_0
.bb_0.3:
sbb esi, 35
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1371410782
sub al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
