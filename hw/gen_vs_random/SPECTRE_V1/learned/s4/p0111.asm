.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb dl, cl
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dl
adc ax, -614
sub rax, -1628299544
test rax, 1469613902
dec cl
xor rax, 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
