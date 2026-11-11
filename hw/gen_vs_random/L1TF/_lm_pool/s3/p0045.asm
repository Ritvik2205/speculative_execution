.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -103 # instrumentation
cmovbe cx, cx
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
add bl, 68
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rbx]
and ax, 7954
jmp .bb_0.2
.bb_0.2:
test cl, 42
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
