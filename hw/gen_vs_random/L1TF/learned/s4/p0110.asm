.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
sbb al, -14
and rdx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdx], 56
xor al, cl
test cl, al
jmp .bb_0.1
.bb_0.1:
test cl, 38
xor eax, -2123070438
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 39
and al, sil
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1315047763
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
