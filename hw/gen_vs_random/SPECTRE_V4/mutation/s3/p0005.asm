.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 45 # instrumentation
cmovbe rbx, rsi
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 36
add al, 121 # instrumentation
movsx edi, si
and rdi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdi]
neg cx
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 7
btc rsi, 36
add al, -109 # instrumentation
cmovns cx, bx
sbb dl, bl
and rcx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rcx]
movsx edx, sil
adc eax, -3570960
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
test sil, -119
mov cl, al
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
or bl, al
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], al
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rdi
cmovb dx, si
adc si, -110
and rdx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rdx]
cmovnle di, bx
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
and rax, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rax]
inc al
bswap rsi
imul esi, ecx
not eax
sub edx, ebx
cmp dl, dl
cmovp ecx, esi
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
sbb sil, -11
and bl, al
xor al, -113
mov bl, dl
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
mov bl, dl
and ax, di
cmovl rdi, rax
and rsi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rsi], -55
add cl, 14 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdi
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
and bl, cl
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
