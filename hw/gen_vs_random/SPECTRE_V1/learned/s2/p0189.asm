.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 59
or cl, -62
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub esi, 39
sbb al, cl
sbb cl, 105
cmp al, cl
or bl, 64
add al, -72
cmp dl, dil
xor cl, -91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
