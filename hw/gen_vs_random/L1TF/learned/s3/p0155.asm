.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ecx
add dl, 43 # instrumentation
adc cl, cl
sbb eax, 544669545
not cl
inc esi
and rsi, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rax]
adc edi, 122
adc rdx, 6
or bx, 0b1000000000000000 # instrumentation
bsf di, bx
bt esi, 36
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 54
add dl, -124 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rsi]
bt edi, 230
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
