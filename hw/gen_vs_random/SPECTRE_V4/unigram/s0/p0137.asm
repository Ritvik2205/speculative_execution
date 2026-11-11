.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, 64
and rdx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdx]
movzx ecx, cx
sub sil, -50
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 99
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
sbb sil, 108
and rdi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rdi], di
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx]
cmovnb rsi, rdx
imul rbx, rax, 53
add dil, cl
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rdx
sub sil, -50
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 2
test si, cx
sbb ecx, 96
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 65
cmp cl, cl
cmovnbe cx, ax
and rdx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdx]
cmovns ax, dx
add dl, 116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rsi]
sbb sil, cl
cmovz eax, ecx
cmovb eax, ecx
sbb al, dl
or bl, 1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rbx
and rcx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rcx]
xor dl, al
or al, 95
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
adc dil, bl
adc rax, rbx
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rdx
xchg eax, edx
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 86
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 19
and rdx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rsi
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rax
and rdx, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rdx]
sbb cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
