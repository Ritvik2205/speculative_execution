.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, ax
cmp dil, -124
or bx, dx
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
cmovz si, si
sub sil, -36
cmp rax, -227205962
sbb eax, 1081973675
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -126
cmp bx, si
cmovnp bx, bx
and rsi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
imul cl
sbb di, -76
cmp cl, dl
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], ax
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
test al, sil
cmovnbe eax, edi
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rsi
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edx
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
or dl, dl
add cl, -82 # instrumentation
sbb si, dx
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 6
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
imul ax, cx
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 4
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
xor sil, 56
mul dl
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
cmovnbe dx, ax
cmp rax, -227205962
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
and rax, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
