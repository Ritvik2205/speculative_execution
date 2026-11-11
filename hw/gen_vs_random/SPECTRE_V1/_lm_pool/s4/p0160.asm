.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 61
sub sil, -18
lea rax, qword ptr [rbx]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, -1
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
jno .bb_0.3
jmp .exit_0
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], di
and bx, -118
sub dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
