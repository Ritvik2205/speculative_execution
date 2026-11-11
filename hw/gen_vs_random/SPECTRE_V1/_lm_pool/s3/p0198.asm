.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 86
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], 64
sub bl, -6
sub bl, -6
and cl, -57
not bx
jmp .bb_0.2
.bb_0.2:
add sil, -68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
