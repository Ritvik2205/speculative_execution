.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 68
cmovo rcx, rdi
add eax, 953442933
or ecx, eax
bts si, 58
xchg dl, dl
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
movzx rax, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], -47
neg ecx
add rsi, 68
cmovl si, ax
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rax]
cmovz eax, edx
cmovnp di, di
sub dl, 107
or rax, 185991441
bts si, 33
and bl, bl
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], -35
mul sil
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
cmp si, 109
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 2
cmovl bx, bx
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
add al, dil
and rsi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], bx
cmovbe dx, si
add cl, 62 # instrumentation
cmovnz dx, dx
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 3
add al, al
add dl, -85 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], 56
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], bx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edx
test dil, 64
sbb si, bx
mov dl, al
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], -15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
