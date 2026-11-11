.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], bl
xchg ax, ax
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
movzx dx, al
not eax
or rax, rbx
bts rdi, 144
or ebx, -82
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 12
adc dl, bl
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
add al, 40
cmovo cx, bx
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -51
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rdi
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 88
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
bswap edi
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 107
test bl, -91
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rsi
bswap edi
cmovbe cx, cx
cmp dl, 23
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
mov al, 124
sbb dl, -62
neg ecx
inc cl
sub ecx, -107
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
and eax, ebx
neg esi
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
cmp eax, 2
cmp cl, dl
cmovno bx, bx
and rax, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -23
movzx ax, sil
sub rcx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
