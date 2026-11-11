.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx cx, bl
add ax, -13169
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
cmp ax, -15409
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
sbb bl, al
movsx eax, sil
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
sub ax, 24441
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
sub ax, si
sub cl, al
adc bl, bl
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rdx
and al, -127
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
sub al, 119
sbb cl, 19
cmovo rcx, rcx
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and bx, 95
movzx ecx, al
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and rbx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 104
imul eax
bts edi, 167
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
test eax, -818909344
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
test al, 66
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
adc cl, sil
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
and rbx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
add bx, 110
cmp ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
