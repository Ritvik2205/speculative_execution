.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 84
sub cl, bl
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea ecx, qword ptr [rcx + rbx]
sbb dl, bl
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
sbb al, 49
and al, dil
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], bl
sbb al, dl
jnp .bb_0.3
jmp .exit_0
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dil
or rax, -3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
