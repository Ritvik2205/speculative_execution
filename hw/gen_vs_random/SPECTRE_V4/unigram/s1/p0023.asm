.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 27
and rdx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdx]
add bl, 63 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdi]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rax
mov rax, -8696242625349627833
or ebx, esi
sbb si, cx
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
adc esi, 90
mov esi, ecx
movzx rbx, si
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], 49
bt edx, ecx
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdx
inc esi
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rbx]
test esi, 83
adc al, 69
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], esi
bts esi, eax
btc rbx, 64
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, edx
add al, al
xor al, dil
add ax, 28666
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edx
bswap edx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rsi]
btc dx, 16
add edx, edi
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], ax
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 98
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rdi]
xor si, 39
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edi
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], ecx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], esi
imul rsi, rbx
movzx ecx, sil
cmovnp rdx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
