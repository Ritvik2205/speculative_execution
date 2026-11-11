.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], cl
cmp bx, 94
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .exit_0
.bb_0.2:
sbb al, -112
sbb cx, 95
jnp .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
