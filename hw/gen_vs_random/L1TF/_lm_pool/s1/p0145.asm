.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rsi]
test dl, -37
sub al, -97
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
jmp .bb_0.1
.bb_0.1:
cmp ecx, 48
jmp .bb_0.2
.bb_0.2:
add cl, 89 # instrumentation
adc cl, bl
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
lea bx, qword ptr [rsi + rax + 85]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
