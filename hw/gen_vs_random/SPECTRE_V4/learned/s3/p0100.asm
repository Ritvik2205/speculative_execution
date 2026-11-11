.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec di
mov bl, cl
cmp dil, al
and al, 75
xor al, -15
sbb al, 57
or bl, 80
test dl, dil
xor ax, 20236
mov cl, dl
adc dl, dil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
