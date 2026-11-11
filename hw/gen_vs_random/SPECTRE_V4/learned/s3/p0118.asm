.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 2
cmovz edx, edi
xchg si, bx
and rcx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rcx]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
add cl, 106 # instrumentation
cmovnp rdi, rsi
dec rbx
btc dx, 16
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
not si
sbb al, 123
cmovnbe rcx, rcx
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
sbb al, 123
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], si
cmp sil, 88
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
sbb bl, 57
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
bt ebx, edx
or ax, -15282
and dl, bl
sbb al, 32
imul ax, cx, 93
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
add sil, 110
xor bx, si
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
cmovnle rsi, rsi
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rdi], bx
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], di
mov rcx, 5862286138240743445
not si
add al, 5
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 38
sub dl, cl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
