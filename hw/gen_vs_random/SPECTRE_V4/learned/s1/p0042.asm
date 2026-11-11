.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
add al, -44
test al, 52
mov dl, cl
or al, 1
mov al, cl
btc rax, rdx
cmp cl, bl
adc bl, cl
add ebx, -57
sub al, sil
test al, dil
test dl, -81
dec bl
or ebx, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
