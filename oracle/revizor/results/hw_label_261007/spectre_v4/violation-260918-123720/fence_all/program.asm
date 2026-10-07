.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, ax 
lfence
cmp rax, 2115020203 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
xor dil, byte ptr [r14 + rdi] 
lfence
cmp bx, si 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovo ebx, dword ptr [r14 + rax] 
lfence
cmovnp bx, bx 
lfence
imul ax, cx 
lfence
cmp cl, dl 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
mov word ptr [r14 + rbx], ax 
lfence
imul cl 
lfence
mul dl 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
neg word ptr [r14 + rcx] 
lfence
cmovz si, si 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
movsx rdi, byte ptr [r14 + rax] 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock and dword ptr [r14 + rdi], edx 
lfence
or dl, dl 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
lfence
bsf rdi, qword ptr [r14 + rcx] 
lfence
add cl, -82 # instrumentation
lfence
sbb si, dx 
lfence
and rdx, 0b1111111111111 # instrumentation
lfence
movzx dx, byte ptr [r14 + rdx] 
lfence
sub sil, -50 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
adc byte ptr [r14 + rdi], -126 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovz bx, word ptr [r14 + rsi] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
sbb dil, byte ptr [r14 + rax] 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
cmp eax, dword ptr [r14 + rbx] 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
xor qword ptr [r14 + rax], 88 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
and cl, byte ptr [r14 + rdi] 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
btr word ptr [r14 + rsi], 4 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
or word ptr [r14 + rsi], 0b1000 # instrumentation
lfence
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
lfence
and dx, 0b11 # instrumentation
lfence
idiv word ptr [r14 + rsi] 
lfence
cmp dil, -124 
lfence
sbb eax, 2051746726 
lfence
sbb di, -76 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
bts word ptr [r14 + rdi], 6 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
mul dword ptr [r14 + rdi] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
mul word ptr [r14 + rdi] 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
test qword ptr [r14 + rcx], rax 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock btc qword ptr [r14 + rsi], 3 
lfence
cmovnbe eax, edi 
lfence
or bx, dx 
lfence
or di, 1 # instrumentation
lfence
and dx, di # instrumentation
lfence
shr dx, 1 # instrumentation
lfence
div di 
lfence
test al, sil 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
inc qword ptr [r14 + rbx] 
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
and rsi, 0b111 # instrumentation
lfence
lock bts qword ptr [r14 + rbx], rsi 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
neg qword ptr [r14 + rsi] 
lfence
xor sil, 56 
lfence
cmovnbe dx, ax 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
imul dword ptr [r14 + rdi] 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
bt word ptr [r14 + rdi], 6 
lfence
cmp rax, -1102558854 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
