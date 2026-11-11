.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rsi]
and cl, -57
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
sbb cl, dl
cmovno rax, rdx
dec al
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx]
neg dl
test esi, 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
