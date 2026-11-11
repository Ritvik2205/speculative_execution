.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -7
sub al, 63
lea rdx, qword ptr [rcx + rsi + 29]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
adc bl, -76
lea dx, qword ptr [rdi + rsi]
lea rsi, qword ptr [rax + rdx + 26]
lea rdi, qword ptr [rbx + rbx + 21]
sub al, bl
test cl, -24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
