.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx ax, sil
bswap edi
and rbx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rbx]
imul bl
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edi
btr ecx, esi
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
neg esi
cmp eax, 89
cmovbe cx, cx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
cmp dl, 45
and eax, -784085938
xchg sil, dl
sbb dl, -71
cmp cl, dl
test bl, 87
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -103
mov al, -93
or ax, -30990
and rdx, 0b1111111111111 # instrumentation
add al, -84 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rsi]
sub rcx, rsi
and al, 41
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rax, 86
inc cl
cmovno bx, bx
btr dx, 245
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
and eax, ebx
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -115
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -91
and rax, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rax]
bt dx, 193
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
neg ecx
cmovo rax, rbx
cmp dx, -1
cmovo ax, bx
sub ecx, -107
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
dec sil
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
