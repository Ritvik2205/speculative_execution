.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, 2960
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -14
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 40
cmp bl, 12
bt dx, 193
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], 36
and rdi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rsi]
mov dl, al
add di, dx
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rdx
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], ax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], di
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 44
imul ecx, eax, 11
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
adc edx, -125
bts cx, 158
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dil
cmovnz rax, rdx
or rsi, -5
neg rcx
add bl, -52 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rcx]
cmovnb edi, eax
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 53
cmp sil, -100
and rbx, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ecx
inc rbx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
mul eax
bswap ebx
add cl, -59 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
inc eax
btr bx, dx
and di, -34
btc rdi, rcx
and rdx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdx], -50
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], 31
adc cl, 111
sbb di, ax
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], edi
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
