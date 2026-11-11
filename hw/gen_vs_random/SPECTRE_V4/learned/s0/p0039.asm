.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 83
or dx, 0b1000000000000000 # instrumentation
bsf di, dx
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
xchg ecx, ebx
and rax, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 120
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edx
btc ax, cx
or rsi, 57
add al, 118 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 75
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
add rdi, -94
cmovnp rbx, rdx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rax]
btr cx, di
btc cx, di
cwde
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 34
and dl, sil
cmovnb rdx, rbx
sub dil, -10
not cx
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
lea bx, qword ptr [rdx]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 71
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rax]
movzx rax, dl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 30
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
or bx, cx
lea rax, qword ptr [rbx + rdx + 17]
or sil, 63
adc bl, al
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
imul cl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
add bl, -72
inc dx
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], eax
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
