.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 40 # instrumentation
btc rcx, rcx
test bl, -8
and dl, -111
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, -72
sbb sil, -78
js .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rax], 22
sbb al, dl
add bl, bl
sub cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
