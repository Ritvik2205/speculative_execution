.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
adc dl, bl
and sil, 52
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and cl, bl
test cx, di
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and dl, dil
sub al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
