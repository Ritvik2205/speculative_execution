.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 21 # instrumentation
adc bx, 84
xor cl, 89
not sil
test eax, 899472326
add al, -102
jmp .bb_0.1
.bb_0.1:
bt ebx, edx
jmp .bb_0.2
.bb_0.2:
test sil, cl
adc cl, -34
add bl, bl
or sil, -44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
