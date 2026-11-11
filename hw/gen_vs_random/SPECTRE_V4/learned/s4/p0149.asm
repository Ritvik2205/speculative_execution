.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 71
test dil, -5
adc cl, -86
or dl, 71
or dl, al
jmp .bb_0.1
.bb_0.1:
adc bl, 35
inc cl
and rdx, 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
