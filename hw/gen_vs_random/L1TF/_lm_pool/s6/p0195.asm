.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -84
or ebx, 60
test dil, -126
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
sbb al, dil
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
