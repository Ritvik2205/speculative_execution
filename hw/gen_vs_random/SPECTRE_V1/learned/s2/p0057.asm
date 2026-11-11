.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 79
sbb esi, 26
cmp rax, -1877933118
cmp dil, cl
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 5
cmp al, cl
sub dl, bl
cmovnb ecx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
