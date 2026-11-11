.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bswap rdx
mov dil, bl
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], eax
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
mul rbx
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -127
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 117
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 28
sbb eax, -417098439
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdi], 43
xor cl, dl
and rax, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
