.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
sbb eax, 40509622
mov dl, dl
sub ax, 24426
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 74
and rcx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rcx]
adc ecx, 114
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdx], ax
and dl, sil
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rsi]
btc rcx, rax
xor edi, 127
adc dil, 124
sbb cl, dl
cmovnbe eax, edx
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
adc edx, edi
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], -43
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], -77
bt rdx, rdx
btc rdi, rdx
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 63
cmovbe bx, dx
sub dl, -16
or eax, ebx
sub si, si
and rsi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ecx
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rax
and rdi, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
test ecx, -907816607
bts bx, cx
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 0
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], di
cmovl si, di
or di, 0b1000000000000000 # instrumentation
bsf si, di
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
