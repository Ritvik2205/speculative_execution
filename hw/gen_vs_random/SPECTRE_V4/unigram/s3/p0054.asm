.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rbx], rax
and rcx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rcx]
add bl, -2 # instrumentation
cmovs rsi, rdx
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
adc cl, al
xor esi, 66
bswap ebx
adc bl, dl
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 76
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], eax
cmovbe di, ax
or bl, sil
add cl, 101 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], dx
cmovnz esi, edx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 72
or edi, -64
and rcx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rcx]
mov cl, al
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -50
test eax, -31785616
adc ecx, 55
sbb edx, 100
or cl, al
mov ax, 31802
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
test sil, dil
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi], 88
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
and al, bl
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
cmovz rax, rdi
adc si, ax
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], 4
and rdi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdi]
xor al, dl
cmp ebx, 80
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 92
or rcx, rbx
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], esi
and ecx, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
