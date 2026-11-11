.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 86 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rbx]
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 48
cmovno cx, dx
sub cl, -21
jnbe .bb_0.2
jmp .bb_0.3
.bb_0.2:
sbb bl, bl
sbb al, bl
jnp .bb_0.3
jmp .bb_0.4
.bb_0.3:
jnle .bb_0.4
jmp .bb_0.5
.bb_0.4:
jle .bb_0.5
jmp .bb_0.6
.bb_0.5:
jmp .bb_0.6
.bb_0.6:
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
