.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rdx, -19
sub al, cl
add ax, 6656
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 10
and ax, 21910
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea ebx, qword ptr [rdi]
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
jp .bb_0.3
jmp .exit_0
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
