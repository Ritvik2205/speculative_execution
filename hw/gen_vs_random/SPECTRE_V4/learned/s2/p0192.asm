.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, eax
adc al, 116
adc bl, 79
test al, -85
test al, dil
xor dl, -123
adc bl, cl
adc cl, 6
or eax, 143573881
dec dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
