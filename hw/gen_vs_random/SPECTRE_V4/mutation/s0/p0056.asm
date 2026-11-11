.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bx, dx
and rsi, rax
cmp cl, cl
xor bx, 106
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
cmovno cx, si
and rdx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdx]
cmovnp eax, esi
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
sub bx, 24
sbb cl, 12
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
add bx, si
xchg eax, eax
xor ax, -22861
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
imul rsi, rbx, -126
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dl
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rax
sub al, 63
sbb eax, 1002977021
cmovnle eax, ebx
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], edi
sbb ax, 16480
imul dl
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2089960014
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
xor bl, -126
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 22
xor rcx, -111
dec rbx
cmovp rdx, rax
test dil, -83
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
bswap rcx
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
and al, bl
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 73
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -4112
test cl, cl
adc bl, bl
bts esi, 18
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
