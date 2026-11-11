.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test si, ax
and cl, sil
xor bl, 27
xor dil, dl
cmp di, -8
dec bl
xor rdx, 106
and al, 5
cmp rax, 2096656187
btc edx, 108
jmp .bb_0.1
.bb_0.1:
adc sil, -63
and sil, -84
test sil, -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
