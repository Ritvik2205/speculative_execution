.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rsi, 53
jp .bb_0.1
jmp .exit_0
.bb_0.1:
imul al
and al, -54
adc bl, dl
cmp cl, sil
xchg ecx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
