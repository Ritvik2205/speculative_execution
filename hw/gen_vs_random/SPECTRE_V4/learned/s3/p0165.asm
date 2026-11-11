.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, bl
or rax, -387680856
or al, bl
or dil, bl
and dl, sil
test dil, -5
and eax, 1913354318
xor sil, 93
sbb dl, -106
xor di, 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
