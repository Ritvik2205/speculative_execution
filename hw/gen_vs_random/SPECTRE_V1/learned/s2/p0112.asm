.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rbx]
adc dil, cl
lea cx, qword ptr [rdx]
cmp cl, bl
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
jp .bb_0.3
jmp .exit_0
.bb_0.3:
test dl, -7
cmp al, cl
and bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
