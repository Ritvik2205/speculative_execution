.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc edx, edi
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], -43
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
sub ax, 8246
btc rdi, rdx
cmovnbe eax, edx
and rsi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rsi]
or di, 0b1000000000000000 # instrumentation
bsf si, di
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 63
test ecx, 860867711
and dl, sil
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rax
bt rdx, rdx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
sbb eax, -920840872
adc ecx, 114
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rdi]
mov dl, dl
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdx], ax
btc rcx, rax
or eax, ebx
bts bx, cx
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 74
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
sub si, si
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
sbb cl, dl
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 0
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
and rcx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ecx
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], -77
adc dil, 38
sub dl, -16
cmovbe bx, dx
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], di
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx]
cmovl si, di
xor edi, 127
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
