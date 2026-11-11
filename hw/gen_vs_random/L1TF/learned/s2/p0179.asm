.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 95 # instrumentation
mov dil, bl
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rcx]
cmovnbe edi, edx
xor cl, cl
jmp .bb_0.1
.bb_0.1:
add cl, 102 # instrumentation
sbb dx, ax
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], ax
and bl, sil
bts bx, cx
and rbx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
