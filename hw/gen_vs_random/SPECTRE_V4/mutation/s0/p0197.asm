.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 38
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 118
xor cl, 13
xchg rbx, rdx
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
mul dil
bt rcx, rcx
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], -32
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
bt esi, edx
or al, -16
btc rcx, rdx
movsx dx, cl
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 25
sbb si, cx
and ax, -6897
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], ecx
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], -112
adc rax, 519150753
cmovno rdx, rdi
or bl, bl
mov ecx, ebx
and rbx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
adc ebx, 66
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 1 # instrumentation
and dx, word ptr [r14 + rax] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rax]
or al, -16
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 4
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 0
xor rbx, rdx
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 35
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], bl
and cl, 32
bswap esi
sbb al, dl
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdx], ax
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdi]
sbb ax, 16480
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], eax
and rdx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdx]
xor al, dl
movzx cx, bl
cmovb rax, rsi
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
imul dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
