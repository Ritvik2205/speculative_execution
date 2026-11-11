.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rax]
dec al
add al, -47
cmp rax, -1877933118
dec bl
sbb al, -107
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, dil
sbb al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
