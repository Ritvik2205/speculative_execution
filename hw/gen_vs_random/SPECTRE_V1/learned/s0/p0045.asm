.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 25351
add dl, al
and al, -23
add dl, 47
sub rdi, 93
sbb bl, dl
and cl, al
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
or bl, dil
add dil, -75
add al, -13
sbb bl, sil
sbb dil, -106
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
