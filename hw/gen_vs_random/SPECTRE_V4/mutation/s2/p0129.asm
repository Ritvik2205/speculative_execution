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
adc al, -58
not ecx
xor cl, bl
add rdx, rbx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
adc bl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rax
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
and dx, 1
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 77
not si
cmovnb esi, eax
cmovz eax, eax
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
cmp edi, -104
imul bx
add dl, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
adc bx, -89
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 98
add sil, 26
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
cmovnp rsi, rsi
test al, dl
cmp dil, dl
mov rdx, rbx
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
test edi, -1249897727
movzx ebx, cl
and rsi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
imul rcx, rbx
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
imul bl
add cl, -117 # instrumentation
cmovs rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
