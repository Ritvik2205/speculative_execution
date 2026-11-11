.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ecx, di
or dl, dil
setz al
cmovnle rbx, rsi
sub sil, -18
sbb eax, 2098460225
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb al, -112
sbb dl, cl
adc sil, -77
jnle .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
