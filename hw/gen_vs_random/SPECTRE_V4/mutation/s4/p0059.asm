.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -115
cmp cl, dl
bswap edi
neg esi
movzx ax, sil
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
cmp eax, 89
test bl, 110
btr ecx, esi
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -87
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edi
bt dx, 213
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rsi
btr dx, 245
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and rax, 1072797615
and al, 5
xchg sil, dl
cmovno bx, bx
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
or ax, 11396
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -91
cmp dl, 95
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
cmovbe cx, cx
and eax, ebx
cmovo ax, bx
sbb dl, -62
neg ecx
and eax, -1948401947
inc cl
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
dec sil
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rsi]
cmp dx, -1
sub rcx, rsi
and rdx, 0b1111111111111 # instrumentation
add al, -84 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rax]
sub ecx, -107
cmovo rax, rbx
imul bl
mov al, 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
