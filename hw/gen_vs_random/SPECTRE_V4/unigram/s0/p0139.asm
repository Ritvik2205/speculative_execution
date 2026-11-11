.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 89
and rsi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rsi]
add al, cl
and sil, bl
btc rdx, 178
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 44
and rdi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 8
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
cmovz bx, di
cmovl di, cx
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edx
and rbx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 41
and rdi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], al
bt rax, rdi
adc cl, dil
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
movzx edx, di
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
bt bx, 95
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rax
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 53
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdi]
movsx rdx, al
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 36
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdi
and rax, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], ecx
test cl, cl
add cl, -20 # instrumentation
adc al, sil
imul rdx, rdx
and rbx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
or rsi, 73
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rcx
test cl, cl
and rdi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
