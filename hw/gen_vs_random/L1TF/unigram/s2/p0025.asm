.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
inc ebx
and rdi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdi]
or al, cl
jmp .bb_0.1
.bb_0.1:
add dl, 104 # instrumentation
sbb rdx, 35
bswap rax
test dl, -37
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], al
add edx, 56
btr edx, 7
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rcx]
add dl, 37 # instrumentation
cmovbe ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
