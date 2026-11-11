.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and edx, 78
imul ax, cx
neg si
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], esi
add al, 20 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rcx
cmp bx, 113
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
mul rbx
imul ax, cx
sub rbx, rax
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], eax
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -109
cmovbe eax, edx
adc al, -70
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
sbb bl, -75
test cl, -10
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -122
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 94
add dl, al
and rdx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], bl
xchg rcx, rsi
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 6
xchg cl, cl
and dl, cl
sbb bx, 94
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
xor eax, eax
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi]
imul sil
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], sil
add cx, 9
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
imul ebx, eax, -112
or rsi, -5
and rsi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdi]
mov eax, 1596316323
and rsi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rsi]
xchg al, cl
and rsi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rsi]
sbb dl, sil
add al, 121 # instrumentation
movsx eax, di
neg rdi
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
