.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add esi, ebx
add dx, -90
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 79
test bl, 24
inc di
cmp rsi, 53
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rcx]
cmovle dx, ax
add bl, -10 # instrumentation
cmovnbe ebx, eax
add sil, -71 # instrumentation
adc sil, bl
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rbx
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rax
movzx rbx, di
dec al
or edi, 42
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ecx
mov rdx, 84
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
bts rsi, rbx
bt eax, 84
sbb edx, 11
cmp cl, 76
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], eax
sbb dil, 18
neg ax
add edx, 27
btc eax, 50
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
and rcx, -102
sub edi, 86
add bl, cl
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], 67
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 68
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
add di, -74
adc ebx, 117
cmovnl rax, rsi
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rax]
xor ax, bx
cmovns dx, bx
imul cx, dx, 8
sbb al, 123
xor dil, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
