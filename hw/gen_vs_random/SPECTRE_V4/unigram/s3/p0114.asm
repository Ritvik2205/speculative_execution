.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, sil
or ax, -15282
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], edx
cmovnbe rax, rbx
cmp bl, 13
cmp dil, -124
test si, ax
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rbx
and rdi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdi]
cmovnb ax, ax
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], sil
and rdx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdx]
bts ebx, 22
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
sbb cl, cl
add bl, sil
or cx, 49
xor ebx, 72
add cl, dl
and bl, dil
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rsi]
movsx rax, sil
and rbx, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rbx]
cmovnp rdx, rdx
xor dx, cx
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], dx
and rdx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
and rbx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rbx]
not cx
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 17
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], 10
and rax, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rax]
btc eax, 9
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], dx
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
sub rax, -701741274
xor cl, -101
sbb al, sil
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rax], 65
add bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
