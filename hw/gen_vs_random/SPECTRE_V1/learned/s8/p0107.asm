.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 92
cmp edx, 44
sub rdx, 91
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp dl, 119
jp .bb_0.2
jmp .exit_0
.bb_0.2:
lea edi, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
test dil, -116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
