.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
adc bl, -14
or cx, 50
and rsi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
add dil, cl
adc dil, 120
sbb dl, dil
xor cl, 89
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
test al, -84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
