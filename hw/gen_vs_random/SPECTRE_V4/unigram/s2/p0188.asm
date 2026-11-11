.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], dl
adc bx, -89
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 45
and rdx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 53
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
movzx eax, dil
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rax
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 91
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 4
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
add dil, 16
add di, -74
adc dil, dl
and al, dl
test ecx, 89
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], si
and rax, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rax]
mov rcx, 4219775168754920203
and rbx, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rbx]
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
neg dx
add bl, al
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi]
xor rbx, rsi
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 75
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], sil
sub dl, 43
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rbx], edi
and al, -36
movzx dx, al
cmp cl, al
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], di
test rax, -344032571
and rdi, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
add bl, dil
or al, 95
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
btr ax, cx
or dl, al
cmovns dx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
