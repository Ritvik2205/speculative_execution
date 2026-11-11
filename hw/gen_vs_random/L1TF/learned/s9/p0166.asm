.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
add dx, 81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
