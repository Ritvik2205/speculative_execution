.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, 0b1000000000000000 # instrumentation
bsf di, di
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rdi]
add bl, 65 # instrumentation
cmovnp bx, di
or si, ax
and rsi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
adc rcx, 64
cmp rax, -227205962
xor cl, -54
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 16
sbb ebx, 44
btc dx, 119
and eax, -37
and rax, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rax]
cmp bl, cl
bt ebx, edx
btc bx, di
and rdx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rsi]
imul cl
add cl, -71 # instrumentation
adc cl, dl
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], ax
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
btc dx, ax
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax]
xor dil, cl
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 3
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
cmovnle esi, eax
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
not bx
add cl, 122 # instrumentation
cmovz rsi, rdx
and rdi, -2
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rdi]
cmp al, al
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
adc dil, dl
and rdx, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rdx]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
