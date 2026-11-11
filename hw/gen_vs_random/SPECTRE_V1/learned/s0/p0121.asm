.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dil, cl
xor al, al
sub dl, al
and edx, -62
cmp cl, sil
mov bl, sil
sub cx, 18
test dl, -7
xor dl, al
xor cl, 71
xor dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
