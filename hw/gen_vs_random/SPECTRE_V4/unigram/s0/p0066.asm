.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -39 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 32
xor dil, cl
and rax, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdx
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], sil
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], al
not ax
add cl, -75 # instrumentation
adc cl, 55
or dx, 0b1000000000000000 # instrumentation
bsr ax, dx
add cl, 122 # instrumentation
cmovz rbx, rdx
test dil, al
cmovnb edi, esi
or al, -71
cmovnbe di, bx
cmovle rbx, rsi
inc esi
cmovnb rcx, rbx
bt esi, ebx
and rdi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
sub al, 50
cmovle rdx, rdi
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 16
mov bx, -31043
or esi, edx
not dx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
xor al, 29
or sil, cl
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rdx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
add dl, -102 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
add rcx, rdx
inc edx
cmovnp rsi, rbx
adc dl, al
movzx rcx, dx
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 80
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
