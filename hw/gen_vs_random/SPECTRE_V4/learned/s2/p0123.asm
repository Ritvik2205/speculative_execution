.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, -82
or cl, bl
sub al, 59
or sil, al
or dl, dil
and bl, dl
mov bl, al
sbb dl, -106
movzx ax, dl
or eax, -1213318393
and bl, -30
adc dl, cl
and dl, -53
cmp al, 116
or al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
