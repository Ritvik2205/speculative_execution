.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 94
cmovl ebx, edx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edi
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
cmovnp ecx, eax
neg rcx
and rax, 0b1111111111111 # instrumentation
movzx rax, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], -108
sub di, 9
adc al, sil
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ecx
and rcx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dil
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
add esi, 100
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
test rbx, 1219566903
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
imul rbx, rax
movsx ebx, si
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], eax
cmovo dx, cx
and rdx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdx]
test cl, -10
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 4
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], bx
cmovnz rdi, rsi
add bl, -74 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
adc di, -78
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], 99
add cl, 35 # instrumentation
cmovnb rbx, rdi
mov bl, cl
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
or eax, 1 # instrumentation
add al, 49 # instrumentation
adc al, sil
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rsi
sbb si, 64
sbb edx, 29
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
and sil, sil
and rcx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 57
and bl, dil
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
bts si, 97
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], cx
sbb edi, 107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
