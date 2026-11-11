.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
sbb dil, bl
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
xor dl, 64
cwde
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], -106
sub rax, 1806572419
cmovno rsi, rbx
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], cx
cmovz rcx, rbx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rsi]
add al, -117 # instrumentation
setp cl
imul ax, cx, 38
and rdx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
add bl, 62 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rcx]
or bl, bl
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
bt rdi, 18
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], cl
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 125
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], -8408
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
