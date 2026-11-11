.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rbx]
sub dil, sil
test rcx, -1420345926
sbb al, al
sbb bl, -41
test al, 84
xor al, dl
adc sil, al
sub dl, dil
jl .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
