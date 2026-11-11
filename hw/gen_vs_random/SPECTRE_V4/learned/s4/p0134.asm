.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc ecx
or al, cl
or dil, -16
add cl, sil
adc bl, -20
test ecx, 860867711
xor al, dil
sub dl, 107
sbb dl, -71
xor cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
