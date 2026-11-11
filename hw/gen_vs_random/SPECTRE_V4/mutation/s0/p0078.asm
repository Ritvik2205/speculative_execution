.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul bl
and eax, ebx
and rax, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rax]
and rax, 1072797615
cmp cl, dl
xchg sil, dl
cmovo ax, bx
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rsi
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -115
and rsi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rsi]
dec sil
neg esi
cmp dl, 95
and rbx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
sbb dl, -62
cmp dx, 13
sub rcx, rsi
neg ecx
movzx ax, sil
cmovbe cx, cx
mov al, 9
cmovo rax, rbx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
or ax, -29521
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edi
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
inc cl
and eax, -1056713114
sub ecx, -107
cmp eax, 1521417271
test bl, 87
and rdx, 0b1111111111111 # instrumentation
add al, -84 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rsi]
and al, -87
btr ecx, esi
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -103
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
bt dx, 81
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
btr dx, 209
bswap edi
cmovno bx, bx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
