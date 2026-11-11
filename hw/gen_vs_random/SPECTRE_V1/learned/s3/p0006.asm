.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -103 # instrumentation
cmovbe cx, cx
jle .bb_0.1
jmp .exit_0
.bb_0.1:
add dil, dil
test bl, dil
add sil, cl
add cl, cl
lea bx, qword ptr [rdx + rax]
lea rbx, qword ptr [rax + rcx + 85]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
sub al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
