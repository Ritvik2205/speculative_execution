.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 37
cmp ebx, 95
and rax, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rax]
cmovnle rax, rbx
or bx, 90
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rsi]
add ax, -10746
or dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
