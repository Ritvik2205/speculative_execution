.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 90
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor bl, bl
setno cl
and rsi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rsi]
adc al, -82
jmp .bb_0.2
.bb_0.2:
sbb bl, -41
sbb al, dil
sub al, 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
