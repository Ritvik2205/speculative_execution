.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
sbb dl, 127
mov dil, cl
sbb cl, 105
adc bl, -76
sbb dil, dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
test cl, -33
sub cl, dl
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
sbb dil, cl
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
