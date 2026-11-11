.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 86
adc cl, -81
cmp dil, -78
xor dl, bl
sbb al, bl
sbb cl, 105
cmp dl, bl
adc sil, -77
sub sil, al
sub al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
