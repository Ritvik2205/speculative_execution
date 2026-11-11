.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rsi]
sbb esi, eax
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], sil
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 109
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
movzx di, al
cmp cx, 0
and rax, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 75
and dil, al
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1308203108
mul bl
sub edi, 67
cmovnle bx, si
and rdx, 84
add al, 42 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], dil
cmovle eax, edx
sbb al, cl
not eax
sbb al, 54
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 72
movzx cx, sil
test esi, -222751961
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rax
and rdx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdx]
movzx rcx, ax
cmp cl, 49
inc bx
or eax, -1779536330
xchg ecx, eax
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edi
btr rdi, rax
xor si, -73
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
adc al, dl
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
sub ax, ax
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 2
and rbx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rbx]
cmovnbe edi, eax
sbb cx, bx
adc cl, 31
bt ebx, 11
inc cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
