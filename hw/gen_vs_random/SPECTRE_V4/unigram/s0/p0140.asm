.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], 2
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rbx]
sub cl, 116
bts ebx, 22
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 28
and rsi, 70
and sil, al
cmp sil, bl
test esi, 76
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
movzx ebx, al
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
xor dil, 93
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
add rax, rdx
cmovo esi, eax
and rsi, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rsi]
add eax, -1796699558
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dl
add di, -74
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
bt esi, 227
cmovnbe rbx, rdx
test eax, -558243208
cmovp bx, cx
sub esi, 57
cmp bx, 39
dec dil
and rbx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rsi]
xor al, 102
and rax, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rbx], 81
add bl, -21 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rsi]
cmovle si, bx
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 67
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
cmovnb ax, ax
sbb bl, dl
cmovnbe ax, si
imul rbx, rdi
add dl, dl
and rax, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], cx
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
test sil, al
add bl, -109 # instrumentation
sbb eax, -2052726562
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
