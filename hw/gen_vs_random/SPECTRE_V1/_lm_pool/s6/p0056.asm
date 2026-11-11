.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
imul al
add dil, -75
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
inc cl
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
xchg rax, rdx
inc esi
sub al, dl
jp .bb_0.3
jmp .exit_0
.bb_0.3:
sub dl, -12
sub ax, -16648
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
