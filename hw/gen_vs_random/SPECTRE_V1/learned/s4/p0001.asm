.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, bl
add dil, 72
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
xchg rdi, rbx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
sub dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
