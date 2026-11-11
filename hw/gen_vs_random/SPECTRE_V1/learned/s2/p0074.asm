.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 112 # instrumentation
adc cl, dl
sub dl, 96
lea rsi, qword ptr [rax]
sbb dil, -106
sub rax, -1628299544
xor dil, cl
xor dl, cl
cmovno dx, ax
and bl, 87
sbb dl, sil
sub bl, dl
or dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
