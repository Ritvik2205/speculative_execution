.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 65 # instrumentation
cmovnp cx, si
cmovnb esi, edx
and sil, dl
sbb dl, bl
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
add rcx, rdx
adc al, 36
cmovnp rdx, rdi
and rax, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rax]
cmovnle eax, edx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 84
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -95
bt rdi, rsi
cmovle edx, esi
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 23
add bl, bl
xor dl, 58
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
test esi, 34
cmovz eax, eax
imul ax, si, 46
sub eax, 2030845821
xor dl, dil
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rax], esi
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], -69
and rdi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
and rbx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rbx]
mul cl
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
cmp dl, al
cmovnle rbx, rbx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rcx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
cmovb edx, esi
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], bx
cmovs di, di
sub rdx, 22
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rbx
add ebx, eax
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
add eax, -1796699558
bt ebx, 228
add bx, 110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
