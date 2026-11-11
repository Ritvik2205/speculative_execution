.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 40 # instrumentation
btc rdx, rdx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
xor esi, 106
test cl, -120
test al, -75
sub cl, -47
sbb al, sil
sbb al, dl
sbb al, -112
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
