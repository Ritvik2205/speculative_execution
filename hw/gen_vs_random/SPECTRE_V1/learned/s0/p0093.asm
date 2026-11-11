.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 32540
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp al, dl
and al, dil
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
sbb dl, 127
inc eax
jp .bb_0.3
jmp .exit_0
.bb_0.3:
test al, -71
adc cl, -81
test dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
