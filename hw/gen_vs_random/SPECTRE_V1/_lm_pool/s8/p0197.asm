.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 21 # instrumentation
adc ax, 32514
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea rsi, qword ptr [rdx + rdi + 19302]
test al, 59
sbb al, sil
jp .bb_0.2
jmp .exit_0
.bb_0.2:
setns cl
and rdx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rdx]
sub al, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
