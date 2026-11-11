.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
sbb dil, -93
add al, -47
sbb al, 118
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
or rdx, 92
or bl, dl
and cl, 86
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub sil, -18
sub sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
