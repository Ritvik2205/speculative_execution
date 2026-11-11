.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 117
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
test edi, -1249897727
sbb ebx, 64
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 71
imul rsi
xor dl, bl
cmovp ebx, eax
cmovnp si, cx
test edi, -1249897727
sbb sil, dil
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 70
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 67
or di, 88
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], si
cmovnb ebx, esi
adc bx, -89
add cl, 122 # instrumentation
cmovz rdx, rbx
sbb dil, sil
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
sbb al, 32
cmovle rbx, rax
cmp dil, -124
neg sil
and bl, cl
and rsi, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rsi]
or sil, 96
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 52
sbb eax, ebx
bt edi, eax
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
sbb ebx, 97
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 48
and rsi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rsi]
mov eax, 76
sub dil, cl
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdx]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
cmovnb bx, bx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
sub bl, 17
add dl, 48 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
