.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc bl, dl
and rdi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdi], 89
cmovbe ax, dx
and rbx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rbx]
cmovp ebx, ebx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dil
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], edi
or ax, cx
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rsi]
test sil, dl
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -16
cmp eax, 1521417271
adc rsi, 82
sbb edx, 90
and rbx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 85
adc cl, -86
and rsi, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], ecx
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdi]
add sil, 70 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
add bl, 102 # instrumentation
cmovnp ebx, ecx
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rsi
and dil, dl
and rsi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rsi]
or di, 0b1000000000000000 # instrumentation
bsf ax, di
and rax, 0b1111111111111 # instrumentation
or bl, 28
xor dil, sil
and cl, dl
neg ax
cmovl rbx, rsi
adc dil, dl
mov rsi, rdi
bt ebx, edi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], ax
xchg eax, ecx
and dx, -107
xchg rax, rdi
or rax, -823069511
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 84
mov esi, 1115061743
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
