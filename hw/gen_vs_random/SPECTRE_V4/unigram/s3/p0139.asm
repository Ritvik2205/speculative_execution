.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rcx]
sub sil, sil
xor edx, 21
cmovp esi, edx
cmovle ebx, esi
cmp bl, sil
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 86
btc rax, rsi
and rdx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rdx]
test sil, sil
inc ebx
and rdi, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rbx]
sub sil, -36
or edi, eax
and rbx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 93
dec rax
xor esi, edi
test cl, al
and cx, 17
mov cl, cl
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 26
and rsi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 51
xor bl, 93
xor dil, 68
movsx ebx, al
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rsi]
dec rdi
imul bx
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 51
test ecx, 81
inc rsi
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx], 69
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
add dl, 41
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
test dil, cl
sbb edi, 8
and rdi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdi]
not dx
sbb sil, 108
test edx, 573099753
btc ax, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
