.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 55
xchg rdx, rcx
cmp rcx, 80
and dil, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
