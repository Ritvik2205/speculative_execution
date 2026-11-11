.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
sbb al, cl
sub dil, -111
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -770247768
jmp .bb_0.1
.bb_0.1:
sub al, -82
and rcx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rcx]
sbb ecx, 72
test dl, -36
sub al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
