.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rbx
btc rax, rsi
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
cmp dil, -29
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
cmovl di, cx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dil
test al, sil
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, eax
and rcx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], edx
cmp dil, 101
movzx ecx, dil
cmovo ebx, edi
sbb ax, 75
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edi
test sil, cl
and rsi, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rsi]
cmovbe ax, bx
and bx, si
cmovnp ax, dx
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 1
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 127
and rsi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
mov cl, sil
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
movzx rbx, cx
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], ax
test dl, 24
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rbx], 29
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rdi
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
mov bl, 29
and rdi, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rdi]
sbb edi, 107
bt rcx, rcx
add bl, -74 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax], 37
or al, al
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], cx
sub dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
