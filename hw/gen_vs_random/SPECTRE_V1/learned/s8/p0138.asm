.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 21 # instrumentation
adc cx, 23
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rbx]
test rdi, rcx
bt eax, edx
cmp dl, 119
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 4
adc eax, 34
sbb edx, 105
and rsi, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
