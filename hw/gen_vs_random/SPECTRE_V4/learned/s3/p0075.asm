.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, 89
test al, 52
cmp bl, dl
cmp esi, 123
and al, sil
or al, -47
cmp cl, dil
cmp ebx, -19
cmp al, bl
add dl, bl
and dil, -23
and al, 49
or al, sil
cmp al, 98
xor ax, 45
sub bl, dl
or rax, 980130592
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
