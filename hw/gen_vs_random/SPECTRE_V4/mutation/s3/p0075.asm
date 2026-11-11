.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
or eax, ebx
cmovbe bx, dx
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], di
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
sub dl, -16
and rcx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rcx]
btc rcx, rax
btc rdi, rdx
or di, 0b1000000000000000 # instrumentation
bsf si, di
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
adc dil, -17
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdx], ax
and dl, sil
bt rdx, rdx
sub si, si
xor edi, 127
sub ax, 17434
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
cmovnbe eax, edx
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rax
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 0
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
adc edx, edi
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], -43
bts bx, cx
sbb cl, dl
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], -77
test ecx, 860867711
mov dl, dl
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 63
and rdi, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ecx
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
sbb eax, -141178938
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
adc ecx, 114
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 74
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx]
cmovl si, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
