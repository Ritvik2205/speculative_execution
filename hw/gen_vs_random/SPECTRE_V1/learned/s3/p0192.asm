.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 23118
and ax, -22629
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], al
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
jns .bb_0.2
jmp .exit_0
.bb_0.2:
test rsi, -1408527332
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
