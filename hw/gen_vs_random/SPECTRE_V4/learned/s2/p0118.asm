.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov al, dl
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
adc cl, sil
sub sil, -35
or cl, dl
adc bl, cl
sbb al, -43
cmovno cx, ax
xor ax, -17712
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
mov dl, cl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
xor rdi, -72
xor al, 106
neg al
xor dil, bl
adc dl, al
and al, -118
test dl, -102
sub cl, bl
sbb al, -3
sbb edx, 80
inc dl
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], cx
test bl, 87
and sil, sil
and dl, 24
sub bl, sil
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
mov al, 124
bts bx, 42
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
xor ax, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
