.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
add dil, -75
test cl, -24
lea si, qword ptr [rcx]
mov al, cl
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub rax, -1628299544
and cl, dil
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], sil
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
jno .bb_0.3
jmp .exit_0
.bb_0.3:
test dil, -116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
