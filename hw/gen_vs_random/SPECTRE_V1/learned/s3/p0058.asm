.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -8
test bl, -8
sbb al, 49
add cl, bl
sub al, dil
jmp .bb_0.1
.bb_0.1:
sbb al, 49
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
sub cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
