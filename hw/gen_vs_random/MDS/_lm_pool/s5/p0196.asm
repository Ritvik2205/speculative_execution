.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs ax, si
and cl, -19
or al, 16
and si, -121
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and dx, 3
test dil, -51
test eax, 1287331633
or rdx, -48
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
jmp .bb_0.1
.bb_0.1:
btr ax, bx
or al, -24
and cl, 79
test eax, -1634766116
test ax, -31596
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
