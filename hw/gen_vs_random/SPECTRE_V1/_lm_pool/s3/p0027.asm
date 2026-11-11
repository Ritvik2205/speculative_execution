.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
sbb al, 66
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -127
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
add dl, cl
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
