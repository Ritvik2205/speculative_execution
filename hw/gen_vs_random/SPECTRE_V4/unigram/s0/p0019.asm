.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 4
add bl, -59
cmovl rcx, rsi
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 2
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], 45
add al, 89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdx]
adc al, 41
sub sil, bl
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], sil
cmovnz rax, rdx
and dil, -23
adc dl, cl
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], dl
and rcx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
xchg edi, eax
cmp dl, cl
and rsi, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rsi]
and esi, 2
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rax
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], di
and rsi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rcx
cmovnb rdi, rbx
mov dil, 78
btr rcx, 134
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], esi
test bx, dx
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rsi]
cmp al, dl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
or dl, dl
xor dx, di
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], al
adc esi, 84
imul cx
add bl, -38
sub rbx, 101
imul di
and rcx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rcx]
test dl, 114
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], cx
and rax, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
