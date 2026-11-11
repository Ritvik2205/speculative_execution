.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, ebx
inc rdi
lea si, qword ptr [rsi]
and rbx, rax
sbb cl, 105
adc cl, -19
sub dil, dl
test al, -71
and dil, -93
or ax, 18658
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
