.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
mov bl, dil
lea rbx, qword ptr [rdx]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov sil, dil
bt edx, edi
jmp .bb_0.2
.bb_0.2:
test cl, -120
not ax
sbb al, dil
lea rdx, qword ptr [rax + rbx]
sbb al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
