.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 112 # instrumentation
adc al, dl
and rsi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rsi]
test cl, -62
and rbx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rbx]
test cl, -62
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
