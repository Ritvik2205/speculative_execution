.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rsi]
and cl, 69
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], bx
sbb al, -4
dec al
jmp .bb_0.3
.bb_0.3:
imul eax, edi
test edx, -541774418
neg dl
test esi, 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
