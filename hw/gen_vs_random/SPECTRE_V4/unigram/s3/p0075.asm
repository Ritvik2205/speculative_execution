.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rax]
cmp al, al
sbb al, sil
or rsi, rdi
and rsi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rsi]
cmp dl, 45
cmovle edi, ecx
movzx rdx, ax
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rdi
cmovnp si, cx
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ecx
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rsi
and rax, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rax]
and al, -12
and rdi, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rbx], 5
and rdx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rsi]
or rdi, -41
and rbx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rbx], rcx
add dl, 45 # instrumentation
cmovbe rdx, rbx
xor rsi, -3
and rdx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdx]
or sil, sil
cmovnp eax, eax
and rax, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rax]
cmp dil, sil
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -18
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
test rdx, rbx
imul dl
adc bl, dl
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], bx
sub dx, -12
not ecx
and rdi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdi]
add dil, dil
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], 88
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
bswap edx
cmp bl, dl
and rdx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dil
bts rcx, 53
and rdi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
adc cl, -66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
