.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe rdx, rbx
and rbx, 0b1111111111111 # instrumentation
movzx rdx, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
test al, 52
cmovz ebx, eax
test al, 72
bswap esi
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
movsx edx, cl
xor rdx, 106
xchg dil, al
movzx edx, cl
add bl, -52 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rsi]
add bl, 54 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
cmovbe rsi, rbx
imul eax, ebx
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
xor dil, 37
movzx ebx, al
add al, -72 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rcx]
neg dl
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], bx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
dec bx
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], 12
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 6
dec rax
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
adc rbx, rax
sbb al, 43
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -109
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
cmovno cx, cx
neg rbx
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
test cx, bx
btr ax, 109
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rsi]
btc rax, rcx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
