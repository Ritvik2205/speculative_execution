.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rdi]
movzx eax, bl
sub esi, -10
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], 24
add bl, 95 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rbx]
btc rdi, rax
cmovnbe rax, rdi
mov rax, rdi
add rdi, 111
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], di
inc rdx
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rbx
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
movzx ebx, dil
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rcx
and rsi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rsi]
sub dil, -28
and rsi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rbx]
sbb edi, 107
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
bswap esi
xchg eax, edi
btc rdx, 178
or rbx, -107
add bx, bx
add dl, 56 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 90
and rdx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dil
neg rdi
and rsi, 0b1111111111111 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rax
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 39
xchg cx, cx
and rax, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdi]
and al, cl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rsi]
and sil, dl
and rcx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
sub rbx, rbx
mov bx, si
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rbx
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
mov si, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
