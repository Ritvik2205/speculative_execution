.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg esi
and rdi, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 94
or al, -90
cmovno rbx, rcx
sbb ax, cx
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], si
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rbx]
mov sil, cl
add al, -79 # instrumentation
adc rbx, 11
sub ax, 24426
sbb sil, -124
cmovnle di, dx
cmovno cx, bx
and rbx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rbx]
sbb ecx, edi
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], 113
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 49
bswap edi
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
xor dl, -123
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rcx]
cmovz eax, esi
cmp cl, dl
add edi, 30
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], 10
cmovle rax, rbx
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr esi, esi
cmp bl, 12
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
cmovnbe ax, bx
and rsi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], ax
or rax, 980130592
movzx cx, al
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 95
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dl
add edx, edi
xor bx, 106
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
mul dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
