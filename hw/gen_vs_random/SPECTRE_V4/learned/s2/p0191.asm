.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add dl, sil
add dl, cl
and rcx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rcx]
btc di, 51
add dl, cl
xchg si, dx
sbb al, 32
xor dl, 57
sbb al, -62
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], bx
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 99
cmovs di, si
sub dl, bl
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
mov rsi, 33
add al, sil
and rdi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdi]
mov al, 76
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
sub esi, edx
or dl, dl
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -126
and rsi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rsi]
sbb bl, -94
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
movzx rcx, dx
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], edx
inc dl
btc bx, si
movzx edx, al
xchg rcx, rdx
and rdi, -2
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
sub ecx, ebx
sub esi, edi
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
test dil, 93
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
xor al, 29
and al, cl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
