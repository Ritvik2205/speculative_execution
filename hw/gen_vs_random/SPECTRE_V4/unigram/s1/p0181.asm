.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], si
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
test bl, 110
and rsi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi], 33
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 70
adc eax, -1127383570
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], -123
or dx, 45
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
xor al, bl
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
cmovp rdi, rsi
btc edx, eax
or dx, 0b1000000000000000 # instrumentation
bsr bx, dx
and rbx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rbx]
add cl, -122 # instrumentation
cmovp si, si
and cx, -117
cmp edx, -95
and rcx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rcx]
sub dil, -28
adc ecx, 114
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx], -75
inc dl
add cl, -20 # instrumentation
adc al, dil
and rsi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
sub bl, sil
cmovbe dx, si
cmp eax, 89
sub cl, 78
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 78
or di, ax
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
adc bl, 79
and rcx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rax]
imul edx
mov eax, ecx
mov dl, dil
and rcx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rcx], 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
