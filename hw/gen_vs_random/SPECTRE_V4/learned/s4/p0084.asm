.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
or dl, -26
add bl, al
cmp dil, 53
neg cl
test eax, -251558852
adc bl, 79
adc dil, -15
mov dil, sil
and ax, -4731
or ax, -29521
sub al, dil
xor ax, 13329
and sil, -84
sub cl, -127
xor al, cl
sub dl, sil
adc edx, -125
sub al, 11
xor ebx, 40
sub cl, 92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
