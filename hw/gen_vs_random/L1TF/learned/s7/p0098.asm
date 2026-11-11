.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 24
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], -24
and sil, -90
and cl, cl
sub bx, 78
or rax, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
