.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -42 # instrumentation
lea cx, qword ptr [rbx + rax]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rax
and rdx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rdx]
lea dx, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rdi], bx
xor cx, 12
and rsi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
lea rax, qword ptr [rdx + rdx + 53]
mov al, -28
and rsi, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rsi]
adc rcx, rax
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 29
xor rax, 620504108
imul eax, eax, 93
bswap edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
