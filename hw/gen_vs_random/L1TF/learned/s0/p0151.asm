.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, eax
sbb bl, dil
jmp .bb_0.1
.bb_0.1:
adc edi, 117
test di, 77
jmp .bb_0.2
.bb_0.2:
inc rax
test eax, 645518295
test ax, 22956
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
