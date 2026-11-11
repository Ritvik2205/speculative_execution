.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rsi, qword ptr [rsi]
xor al, -119
sbb al, 33
imul dl
sbb al, 33
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and al, -54
sub al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
