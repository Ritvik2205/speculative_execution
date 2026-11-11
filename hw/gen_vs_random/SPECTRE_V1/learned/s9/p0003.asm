.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc sil
sbb dl, cl
add dl, 47
sub al, sil
sub ax, 124
add al, bl
sub al, bl
add sil, dil
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], -1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
