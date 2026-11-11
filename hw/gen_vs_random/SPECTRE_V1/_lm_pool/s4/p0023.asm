.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 21 # instrumentation
adc dx, 32
adc sil, -77
add al, -13
mov cl, sil
and rsi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rsi], 63
or al, dil
test dl, -36
cmp ax, 7452
sbb ecx, 96
lea rax, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
