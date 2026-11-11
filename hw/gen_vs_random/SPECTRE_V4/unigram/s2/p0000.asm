.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
cmovnp bx, cx
xchg dl, dl
adc rdi, 44
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
sbb rax, 183833426
cmovnbe si, dx
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 77
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], ecx
or ax, -15282
sub bx, di
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dl
bts esi, ecx
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rdx
cmovb edx, eax
and rbx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rbx]
cmovnbe rcx, rbx
sbb cl, bl
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 72
xor cx, 88
and rsi, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rsi], 17
and rbx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rbx]
movzx ecx, al
cmovnbe si, dx
test dl, cl
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], 7
btr rax, rdx
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 84
cmovb ebx, eax
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], bx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], edx
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
test cl, bl
cmovs edi, ebx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 45
add rdi, 105
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 96
neg rsi
cmp cl, dl
adc sil, dil
add cx, cx
not rbx
and rdx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
