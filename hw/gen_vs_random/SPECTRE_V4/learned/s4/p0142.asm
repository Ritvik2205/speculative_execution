.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, sil
dec bl
cmp al, 116
sub al, 63
cmp dil, 101
and al, 49
sbb al, 102
or cl, al
xor eax, 365940537
or al, dil
or rax, -823069511
adc sil, al
and bl, -119
mov bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
