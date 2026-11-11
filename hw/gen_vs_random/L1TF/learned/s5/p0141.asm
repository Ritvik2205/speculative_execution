.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dil
lea esi, qword ptr [rdi]
jmp .bb_0.1
.bb_0.1:
test dil, -126
setp bl
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
