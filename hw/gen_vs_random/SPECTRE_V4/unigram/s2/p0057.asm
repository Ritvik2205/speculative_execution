.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul ecx
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
test cl, dl
bt rdx, 67
and rsi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rsi]
xor edx, 6
bt si, dx
movzx cx, bl
sub dl, sil
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 94
cmovnbe rcx, rax
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
movsx ebx, bx
cmovnp di, bx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
cmp dl, -82
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], cx
dec rax
and rbx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rbx]
cmovns rsi, rdi
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ebx
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], eax
xor dil, dil
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], bx
cmovnp rax, rbx
add bl, al
sbb ax, 10407
and rdx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
btr edi, 54
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], bl
add ax, 17333
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 76
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], sil
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 17
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rdx
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
imul ebx, esi, 20
cmp cl, dil
btc ax, 78
adc si, dx
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
