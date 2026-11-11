.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -14 # instrumentation
lea cx, qword ptr [rbx + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rsi]
sbb al, 61
jmp .bb_0.1
.bb_0.1:
inc rdx
and al, dil
sub al, dil
and al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
