.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
add edi, 11
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
add edi, 11
sbb edi, 76
and rdx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edx
setnl cl
sbb ecx, 88
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
test eax, -558243208
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ebx
mov bl, dl
dec rax
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], di
btc cx, 240
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
cmovz ecx, ebx
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rsi]
xor esi, 41
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdi
cmp rax, -120490246
and dl, al
test cl, al
mul edx
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 67
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
and rbx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
adc bl, sil
and rcx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rcx]
imul rdi, rcx, 72
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
add bl, -102 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], di
or dl, 88
and dl, dil
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
bswap edi
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
movzx rdx, di
cmovl rax, rcx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], edi
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
