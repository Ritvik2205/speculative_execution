.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe cx, cx
cmovno bx, bx
and rax, 86
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
cmp eax, 1521417271
sbb dl, 75
dec sil
bswap edi
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
cmp dl, 23
neg esi
and rsi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rsi]
btr dx, 209
or ax, -29521
btr ecx, esi
test bl, 78
and eax, -2001076187
cmovo ax, bx
and eax, ebx
inc cl
cmp dx, 13
neg ecx
and rdx, 0b1111111111111 # instrumentation
add al, -84 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -103
cmovo rax, rbx
mov al, 125
movzx ax, sil
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
bt dx, 81
and rax, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -91
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
xchg sil, dl
sub rcx, rsi
sub ecx, -107
imul bl
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -115
cmp cl, dl
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rsi
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edi
and rbx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rbx]
and al, -118
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
