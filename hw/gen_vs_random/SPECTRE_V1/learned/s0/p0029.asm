.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, 64
test dl, sil
sbb sil, -78
xor cl, dil
cmovle rdi, rdx
add al, cl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rax + rdx]
sbb dil, -93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
