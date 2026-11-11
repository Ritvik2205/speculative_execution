.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
sbb al, -62
movzx dx, dl
xor rdi, rdx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
movsx rsi, bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
test rsi, rdx
and rax, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rax]
xor cl, -101
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
setl bl
add dl, -126 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
sub di, 84
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], cl
and dil, dil
cmovz edx, eax
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rdx]
and dl, sil
cmovnp rdx, rbx
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
sub cl, 116
add ecx, 23
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
btc ax, dx
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], ax
cmovnp rsi, rsi
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 13
and rdx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdx], 32
cmovnz eax, ebx
test rcx, -2118888343
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
btc rsi, 140
and rdi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
add cl, 122 # instrumentation
cmovz rdx, rdi
sub rdx, 22
xor ax, 25554
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 26
sbb eax, 2051746726
bts edx, edx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
bt ebx, 228
sbb dl, bl
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
