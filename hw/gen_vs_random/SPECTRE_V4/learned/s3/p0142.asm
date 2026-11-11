.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
cmp al, -78
cmp al, cl
mov cl, bl
sub dil, -28
or bl, cl
jmp .bb_0.1
.bb_0.1:
cmp ebx, -19
add al, -112
add bl, cl
add rsi, -100
or dl, dl
adc dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
