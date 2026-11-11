.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, cl
lea rdx, qword ptr [rbx + rcx + 80]
adc bl, -76
lea rax, qword ptr [rbx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
lea edx, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
