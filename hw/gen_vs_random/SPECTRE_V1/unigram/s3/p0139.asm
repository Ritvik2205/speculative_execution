.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rax]
cmp sil, bl
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], -501175648
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -73
and rbx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dil
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax]
js .bb_0.1
jmp .exit_0
.bb_0.1:
setnp sil
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
add cl, -94 # instrumentation
or bl, cl
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 7
bts cx, 37
bswap ecx
cmp esi, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
