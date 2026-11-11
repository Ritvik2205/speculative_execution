.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dl
or edx, esi
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
test dl, -37
cmovbe eax, edx
jmp .bb_0.2
.bb_0.2:
test al, -82
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], bl
sbb al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
