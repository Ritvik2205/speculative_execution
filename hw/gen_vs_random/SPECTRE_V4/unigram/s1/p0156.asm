.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], -69
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 27
cmovs edx, ebx
sub sil, -36
and rdx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rbx]
and al, -36
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], ecx
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rax]
xor cl, bl
cmovl rcx, rax
neg dil
cmovz ebx, ecx
and rsi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rsi]
add bl, -71 # instrumentation
adc bl, dl
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 35
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
cmp dx, 82
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 26
cmovle ax, si
and rsi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
not eax
test esi, eax
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rax
and rdi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 28
sbb al, -47
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], cl
add bl, 38 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rsi]
test al, cl
dec cl
and rcx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rcx]
cmovnp ebx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
sub ax, si
and rcx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rcx]
cmovs edx, ebx
cmovnbe bx, dx
sbb dx, 42
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
cmovo rax, rdx
xor dil, 53
add sil, 110 # instrumentation
movsx ax, sil
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
