.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, 81
test dl, sil
jmp .bb_0.1
.bb_0.1:
or bl, dil
test dl, dil
or cl, cl
xor dil, bl
or cx, -42
or dil, al
xor cl, sil
jmp .bb_0.2
.bb_0.2:
or dl, -89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
