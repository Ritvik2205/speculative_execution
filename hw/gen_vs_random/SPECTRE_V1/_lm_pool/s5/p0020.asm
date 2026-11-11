.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rsi]
sbb cl, dil
or ebx, -124
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp bl, dil
jmp .bb_0.2
.bb_0.2:
jle .bb_0.3
jmp .exit_0
.bb_0.3:
test dl, -7
cmp dil, -78
and rsi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
