.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rdi
add cl, 106 # instrumentation
cmovnp rcx, rbx
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
add cx, 93
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 21
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 19
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
xor esi, ecx
mov rdi, rbx
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], cx
imul dx
sbb sil, 108
cmovnp rbx, rcx
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
sbb cl, 19
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
or al, 95
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
add dl, 41
cmp bl, 13
movsx ebx, sil
and rax, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rax]
mul rbx
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], ax
add bl, bl
dec cl
and rdx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rdx]
cmp rbx, 42
and rdi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], dx
and rdi, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], cl
sbb eax, 2051746726
and rsi, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rsi]
cmp di, 29
movzx ax, cl
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 9
and rdx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
add al, sil
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 37
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 8
movzx edx, dil
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
