.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rax]
cmp dx, cx
and cl, bl
not rbx
adc cl, dl
xor cl, -15
movsx rax, si
neg cl
mov al, cl
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rbx
btr ebx, 116
adc bl, al
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], -2
btc di, 83
or rbx, 69
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 4
mov bl, 106
cmp al, -53
cmovnle dx, si
and rdi, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 0
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
test bl, -16
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rsi
bswap edi
cmovbe cx, cx
cmp dl, -82
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
mov al, 90
sbb dl, -71
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
cmp eax, 1521417271
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
