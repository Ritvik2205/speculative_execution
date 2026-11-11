.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc al
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
adc dil, dl
sbb dl, dil
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
xchg bl, dl
mov sil, dil
jnp .bb_0.4
jmp .exit_0
.bb_0.4:
add al, cl
xor dil, dl
sbb sil, bl
sub dx, -23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
