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
xor al, 29
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
sbb ax, -19255
test edx, 573099753
imul esi, edx, 69
adc bl, al
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], cx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
add bl, bl
cmovo esi, edx
inc rsi
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
cmovz eax, eax
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, ecx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
mul cl
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdx]
cmovp rdi, rcx
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdi]
sbb dl, dil
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
mul rbx
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
and rdi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdi]
or ebx, esi
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
add rax, rbx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
sbb dl, dil
add rbx, 51
and rbx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
