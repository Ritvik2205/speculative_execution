.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, -18
or al, cl
test sil, dl
or rsi, 70
or al, sil
xor cl, bl
or cl, 7
xor cl, sil
xor sil, al
xor cl, -13
and dil, dl
xor ax, -16696
bts bx, 3
xor cl, dl
test cl, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
