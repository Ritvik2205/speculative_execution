.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, -16
add sil, -18
xor dl, bl
cmovz edi, esi
mov ax, 31802
and bl, dil
mov al, sil
or al, cl
or dl, -26
mov sil, cl
and al, al
adc bl, 97
or al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
