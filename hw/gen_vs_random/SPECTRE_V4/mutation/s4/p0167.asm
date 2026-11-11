.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 59
and eax, -784085938
sub ecx, -107
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
xchg sil, dl
and eax, ebx
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rsi
test bl, 78
mov al, -93
cmovo rax, rbx
cmp dl, 45
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
inc cl
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
cmp dx, 13
and rax, 37
sbb dl, -71
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
cmp eax, -2073187604
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add al, -84 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rsi]
bt dx, 81
and rax, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rax]
bswap edi
neg ecx
btr dx, 209
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edi
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -115
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
movzx ax, sil
neg esi
cmp cl, dl
cmovo ax, bx
or ax, -13633
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -91
btr ecx, esi
and rbx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rbx]
cmovbe cx, cx
sub rcx, rsi
imul bl
cmovno bx, bx
and rsi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rsi]
dec sil
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
