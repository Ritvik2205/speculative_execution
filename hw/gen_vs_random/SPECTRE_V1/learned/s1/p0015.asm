.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub sil, -18
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
or ax, 18658
lea ax, qword ptr [rbx]
sub cl, sil
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], cl
mov dil, sil
jnp .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
