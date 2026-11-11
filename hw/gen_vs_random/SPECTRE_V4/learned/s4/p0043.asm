.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 2
cmovz edx, ecx
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
bts esi, 241
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
add cl, 106 # instrumentation
cmovnp rdi, rsi
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 120
dec rdx
xor bl, 93
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], si
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
bt edi, esi
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
cmovp ebx, ebx
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
xor sil, 56
cmovle si, si
add rax, rcx
or dil, 87
cmovle edx, esi
add rdi, -94
adc eax, -79
bt ebx, ecx
cmp sil, 88
cmovnp si, cx
or rdx, rax
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and bx, 95
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
movzx rax, dil
sbb cl, 19
bt esi, 227
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdx
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], dx
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
adc al, bl
test eax, -818909344
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], cx
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
movzx rsi, cx
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
and rax, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rsi
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
test ebx, -595096626
cmovs rbx, rdi
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
