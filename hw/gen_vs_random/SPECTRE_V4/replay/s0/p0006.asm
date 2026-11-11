.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -122
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], -104
xor rbx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdi]
bswap esi
adc ebx, 51
or bl, bl
bt rcx, rcx
sbb si, cx
btc rcx, rdx
or al, 27
mul dil
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
movzx cx, bl
cmovno rdx, rdi
sbb al, dl
and rbx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rbx]
xor cl, -73
bt esi, edx
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], eax
and cl, 32
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdx], ax
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], ecx
movsx dx, cl
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 25
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
mov ecx, ebx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 118
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
or al, -90
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 0
xor al, dl
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 4
cmovb rax, rsi
and rdx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], -72
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
imul dil
adc rax, -827748523
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], -32
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
sbb ax, 10407
and ax, -12738
xchg rbx, rdx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 1 # instrumentation
and dx, word ptr [r14 + rax] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
