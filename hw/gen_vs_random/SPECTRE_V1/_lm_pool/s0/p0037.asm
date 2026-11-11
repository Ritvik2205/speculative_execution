.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rbx]
sbb al, -112
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
sub dl, cl
cmovnle rdx, rcx
setns cl
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea dx, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
