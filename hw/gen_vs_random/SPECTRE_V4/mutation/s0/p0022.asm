.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, 245
and al, 92
btr ecx, esi
neg esi
sub ecx, -107
and rbx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rbx]
bt dx, 81
test bl, 110
cmovo rax, rbx
inc cl
or ax, -29521
sub rcx, rsi
cmovo ax, bx
and rax, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
movzx ax, sil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -91
cmp cl, dl
imul bl
cmp dl, -82
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
mov al, 7
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add al, -84 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rsi]
sbb dl, 75
xchg sil, dl
bswap edi
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -87
cmp eax, -2073187604
neg ecx
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -115
cmp dx, 58
cmovno bx, bx
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rsi
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rsi]
and eax, ebx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
cmovbe cx, cx
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edi
and eax, -1056713114
dec sil
and rax, -779592432
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
