.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rax]
cmp dx, cx
and cl, bl
not rbx
adc cl, dl
xor cl, 13
movsx rax, si
neg cl
mov al, cl
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rbx
btr ebx, 116
adc bl, al
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], -2
btc di, 83
or rbx, -108
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 4
mov bl, 29
cmp al, 98
cmovnle dx, si
and rdi, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 4
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rbx]
btr ebx, 116
imul esi
add al, -72 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdi]
imul rax, rdi, -89
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rsi], 41
xor eax, 167244411
movzx rsi, ax
adc bx, 52
and rsi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rsi], 49
and rbx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rbx]
cmovl di, cx
btr rdi, 145
xor ax, -6064
and dl, -11
movzx rax, cx
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
xchg al, al
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
cmovbe cx, ax
add sil, bl
and rax, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rax]
mov bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
