.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -4731
test bl, al
test ecx, -1293796332
sbb al, 43
adc eax, -60
test sil, bl
and al, -1
and rax, 86
test eax, 1340292467
adc al, 116
dec dl
sub dl, 107
adc cl, -66
mov dl, cl
add dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
