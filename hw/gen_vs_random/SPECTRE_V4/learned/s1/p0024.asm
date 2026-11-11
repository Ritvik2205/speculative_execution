.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 16313
sub al, 69
test al, sil
test edi, 2142010790
or dl, sil
adc dil, cl
mov sil, dl
cmp al, -106
xor bl, 126
or al, cl
dec bl
adc dil, dl
xor cl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
