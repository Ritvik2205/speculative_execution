.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, dil
cmovl rdi, rsi
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
add sil, 122 # instrumentation
cmovz bx, si
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], ax
and dil, cl
and rax, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
test bl, 78
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
or dl, -26
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
test si, 3
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
adc bl, 79
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rdi
sbb rdx, rcx
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 6
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rax]
sbb si, 64
imul ecx
xor ax, di
sbb rdx, -43
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
xchg rdx, rdi
xor cl, al
cmp bl, dil
dec al
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
test rdx, rsi
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], cx
sub rcx, 126
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], eax
add rbx, 23
and rax, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rax]
test rsi, 85
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rsi
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
xchg rcx, rdx
xor cl, 88
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 7
mov cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
