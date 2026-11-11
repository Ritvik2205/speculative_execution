.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ecx
add dl, 43 # instrumentation
adc cl, cl
sbb edx, 59
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], esi
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 726281652
and rsi, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
lea ebx, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
add cl, 102 # instrumentation
sbb si, ax
cmovnl ebx, eax
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], dx
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
