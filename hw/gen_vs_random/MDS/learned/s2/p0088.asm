.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 91
jmp .bb_0.1
.bb_0.1:
test dl, sil
btr si, di
btr si, cx
or rax, 1461812833
and al, -54
xor dl, cl
and dil, dl
and ax, 29207
xor dil, cl
jmp .bb_0.2
.bb_0.2:
test esi, 425331143
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
