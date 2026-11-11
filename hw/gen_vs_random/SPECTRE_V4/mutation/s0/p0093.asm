.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -55 # instrumentation
cmovnbe esi, edi
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1308203108
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
or al, 27
bts bx, 102
add bl, 68 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rbx]
mov edx, esi
adc rcx, -99
and rdx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdx]
and ebx, esi
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -51
mul ax
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -49
bt edi, 233
add dl, 81 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdi]
mov rbx, rdx
mul cl
sbb eax, 426996540
dec rdx
and rcx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rbx
adc bl, bl
test bl, -29
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rsi
bswap edi
cmovbe cx, cx
cmp dl, 45
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
mov al, 90
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
cmp eax, 89
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
