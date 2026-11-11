.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 51
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 18
bswap eax
movzx rax, cx
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 94
and rsi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 49
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 26
and rcx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rcx], -31
not al
and rsi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rsi]
btr rcx, 134
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
mul cl
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], cx
and rcx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
or dil, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv dil
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdx
cmovnbe edx, edx
and si, -70
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
sbb cl, cl
and rdx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rcx, 11
test dl, 24
cmovb rdx, rax
xor al, cl
imul rcx, rcx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rsi
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rsi
bswap edx
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], 63
and rsi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rbx], dx
and rdx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rdx]
btr rcx, rcx
cmovno ax, si
sbb rdx, rbx
or esi, 32
add dl, 81 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rcx]
sub sil, 71
test si, 100
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
