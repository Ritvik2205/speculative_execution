.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
sbb eax, 99727957
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 73
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb dil, dl
adc sil, -77
and ebx, 37
and rdx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
