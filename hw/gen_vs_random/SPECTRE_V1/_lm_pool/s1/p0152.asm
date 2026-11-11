.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 84
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub cl, bl
sub dil, sil
test al, -75
jmp .bb_0.2
.bb_0.2:
add bl, dil
and al, al
and rdx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
sbb al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
