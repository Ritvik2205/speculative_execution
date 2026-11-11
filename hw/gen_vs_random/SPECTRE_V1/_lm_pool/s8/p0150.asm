.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edi, ax
and si, 7
lea di, qword ptr [rax + rbx + 21]
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
and cl, bl
lea ax, qword ptr [rdx]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb al, -112
jmp .bb_0.2
.bb_0.2:
sub al, -1
inc eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
