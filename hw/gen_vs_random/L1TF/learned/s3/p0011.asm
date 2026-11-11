.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, 64
sbb dl, dil
jmp .bb_0.1
.bb_0.1:
sub dl, al
jmp .bb_0.2
.bb_0.2:
sub si, 83
or dl, dil
sbb al, sil
sub al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
