.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc ecx, eax
or bx, 81
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
or rsi, 31
cmovle di, cx
btr rdi, 129
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rbx
and cl, -76 # instrumentation
cmovl ax, cx
and rdx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdx]
cmovp ax, ax
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 79
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
or rsi, 35
and rsi, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rsi]
test sil, -55
not rsi
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
cmovnb edx, ebx
and rsi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
