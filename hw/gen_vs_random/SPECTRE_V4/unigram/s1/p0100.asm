.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdi]
and cl, cl
cmp sil, dl
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], edi
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ebx
cmovnl ax, dx
xchg cx, ax
movsx ecx, dl
and rax, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rax]
and dx, -107
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 5
and rdx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ecx
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rcx], dx
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx], 6
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 5
sbb al, -14
sbb al, sil
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], cx
add cx, si
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax]
movsx ebx, bx
or sil, dl
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], cx
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 20
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], -652712956
cmovnb ax, dx
add dl, 122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rbx]
sbb sil, -124
cmovz ax, cx
and rdx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -87
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 0
cmp al, 75
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], -79
and rsi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rsi]
cmp cl, 107
and rbx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rbx], 21
and rcx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], ax
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
