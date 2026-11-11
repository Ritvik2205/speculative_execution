.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 52
sbb sil, dl
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
test cl, -24
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
sbb bl, cl
and cl, -57
adc dil, 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
