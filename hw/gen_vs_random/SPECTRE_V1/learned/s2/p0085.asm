.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, dl
add bl, 70
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and cx, 65
test rax, 1469613902
cmp sil, 25
sub dl, al
lea ecx, qword ptr [rax]
and al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
