.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 3
sbb dl, 127
or edx, 81
sub dx, -23
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
sbb sil, dil
sbb al, dl
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp rbx, 94
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
sub al, bl
cmp dil, -78
cmp ax, 7046
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
