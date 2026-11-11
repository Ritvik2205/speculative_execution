.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -33
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rbx]
xor rax, 376589024
sub sil, dil
sbb al, al
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jp .bb_0.3
jmp .exit_0
.bb_0.3:
sbb esi, 90
add dil, dl
add bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
