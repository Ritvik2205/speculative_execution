.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rcx, -121
test bl, 87
test cl, -10
test dl, bl
sbb cl, -69
sub cl, dl
neg rdx
sbb al, dl
inc al
mov al, cl
mov cl, bl
mov dil, 43
xor dx, cx
sbb al, cl
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
mov dl, 81
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
and rcx, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
test cl, -10
bswap eax
cmp sil, cl
or eax, -1213318393
cmp dil, -29
xchg dl, dil
or dil, -104
sbb cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
