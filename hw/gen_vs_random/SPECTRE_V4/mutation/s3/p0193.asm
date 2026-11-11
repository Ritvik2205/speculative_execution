.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, ebx
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
cmovo rax, rbx
cmovo ax, bx
movzx ax, sil
sbb dl, 53
and rax, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rax]
cmp dx, 58
and rbx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rbx]
and al, 85
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -23
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
cmp dl, 95
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
cmp cl, dl
cmovno bx, bx
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edi
neg ecx
neg esi
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
bswap edi
dec sil
sub ecx, -107
cmovbe cx, cx
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
imul bl
and rdx, 0b1111111111111 # instrumentation
add al, -84 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
test bl, -91
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 38
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -103
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
or ax, 27604
mov al, -114
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
btr dx, 209
cmp eax, 64
xchg sil, dl
and eax, -1572488789
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rsi
bt dx, 213
sub rcx, rsi
btr ecx, esi
inc cl
and rax, 37
and rsi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
