.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -70
sub al, -97
sbb dil, bl
test al, -84
sub al, -47
adc ax, 87
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], al
sbb rax, -1841833326
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
add si, -5
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
