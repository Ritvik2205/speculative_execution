.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, sil
or di, 0b1000000000000000 # instrumentation
bsf si, di
sub ax, 25338
mov dl, dl
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
bts bx, cx
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 73
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
cmovl si, di
test ecx, 860867711
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ecx
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
btc rcx, rax
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
sub dl, 107
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
sbb eax, 316213929
and rdi, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
adc ecx, 55
and rsi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rsi]
adc dil, 109
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 0
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rax
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], -77
cmovnbe eax, edx
xor edi, 127
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 63
sub si, si
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdx], ax
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
btc rdi, rdx
bt rdx, rdx
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rcx]
sbb cl, dl
or eax, ebx
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], -43
cmovbe bx, dx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
adc edx, edi
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], di
and rsi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
