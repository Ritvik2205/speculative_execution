.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -1
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
adc al, -92
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
jns .bb_0.3
jmp .bb_0.4
.bb_0.3:
or edx, 62
sbb cl, 105
jnle .bb_0.4
jmp .bb_0.5
.bb_0.4:
add cl, -127
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
jnp .bb_0.5
jmp .exit_0
.bb_0.5:
js .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
