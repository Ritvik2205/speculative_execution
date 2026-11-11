.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 59
sbb al, bl
sbb al, -107
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
test al, 59
add bl, 70
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -26
test dl, -7
and cl, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
