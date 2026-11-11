.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, -1641258390
adc edx, 45
cmp bl, dil
mov cl, al
cmovno dx, si
cmp dl, sil
or cl, -98
mov al, cl
adc bl, al
cmp dil, -58
sbb dil, cl
sub di, 3
test esi, 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
