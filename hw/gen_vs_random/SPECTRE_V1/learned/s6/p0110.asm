.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dil, al
lea si, qword ptr [rax + rbx]
lea dx, qword ptr [rbx + rdi + 64]
test al, -75
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub bl, dl
sbb al, dl
adc sil, cl
sbb cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
