.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 40 # instrumentation
cmovbe dx, cx
and rax, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rax]
mov dl, dil
jmp .bb_0.1
.bb_0.1:
or dl, cl
and ax, 7954
mov dil, 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
