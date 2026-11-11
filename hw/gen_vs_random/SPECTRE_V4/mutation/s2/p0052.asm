.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 38
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], -104
xor rbx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdi]
bswap esi
adc ebx, -55
or bl, bl
bt rcx, rcx
sbb si, cx
btc rcx, rdx
or al, -50
mul dil
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
movzx cx, bl
cmovno rdx, rdi
sbb al, dl
and rbx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rbx]
xor cl, -15
bt esi, edx
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], eax
and cl, -118
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdx], ax
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], ecx
movsx dx, cl
xor ax, 15671
xchg ebx, eax
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax]
xor rsi, rdi
xor eax, 1185843233
sbb cl, 12
add dil, 105
sbb rdx, -43
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
xor al, dl
and rdi, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rdi]
adc ebx, -5
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax], 96
xchg dl, dil
cmovo ebx, ecx
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
test al, dl
and rcx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rcx]
test ecx, eax
btc di, 107
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 36
sbb edi, 107
cmovs rbx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
