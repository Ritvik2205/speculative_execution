.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rdx
xor si, -73
adc edx, -86
and al, cl
mov bl, sil
cmp bl, dl
sbb al, -14
adc dil, bl
adc dil, -48
xor ax, 13329
and sil, -84
or rcx, 71
cmp dil, dl
or ax, 7381
sbb sil, -124
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 8
inc sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
