.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul dl
xor sil, 56
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 6
add cl, -82 # instrumentation
sbb si, dx
sbb di, -76
sub sil, -36
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rsi
or bx, dx
sbb eax, -1688332460
cmovnp bx, bx
cmp rax, 1524061352
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
imul ax, cx
cmovnbe eax, edi
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -126
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
cmovz si, si
and rbx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edx
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
or di, ax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
cmp cl, dl
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], ax
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
cmp dil, -124
cmovnbe dx, ax
imul cl
and rsi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rcx]
cmp bx, si
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 4
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
test al, sil
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
cmp rax, -1102558854
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
or dl, dl
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
