.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rax, -1102558854
cmp bx, si
xor sil, 56
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 6
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edx
or dl, dl
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
cmovnp bx, bx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
add cl, -82 # instrumentation
sbb si, dx
cmovnbe eax, edi
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
or di, ax
test al, sil
or bx, dx
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
cmp rax, 1524061352
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rsi
cmovz si, si
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
cmovnbe dx, ax
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
mul dl
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
cmp dil, -124
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
sbb di, -76
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], ax
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
sub sil, -36
and rax, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rax]
imul cl
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
sbb eax, -1688332460
imul ax, cx
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -126
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 4
cmp cl, dl
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
