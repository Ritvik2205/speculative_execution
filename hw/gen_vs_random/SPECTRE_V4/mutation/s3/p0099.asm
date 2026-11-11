.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 73
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], -77
and dl, sil
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rax
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
sub ax, 6579
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 0
sbb cl, dl
sub si, si
or eax, ebx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
cmovbe bx, dx
cmovnbe eax, edx
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], di
and rcx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ecx
btc rdi, rdx
xor edi, 127
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
adc edx, edi
and rsi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rsi]
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
test ecx, -304234347
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
mov dl, dl
adc dil, 112
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 63
or di, 0b1000000000000000 # instrumentation
bsf si, di
btc rcx, rax
bts bx, cx
adc ecx, 114
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdx], ax
sub dl, -16
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], -43
bt rdx, rdx
and rsi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rsi]
sbb eax, 727775941
cmovl si, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
