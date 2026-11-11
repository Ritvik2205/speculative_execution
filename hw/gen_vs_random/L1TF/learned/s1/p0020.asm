.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rax]
and sil, 37
xor rbx, 22
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], -24
cmp dil, 58
jmp .bb_0.1
.bb_0.1:
cmovnp rax, rcx
jmp .bb_0.2
.bb_0.2:
cmovl rbx, rbx
and ax, 7954
or sil, -44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
