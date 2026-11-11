.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc sil
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
test bl, 45
jmp .bb_0.1
.bb_0.1:
lea dx, qword ptr [rdx]
inc dil
and rcx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rcx]
and sil, al
and dil, 58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
