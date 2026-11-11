.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 27
xchg ebx, eax
xor sil, dil
xor cl, 78
test cl, -120
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
adc sil, -77
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
