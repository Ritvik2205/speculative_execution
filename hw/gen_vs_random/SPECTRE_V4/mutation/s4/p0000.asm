.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, ax
cmp rax, -1102558854
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
cmp bx, si
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
cmovnp bx, bx
imul ax, cx
cmp cl, dl
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], ax
imul cl
mul dl
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
cmovz si, si
and rax, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edx
or dl, dl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rcx]
add cl, -82 # instrumentation
sbb si, dx
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
sub sil, -36
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -126
and rsi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rbx]
not dx
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
add bl, -10 # instrumentation
cmovnbe ebx, eax
adc dl, bl
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
not bx
cmp dl, al
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
test eax, 1880179600
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
cmp dl, cl
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
imul cl
or al, 95
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
xor dl, dl
test ebx, 1263899340
cmovs rbx, rdi
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
