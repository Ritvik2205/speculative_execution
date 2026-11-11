.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 75
and rbx, 43
xor sil, dil
or al, dil
test cl, dl
test al, sil
sub dil, sil
mov al, sil
test dl, -102
mov dil, cl
sub dx, -12
cmp cl, -80
add bl, dl
sbb al, -14
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
