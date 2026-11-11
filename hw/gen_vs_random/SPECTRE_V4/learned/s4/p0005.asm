.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, ax
cmp rax, 1524061352
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
cmp bx, si
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
cmovnp bx, bx
sbb cl, dl
and rbx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rbx]
not bx
btr ecx, esi
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edi
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdx]
cmovnb rdi, rdi
mov rsi, 6
xor bx, dx
and rdi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 55
movsx eax, di
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 127
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], dx
and eax, -37
and rdx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdx]
lea dx, qword ptr [rsi + rax + 47]
cmp cl, 93
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], dx
add dl, 116 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rbx]
imul rdi
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
add cl, 122 # instrumentation
cmovz rcx, rbx
and rax, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rax], 87
cmovnp bx, dx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
not si
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
