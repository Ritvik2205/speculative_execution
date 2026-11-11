.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -103 # instrumentation
cmovbe cx, cx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
xor ecx, 46
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
setz dl
test dil, -116
add dl, 47
lea edx, qword ptr [rax]
sbb al, bl
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
