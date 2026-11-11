.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl si, di
bts bx, cx
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 73
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ecx
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], di
sub dl, -16
test ecx, -304234347
adc ecx, 55
and rdi, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
and dl, sil
sub si, si
sbb eax, -920840872
cmovbe bx, dx
sbb cl, dl
mov dl, dl
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], -77
btc rcx, rax
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
adc edx, edi
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
btc rdi, rdx
sub ax, 6579
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 0
xor edi, 127
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 63
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
bt rdx, rdx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
and rsi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
or di, 0b1000000000000000 # instrumentation
bsf si, di
adc dil, 38
or eax, ebx
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdx], ax
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rax
cmovnbe eax, edx
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], -43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
