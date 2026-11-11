.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dx, bx
test al, -82
test edi, 61
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 15
test ax, 636
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dil
and rcx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
