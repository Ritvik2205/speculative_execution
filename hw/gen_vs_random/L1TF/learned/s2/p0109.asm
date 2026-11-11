.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
jmp .bb_0.1
.bb_0.1:
lea si, qword ptr [rbx + rcx + 33]
neg cl
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
cmp dil, cl
jmp .bb_0.3
.bb_0.3:
and eax, -409673666
and ax, 26813
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
