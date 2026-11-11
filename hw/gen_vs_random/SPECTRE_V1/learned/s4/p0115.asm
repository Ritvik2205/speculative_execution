.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
and cl, -57
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
sbb dil, -106
xor cl, -91
jp .bb_0.1
jmp .exit_0
.bb_0.1:
test cl, -33
adc bl, -76
sub dx, -23
and al, dl
test al, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
