.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rbx, 49
cmp sil, dil
and rax, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 50
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
add bl, 63 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rsi]
and dl, bl
and rdi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], esi
dec rbx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], di
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 93
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
cmovb bx, bx
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 93
test al, 66
bt esi, 227
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 14
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
not cx
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
and rcx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rcx]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and al, -127
and rdx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 4
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
cmp dil, bl
add cl, cl
and rdi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdi]
sub dl, cl
movzx rax, dl
test bl, 0
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], di
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rbx]
add dil, dil
cmp cl, 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
