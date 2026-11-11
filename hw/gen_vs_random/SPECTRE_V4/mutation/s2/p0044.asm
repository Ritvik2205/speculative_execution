.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -16
dec sil
btr dx, 209
and rax, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rax]
and eax, -1056713114
and rsi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rsi]
sub ecx, -107
cmp cl, dl
cmp dl, 23
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add al, -84 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rsi]
sub rcx, rsi
bt dx, 193
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rsi
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
cmovbe cx, cx
and eax, ebx
and rax, 1072797615
mov al, 9
imul bl
xchg sil, dl
cmovo rax, rbx
sbb dl, 53
and rbx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rbx]
neg ecx
bswap edi
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edi
or ax, 7381
inc cl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -91
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -23
neg esi
cmp dx, 13
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
cmovno bx, bx
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
and al, -118
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -103
cmovo ax, bx
cmp eax, 1521417271
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
movzx ax, sil
btr ecx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
