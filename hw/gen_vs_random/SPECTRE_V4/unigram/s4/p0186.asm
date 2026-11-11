.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx rdx, si
bts rax, rdx
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
cmp rdi, 13
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
adc al, dl
cmovle edx, eax
and cl, 58
inc eax
sbb cx, di
add rsi, 15
and rsi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rsi]
xchg cl, cl
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
and rdi, -2
mul cl
and rax, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rax]
sbb al, cl
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 98
cmovnp ebx, edx
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], bx
add bl, 65 # instrumentation
cmovnp cx, ax
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 31
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
cmp rdi, 21
or cl, dil
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rbx], eax
and rcx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rcx]
xor di, dx
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
imul eax
movzx ebx, bx
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 117
and rsi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rsi]
test ecx, 70
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rbx
and bl, sil
sbb sil, dl
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
or ebx, 63
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
test ax, di
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dil
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
or ebx, 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
