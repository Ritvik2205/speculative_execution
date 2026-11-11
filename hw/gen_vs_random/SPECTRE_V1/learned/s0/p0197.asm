.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdx]
sbb al, sil
xor dl, bl
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and bl, dil
adc al, bl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
