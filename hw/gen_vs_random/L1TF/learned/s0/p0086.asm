.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 71
sbb al, 92
jmp .bb_0.1
.bb_0.1:
lea rdi, qword ptr [rsi + rdx]
jmp .bb_0.2
.bb_0.2:
setp dil
and al, al
mov al, -101
sub rdx, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
