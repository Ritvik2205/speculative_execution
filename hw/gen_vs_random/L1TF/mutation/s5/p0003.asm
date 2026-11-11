.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 115 # instrumentation
setz dl
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rdi
add bl, -109 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 102
and al, dil
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
sbb dil, bl
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
xor dl, 9
cwde
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], -106
sub rax, 1715032616
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
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
