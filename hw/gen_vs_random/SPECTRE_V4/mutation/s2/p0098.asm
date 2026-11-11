.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe eax, edi
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 4
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rax, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rax]
mul dl
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rsi
sbb eax, 4
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
test al, sil
imul cl
and rsi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
cmp rax, -1102558854
cmp dil, -124
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
sbb di, -76
cmovz si, si
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
cmovnbe dx, ax
sub sil, -50
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edx
imul ax, cx
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 6
or bx, dx
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
cmovnp bx, bx
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -126
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
cmp bx, si
xor sil, 56
add cl, -82 # instrumentation
sbb si, dx
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
and rbx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], ax
cmp rax, -1102558854
cmp cl, dl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
or dl, dl
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
or di, ax
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
