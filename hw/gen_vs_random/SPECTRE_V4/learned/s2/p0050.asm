.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
sbb al, -62
movzx dx, dl
xor rdi, rdx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
movsx rsi, bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
cmovnb ecx, eax
and rbx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rbx]
mul dil
sub ebx, edi
mov dl, dl
sub di, 84
adc sil, dil
and rdx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rdx]
dec dl
and al, -36
movsx edi, bx
and rdx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
cmovnb rdx, rax
imul bx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
inc ebx
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
mul cl
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rdi], bx
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
test cl, -89
imul esi, ecx
xor sil, 56
cmp dl, cl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
imul cl
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edx
add sil, 26
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
