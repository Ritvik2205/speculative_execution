.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
sbb sil, -78
or cl, dil
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jno .bb_0.3
jmp .exit_0
.bb_0.3:
sub dil, bl
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
lea rsi, qword ptr [rdx]
sub cl, sil
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
xor di, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
