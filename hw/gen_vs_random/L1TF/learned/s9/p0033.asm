.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec dx
xor sil, cl
sub dl, al
sbb eax, -403815802
and cl, 82
jmp .bb_0.1
.bb_0.1:
imul rbx
xor al, cl
add sil, -61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
