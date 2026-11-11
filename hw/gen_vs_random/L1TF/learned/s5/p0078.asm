.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 18
test al, -82
and bl, 89
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 61
adc al, bl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
jmp .bb_0.4
.bb_0.4:
sbb al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
