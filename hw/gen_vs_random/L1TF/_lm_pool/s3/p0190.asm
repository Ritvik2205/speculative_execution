.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, 113
xor al, 89
sbb dl, cl
or edx, 94
jmp .bb_0.1
.bb_0.1:
adc al, -103
add al, 74
jmp .bb_0.2
.bb_0.2:
test cl, 67
sub rax, -15
btc bx, dx
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
