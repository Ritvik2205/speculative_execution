.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdx]
add al, 3
cmovno ax, dx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub edi, 61
cmp dil, sil
mov dl, dil
adc cl, -81
not bx
and al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
