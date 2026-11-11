.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dl, 45
bt dx, 81
cmovo rax, rbx
and eax, -1572488789
neg esi
sub ecx, -107
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
and al, 85
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 111
test bl, 110
cmp eax, 512128713
and rdx, 0b1111111111111 # instrumentation
add al, -84 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
btr dx, 209
imul bl
dec sil
and rax, 86
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rax]
mov al, 90
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
and eax, ebx
neg ecx
cmovbe cx, cx
bswap edi
inc cl
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -115
sub rcx, rsi
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edi
movzx ax, sil
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
cmovno bx, bx
cmp cl, dl
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rsi
cmp dx, -26
sbb dl, -106
cmovo ax, bx
xchg sil, dl
or ax, 7381
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
btr ecx, esi
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -87
and rbx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
