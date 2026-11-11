.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 27
and dil, 8
and ax, -4731
or sil, sil
and cl, dl
sbb al, dl
and al, 75
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
or dil, 89
or sil, dil
mov al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
