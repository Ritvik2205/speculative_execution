.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
and al, bl
or bl, dl
cmp al, dl
test dl, -125
and al, bl
sub ax, si
adc sil, al
or dl, al
and bl, dl
adc bl, -20
or di, 29
and al, 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
