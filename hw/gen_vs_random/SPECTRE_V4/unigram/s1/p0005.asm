.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, cl
test dil, -26
or rax, -943474997
and rbx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 4
and al, dl
sbb al, dil
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], bl
xor dl, -123
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
xchg rcx, rax
and rax, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rax]
bswap edi
and esi, 2
cmovnz dx, bx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], sil
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], -115
cmovnp si, cx
or di, 0b1000000000000000 # instrumentation
bsf cx, di
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
cmp bl, 12
cmp sil, cl
and dl, 24
xchg dl, bl
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 41
sbb al, dl
or rbx, 69
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], sil
sub dil, bl
cmovnz ebx, ecx
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx]
and dil, sil
sub cl, -51
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
cmovnp ax, dx
sub ecx, -107
mov sil, sil
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 88
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
cmovbe cx, di
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 6
inc eax
and rdi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
