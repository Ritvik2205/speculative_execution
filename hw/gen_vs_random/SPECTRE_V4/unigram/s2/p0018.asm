.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
cmp ax, -15031
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rax
or cl, bl
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], ecx
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
btc rdx, rsi
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 3
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 27
bswap rdi
inc ecx
add bl, -72
and rdx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rdx]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rbx
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], dx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 41
add bl, -72
xchg al, dl
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdx]
imul eax, esi, 38
bt edi, 48
cmovnp rax, rbx
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], sil
add al, 122 # instrumentation
cmovns edi, esi
and rbx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rbx], bx
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
xor dil, dil
imul eax
sbb esi, ecx
and sil, dil
sub sil, -36
sub dl, dil
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 19
movzx rdx, al
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rax
sbb cl, 20
and rdi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdi]
sub bl, bl
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ebx
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
imul rbx
add al, cl
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
