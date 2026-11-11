.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe edx, ebx
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], eax
cmovnz ebx, ecx
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
add al, dl
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
cmovnb eax, esi
xor edi, 20
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
test cl, cl
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
cmp dl, sil
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
and rbx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rbx]
add al, 122 # instrumentation
cmovns esi, edx
cmp bl, 13
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdx], si
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], di
btc esi, 42
not dx
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edi
or ecx, 36
and rdx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdx]
sbb al, dil
or dl, 88
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
xchg ebx, esi
cmovz ebx, ecx
add bl, 65 # instrumentation
cmovnp ax, dx
add esi, ecx
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
add edx, 56
adc al, 69
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 33
and cl, 58
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
add bx, 110
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
sbb ebx, edx
or si, 39
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdx]
cmovnbe esi, edx
add bl, 38 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
