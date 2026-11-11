.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
and dl, cl
add dl, 47
sub al, cl
cmp rbx, 70
add sil, 2
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rax]
adc cx, -30
add al, 18
and cl, cl
cmp dl, -115
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
