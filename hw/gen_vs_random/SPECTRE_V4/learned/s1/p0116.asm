.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, sil
adc dx, 70
xor al, dl
xor ax, -22861
cmp dil, al
test bl, -116
adc sil, bl
cmp bl, 12
adc bl, -20
test bl, 110
sbb al, 70
test al, 18
sbb al, 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
