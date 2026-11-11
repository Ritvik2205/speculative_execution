.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 21 # instrumentation
adc bx, 88
cmp al, cl
add dil, 72
and rsi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rsi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
cmp bl, -114
cmp rcx, 77
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
jns .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
