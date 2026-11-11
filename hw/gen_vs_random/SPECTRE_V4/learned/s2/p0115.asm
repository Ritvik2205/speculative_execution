.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rdx, -49
sub bx, si
sbb al, -14
sub al, 59
inc sil
or dl, dil
sbb bl, 121
and al, -12
movsx dx, cl
mov dl, bl
cmp eax, 64
or rax, rdx
cmp al, -78
and rax, 1827025056
sbb bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
