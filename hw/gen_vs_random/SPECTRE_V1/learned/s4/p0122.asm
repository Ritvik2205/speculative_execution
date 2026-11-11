.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, 98
lea ax, qword ptr [rbx]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
sub al, cl
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnp .bb_0.3
jmp .bb_0.4
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 54
sub al, dil
jp .bb_0.4
jmp .bb_0.5
.bb_0.4:
jmp .bb_0.5
.bb_0.5:
test cl, -120
js .bb_0.6
jmp .bb_0.7
.bb_0.6:
jnle .bb_0.7
jmp .exit_0
.bb_0.7:
cmp al, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
