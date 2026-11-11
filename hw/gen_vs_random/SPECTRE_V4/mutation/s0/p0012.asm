.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp eax, -813838876
cmovbe cx, cx
bswap edi
cmp dx, -1
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
btr dx, 209
neg ecx
and al, 75
and rax, 1827025056
bt dx, 81
xchg sil, dl
movzx ax, sil
test bl, 78
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -115
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
cmp dl, -82
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add al, -84 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
imul bl
and rbx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -91
sbb dl, 53
sub rcx, rsi
cmp cl, dl
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edi
btr ecx, esi
and eax, ebx
sub ecx, -107
neg esi
cmovno bx, bx
and eax, 1913354318
or ax, 57
inc cl
and rsi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -87
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
cmovo ax, bx
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rsi
cmovo rax, rbx
and rax, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rax]
mov al, 7
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
dec sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
