.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], cx
cmp rax, -1365488374
sub al, dil
inc bl
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov bl, dl
sub cl, dil
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
sbb ebx, 62
sbb al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
