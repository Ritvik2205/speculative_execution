.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 56
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], ax
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
movzx ax, dil
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 59
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 32
or ebx, eax
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
or bl, 1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rbx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
cmp al, bl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 92
mov rax, -8696242625349627833
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], edx
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 9
movzx edi, bl
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 63
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
movzx edi, bl
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
cmovnp bx, bx
adc dl, sil
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
or rbx, rax
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rcx]
cmovnz ebx, edx
add dil, 82
neg di
btc ax, 52
and rsi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rax]
sbb dil, 89
add dl, -10 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
sbb cl, 20
xchg esi, ecx
add cl, 119 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
