.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, cl
sbb dl, -26
and sil, 93
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea esi, qword ptr [rbx]
xor al, dil
sub al, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
