.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rsi, qword ptr [rcx]
jmp .bb_0.1
.bb_0.1:
lea rdx, qword ptr [rcx + rdi]
and cl, 9
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], 124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
