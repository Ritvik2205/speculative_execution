.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rcx
cmovz ecx, ebx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 76
and rbx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
test cl, -89
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
not si
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 84
and cx, 17
xor cl, -85
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 68
movzx rbx, ax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -126
add dl, 31 # instrumentation
cmovnl si, si
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
test si, 71
add cx, 80
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], 49
xchg bx, ax
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
add bx, 110
and rdx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rsi]
and al, cl
imul dl
imul cl
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 36
movzx dx, bl
and rdx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdx]
mul rbx
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 53
btc rcx, rdx
add cl, 106 # instrumentation
cmovnp rbx, rax
and rsi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rsi], ax
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
movzx eax, bl
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
add cl, 41
add bl, -109 # instrumentation
sbb ecx, 84
xor al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
