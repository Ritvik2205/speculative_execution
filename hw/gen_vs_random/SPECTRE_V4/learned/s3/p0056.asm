.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edi, 70
sub dx, -12
adc al, dl
xor al, 118
add al, bl
test al, -38
sub sil, cl
sbb bl, dil
add bl, sil
xor cl, dl
or ax, -26182
xor al, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
