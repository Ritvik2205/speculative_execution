.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, cx
xor dx, 24
and dl, dl
or cl, -77
xor sil, -14
btr ax, cx
or al, -75
and dl, bl
not dl
test al, sil
or al, -75
and eax, -574348013
jmp .bb_0.1
.bb_0.1:
xor al, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
