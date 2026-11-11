.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul ax, cx, 38
sbb dil, bl
xor dl, 64
add al, -117 # instrumentation
setp cl
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
cmovz rcx, rbx
and rdx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rsi]
cmovno rsi, rbx
cwde
sub rax, 1806572419
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], -106
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
