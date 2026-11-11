.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
sbb dil, dil
sub dil, 87
and dl, cl
jmp .bb_0.1
.bb_0.1:
test cl, 82
inc al
sbb dil, 28
jmp .bb_0.2
.bb_0.2:
setno sil
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], cl
jmp .bb_0.4
.bb_0.4:
sbb al, cl
and cx, ax
xor dl, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
