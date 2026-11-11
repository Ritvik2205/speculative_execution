.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rdx
adc rbx, 60
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdi], eax
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
sbb cl, al
xor esi, -112
bts di, dx
cmp bl, 12
sub al, bl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rbx]
mov dl, dl
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
xchg rsi, rax
imul rdx, rdx
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
neg rax
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 85
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], -65
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], bx
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
bts dx, dx
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
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
xor al, -15
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
