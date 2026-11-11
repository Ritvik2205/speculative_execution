.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rsi]
and rdx, 62
and bx, 95
not bx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rbx]
sub bl, 17
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 59
test dl, bl
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
add dl, -114 # instrumentation
cmovl cx, bx
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
sub rdx, 22
cmp rdx, 78
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
add bl, 63 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
movzx edx, cl
xor rbx, rsi
and al, dl
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
or bl, sil
cmovnb si, si
movzx rax, si
and rbx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rbx]
and bx, 95
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
xchg al, dl
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rax], bx
inc cl
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 2
test bx, cx
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], eax
add rdi, 105
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 86
sbb sil, 108
cmovo rcx, rcx
or di, ax
mov cl, 89
movzx dx, dl
and cl, 58
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
mov rbx, rax
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
