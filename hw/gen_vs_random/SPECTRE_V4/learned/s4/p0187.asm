.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
mov al, 2
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 47
add dl, dil
dec rbx
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], sil
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
test bl, dl
sbb bl, -94
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], 34
add sil, 26
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdx
cmp al, -52
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
cmovnl si, di
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 11
and rdx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdx]
mov al, 20
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
add ebx, 3
and rdi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
cmovnb dx, dx
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
cmp dil, sil
cmovp rdi, rbx
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and rsi, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rsi]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, esi
adc bl, al
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
cmovnbe si, dx
sub al, 98
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rsi
mov edi, -1544998000
sub dl, dl
cmp cl, cl
xchg si, bx
and eax, -24
sbb bl, 57
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
