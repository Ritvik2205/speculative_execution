.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
or esi, -74
and cx, 21
setz dl
sbb al, dil
lea cx, qword ptr [rsi + rax]
and dil, -114
xor bl, dil
test cl, -33
sbb bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
