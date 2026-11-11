.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 11
test cl, 64
sbb dl, al
and rax, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rax]
adc bx, 97
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -12952
sub dl, al
test dil, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
