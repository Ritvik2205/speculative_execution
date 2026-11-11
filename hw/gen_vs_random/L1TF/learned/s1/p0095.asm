.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 2
mov dil, cl
or cx, 100
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
setnb dil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], -2
adc bl, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
