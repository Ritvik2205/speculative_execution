.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts cx, 135
sub si, ax
sub dl, sil
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 98
or dl, -26
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx], 98
adc rax, 519150753
movzx eax, cx
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], -89
sbb bl, bl
sub sil, -35
cmovnbe ecx, edx
cmovno bx, si
cmp eax, ebx
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rcx]
adc sil, -2
cmp eax, -813838876
and rdx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
cmovno di, di
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rdx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdx]
imul rcx, rcx
imul rdx, rdx, 44
xor cl, 13
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdx]
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
sbb edi, 107
sbb al, -4
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
btc rdx, 130
xchg dx, di
and rdi, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
btr rcx, 134
and rsi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rsi]
btr bx, di
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rbx
movsx ebx, dl
test rax, -405021090
cmovle rsi, rdi
sbb ebx, -54
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
