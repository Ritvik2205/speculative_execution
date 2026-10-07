.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, ax 
cmp rax, 2115020203 
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi] 
cmp bx, si 
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax] 
cmovnp bx, bx 
imul ax, cx 
cmp cl, dl 
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], ax 
imul cl 
mul dl 
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx] 
cmovz si, si 
and rax, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rax] 
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edx 
or dl, dl 
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rcx] 
add cl, -82 # instrumentation
sbb si, dx 
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx] 
sub sil, -50 
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -126 
and rsi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rsi] 
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax] 
and rbx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rbx] 
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88 
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi] 
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 4 
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi] 
cmp dil, -124 
sbb eax, 2051746726 
sbb di, -76 
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6 
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi] 
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi] 
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax 
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3 
cmovnbe eax, edi 
or bx, dx 
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di 
test al, sil 
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx] 
and rbx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rsi 
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi] 
xor sil, 56 
cmovnbe dx, ax 
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi] 
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 6 
cmp rax, -1102558854 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
