.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe esi, ecx
and rdx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdx]
sub bl, 17
sub esi, ecx
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 73
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 98
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 30
and rcx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rdi]
cmovnbe edx, esi
and rdx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx], 29
neg esi
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
cmovns rcx, rbx
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
inc eax
sub dil, -10
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
btc rbx, 94
and rcx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rax]
cmovp si, ax
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
and al, dl
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], eax
sub cl, -74
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rdi
not bx
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 84
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 90
btc rcx, 52
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
cmovns ax, ax
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rbx], si
movzx si, sil
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], dx
movzx ax, dil
cmovnp rax, rdx
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 82
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rax]
imul eax, esi
add bl, -18 # instrumentation
mov rsi, rdi
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
