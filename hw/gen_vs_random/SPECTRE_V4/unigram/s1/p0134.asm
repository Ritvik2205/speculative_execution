.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], edi
and rcx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], ax
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], dil
or al, al
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rcx
add bl, -74 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], dl
add cl, dl
and rcx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
add rax, rdx
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx], 84
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
add cl, -119 # instrumentation
sbb edi, 72
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
or dx, dx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -18
and bl, 76
add al, al
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], cx
add bl, bl
btc rsi, 36
cmovl si, bx
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], si
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], ax
and rdi, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
add edx, eax
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], sil
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], edx
xchg al, al
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
xchg cl, dl
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
add sil, 3
xchg rdi, rbx
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 6
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rcx
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -103
and rsi, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rsi]
or dx, 0b1000000000000000 # instrumentation
bsf cx, dx
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
mov cl, dl
movsx si, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
