.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 68
or al, cl
or dl, sil
or al, sil
or cl, dil
xor rdi, -9
xor rdi, -9
test sil, dl
test bx, 25542
or bl, sil
or bl, cl
xor bl, -102
or dil, -71
and al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
