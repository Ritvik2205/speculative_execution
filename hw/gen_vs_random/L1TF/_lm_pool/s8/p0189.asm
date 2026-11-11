.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, 26
sbb cl, -11
and cx, 127
and dx, 19
and al, dl
sub al, -97
and di, 37
or cl, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
