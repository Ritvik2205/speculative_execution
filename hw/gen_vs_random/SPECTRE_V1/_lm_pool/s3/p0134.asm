.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, 86
lea cx, qword ptr [rax]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
xor dl, dil
cmp sil, al
sbb cl, al
imul al
jnz .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
