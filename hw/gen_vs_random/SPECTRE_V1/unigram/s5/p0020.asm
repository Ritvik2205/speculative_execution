.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setbe bl
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], bl
neg ebx
sub dil, dil
lea edi, qword ptr [rbx + rbx + 8]
and rbx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rax
sbb al, al
sub dl, al
add bl, 97 # instrumentation
cmovnb cx, dx
test cx, -17886
bswap rax
and rbx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
