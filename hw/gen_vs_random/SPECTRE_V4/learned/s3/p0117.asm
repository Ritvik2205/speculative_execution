.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, al
cmovno ebx, eax
sub al, 69
cmp al, -122
adc dl, 55
add dl, -8
and al, -118
neg rdx
or bl, sil
sub dl, dil
sbb bl, -75
add al, bl
cmovnbe ecx, eax
add al, al
sbb dil, 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
