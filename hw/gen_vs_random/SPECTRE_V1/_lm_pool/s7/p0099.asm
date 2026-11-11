.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -24
sbb sil, -78
sub cl, dl
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sub sil, bl
adc dl, cl
sub al, dl
and rcx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and bx, -118
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
