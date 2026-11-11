.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, ax
cmp rax, 1524061352
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
sub sil, -36
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -126
and rsi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
cmovnbe rax, rbx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
xchg ecx, eax
sbb cl, -104
bt esi, 227
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdx
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], dx
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
xor di, -43
mov bx, -31043
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
adc al, dl
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
mov edi, -1544998000
cmovns rbx, rax
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
add bl, 38 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
