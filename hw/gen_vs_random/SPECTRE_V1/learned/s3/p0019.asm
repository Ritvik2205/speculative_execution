.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edx, ax
lea cx, qword ptr [rdi + rax]
add bl, dil
imul dl
cmovbe cx, bx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
adc bl, -76
cmp al, 23
sub rsi, 97
sbb al, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
