.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and dx, 87
lea edx, qword ptr [rax]
sbb al, sil
add al, sil
sbb al, 33
test cl, -62
and rax, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rax]
sbb ebx, 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
