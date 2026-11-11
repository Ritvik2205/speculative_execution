.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rax, 310915511
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdx], ax
and rdx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdx]
movsx dx, cl
sbb al, dl
mul dil
sbb si, cx
xor al, dl
xchg rbx, rdx
xor cl, 88
imul dil
mov ecx, ebx
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], bl
btc rcx, rdx
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 0
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], ecx
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -122
cmovno rdx, rdi
or bl, bl
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 118
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], -32
and ax, -4731
or al, -19
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 35
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
bt rcx, rcx
sbb ax, 1843
and rdi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
xor rbx, rdx
bswap esi
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
cmovb rax, rsi
bt esi, edx
and cl, 126
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 25
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 1 # instrumentation
and dx, word ptr [r14 + rax] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rax]
or al, -50
movzx cx, bl
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 7
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], -72
adc ebx, -55
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
