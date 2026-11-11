.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 73
cmp cl, al
sbb al, dl
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmovno dx, si
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
sbb sil, -78
jnp .bb_0.3
jmp .exit_0
.bb_0.3:
xchg al, cl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1371410782
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
