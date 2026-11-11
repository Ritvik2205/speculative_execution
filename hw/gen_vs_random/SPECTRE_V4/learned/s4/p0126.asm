.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
or dl, -26
or cl, -104
adc al, cl
add rbx, 70
add dl, -8
xor ax, 30500
adc cl, sil
jmp .bb_0.1
.bb_0.1:
sub dil, -40
and dx, -107
adc bl, 79
xor al, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
