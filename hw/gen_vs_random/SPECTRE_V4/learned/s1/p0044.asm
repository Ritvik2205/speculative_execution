.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, 32
or al, 27
and cx, -117
and dl, -53
sbb dl, 75
adc sil, dl
dec sil
sub al, 0
or sil, -47
mov cl, dil
adc cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
