.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rbx]
cmovz edx, esi
or eax, 1802312508
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rsi
neg dil
btc ax, cx
cmovb ax, ax
cmovnle dx, ax
btc rdi, 167
add bl, -75 # instrumentation
adc bl, 87
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 46
cmovnle di, di
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], sil
not rsi
xor sil, 56
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
btc bx, dx
xchg rbx, rdx
cmovnbe rbx, rcx
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
test cl, -89
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
sub sil, bl
movzx rax, dx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
test rsi, 78
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rcx
xor dl, 97
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 43
sbb dil, 37
and rdx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdx]
add bl, -21 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 100
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], 97
imul sil
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
neg dl
sub dl, dl
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
cmovb ax, ax
cmovp bx, di
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 117
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
