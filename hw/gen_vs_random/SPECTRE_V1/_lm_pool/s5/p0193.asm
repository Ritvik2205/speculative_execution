.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rsi]
lea bx, qword ptr [rbx]
adc ax, 24404
sub dil, -111
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor cl, -91
sub cl, dil
js .bb_0.2
jmp .exit_0
.bb_0.2:
sub bl, -6
sub dl, 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
