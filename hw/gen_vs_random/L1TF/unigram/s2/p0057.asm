.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 45
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
cmovo bx, si
or esi, ecx
adc cl, dil
mov cl, 43
and rcx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rax], 68
add dil, -58 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
cmovnl eax, edx
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 86
not rax
xchg dl, al
cmovl rbx, rbx
and rsi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rsi]
cmovb di, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
