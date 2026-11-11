.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -105
or edi, 85
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
sub esi, 19
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
sbb cl, sil
and cl, 86
jp .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
