.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 2806
add rcx, 23
cmp cl, 75
cmp bl, -114
test bl, -8
sbb al, sil
lea rdx, qword ptr [rcx + rdi + 13]
add dil, 72
and ax, 21910
sbb sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
