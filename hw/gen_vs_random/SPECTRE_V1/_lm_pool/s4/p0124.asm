.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dil
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 3
add sil, 2
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea rcx, qword ptr [rbx + rsi + 78]
cmp rcx, 73
cmovnz rbx, rcx
adc al, -82
adc sil, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
