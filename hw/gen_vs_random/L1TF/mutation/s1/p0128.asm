.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rsi]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -109
sub cl, bl
and rsi, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rsi]
test edx, 1891691791
lea cx, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], -98
adc bl, 86
and rsi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rcx]
dec ecx
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
