.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, -123
or dl, 71
movsx dx, bl
cmp bl, dl
dec al
xor sil, dil
dec bl
and dl, dl
adc bl, cl
sbb di, -105
add al, -1
mov bx, 27738
sub al, 0
test esi, -2111618709
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
