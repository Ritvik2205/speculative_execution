.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ebx, 22
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], 79
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 21
sub rsi, 26
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
or di, 53
btc bx, di
sbb ax, -19255
cmovb eax, eax
cmovnp ecx, ecx
bts edx, edx
xor dl, 21
adc si, 67
cmp al, 81
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rdx
sbb al, cl
sbb bl, dl
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
adc rcx, rdi
movzx bx, sil
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], 33
cmovz ebx, ecx
xor dil, bl
add cl, 16
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
sbb bl, -94
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
add cl, -42 # instrumentation
adc sil, bl
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rdi], eax
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], bx
bts edx, 97
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
cmovnl cx, dx
and rdx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdx]
sub sil, sil
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rdx]
mov rcx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
