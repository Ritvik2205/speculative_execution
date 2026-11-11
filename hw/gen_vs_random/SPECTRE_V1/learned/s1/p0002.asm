.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 43
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dil
and dil, cl
sub rbx, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
