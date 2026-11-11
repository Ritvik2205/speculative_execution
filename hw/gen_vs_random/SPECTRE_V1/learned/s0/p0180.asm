.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -19
add dl, 47
sub dil, cl
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov dil, cl
and al, bl
jp .bb_0.2
jmp .exit_0
.bb_0.2:
cmp al, -77
sbb al, 33
add dl, al
dec al
add dl, dl
sub dl, -12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
