.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rcx
and rbx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rbx]
imul esi, eax, 98
and rdx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdx], 37
cmovnp si, ax
cmp rdx, 83
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], cx
sub ecx, eax
add cl, -71 # instrumentation
adc cl, dl
cmp sil, cl
xor cx, 80
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rcx
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 96
cmp esi, 68
add cl, cl
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 74
and sil, cl
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 99
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rax]
xor cx, 76
adc bx, -89
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 17
and rdi, -2
and dl, 73
cmovl rdx, rbx
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
cmovz edi, edx
cmovnbe rcx, rcx
cmp rbx, 99
and dx, 1
imul rdi
sub bl, 17
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
sbb al, 123
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
sub dl, bl
cmovz edi, edi
cmovnb ecx, edx
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
add dx, -90
cmovnl rdi, rax
sub rbx, 34
sbb al, -101
cmovz rax, rcx
test sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
