.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -89
or al, 16
and cx, -8
and dil, cl
test al, -7
xor al, dil
xor dl, cl
jmp .bb_0.1
.bb_0.1:
and dl, -73
or sil, -49
or al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
