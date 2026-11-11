.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, sil
and dil, al
and cl, dil
test al, 48
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
adc bl, dl
sbb dl, dil
add sil, -68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
