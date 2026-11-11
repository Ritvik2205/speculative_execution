.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, al
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
inc dl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], 45
setp dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
