.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
add bl, -95
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
sbb bl, 79
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
mov dil, sil
and al, cl
sbb dil, -106
test bl, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
