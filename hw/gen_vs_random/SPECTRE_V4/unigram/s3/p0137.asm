.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rcx
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -18
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], dx
or edx, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
add al, 42 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rsi]
or si, 85
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rcx]
mul edx
dec bl
and rcx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rcx]
cmovnb ax, cx
mov rdx, rdi
and ax, -23308
or dil, cl
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 22
test rbx, rcx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], eax
xchg rdx, rcx
and rax, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rax]
cmovs ecx, ebx
bt di, 49
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
or al, cl
bts cx, 135
and rdi, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
sub rbx, 101
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rax]
or edi, esi
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdx
mov al, dl
sbb al, 66
and rdx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 119
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1308203108
btr edx, 160
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 45
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], 100
and rbx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdi]
mov cl, sil
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 4
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
