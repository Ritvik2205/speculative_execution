.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rdi
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
test dil, 70
sub ebx, ecx
cmp edi, -104
or edx, edi
inc di
adc edi, 57
cmovz ax, ax
cmp esi, 96
add esi, -5
cmovp di, bx
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
add dl, -94 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdx]
add cl, 106 # instrumentation
cmovnp rbx, rcx
sub dl, dl
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
mov rax, -8696242625349627833
and rsi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
cmovnbe esi, edx
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], si
add cl, 106 # instrumentation
cmovnp rdi, rbx
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
movzx cx, cl
xor bl, 93
sbb sil, 108
cmp rax, -120490246
or dil, dl
add sil, 26
sub dl, 43
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], esi
cmovnl rcx, rbx
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 2
or dx, bx
sbb cx, 78
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 28
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dil
and rdi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdi]
btr rdx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
