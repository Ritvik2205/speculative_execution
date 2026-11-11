.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, cl
xor dl, dl
and cl, 86
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb cl, al
sub bl, cl
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
and al, -23
add al, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
