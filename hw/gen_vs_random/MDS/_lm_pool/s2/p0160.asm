.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 3
xor al, bl
test al, dl
or al, 37
or al, cl
or cl, al
or al, -58
jmp .bb_0.1
.bb_0.1:
xor bl, 67
xor dl, -19
jmp .bb_0.2
.bb_0.2:
test al, -81
bt edi, eax
or sil, -49
bt eax, esi
and ax, -122
or rax, 52
xor al, -26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
