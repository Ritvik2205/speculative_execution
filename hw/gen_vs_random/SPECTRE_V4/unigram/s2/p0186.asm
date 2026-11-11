.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub eax, -523763262
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
cmp cl, cl
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rax]
neg di
add rdx, rcx
sbb dl, -99
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 88
add bl, -109 # instrumentation
sbb edi, 79
mov edx, 62
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
sub bl, sil
sub edx, ecx
and rsi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rsi]
xor bx, 69
and rbx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
and rdi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 68
cmovnp di, dx
cmovnb edi, ebx
neg dl
xchg rbx, rdi
sub al, 98
and dil, cl
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 98
btc di, bx
sbb cx, bx
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
movzx rax, bx
and rax, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
and rdi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rdi], di
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], 45
cmovo edi, edx
dec rax
xor ax, di
btc rax, rcx
cmovnbe di, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
