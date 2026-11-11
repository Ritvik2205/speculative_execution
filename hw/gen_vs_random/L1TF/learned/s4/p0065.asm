.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 99
or eax, -401020526
jmp .bb_0.1
.bb_0.1:
xor dil, al
sub edx, -33
xor dl, cl
and dil, 58
xor rax, 20
or sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
