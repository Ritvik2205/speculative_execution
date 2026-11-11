.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
or ebx, -124
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 27
and cl, 86
cmp bx, 95
sub di, 33
jmp .bb_0.1
.bb_0.1:
imul rax, rsi, 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
