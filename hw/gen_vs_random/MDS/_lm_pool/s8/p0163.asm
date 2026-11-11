.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
xor cl, sil
or dil, al
xor di, -83
and dil, 125
and esi, 83
jmp .bb_0.1
.bb_0.1:
test rdi, 58
and dil, -39
xor dl, 34
test sil, -96
and bl, 68
and di, 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
