.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dx, ax
sub al, sil
add al, -72
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and bl, -65
add bl, bl
cmp bl, cl
add bx, -65
not cx
adc al, -82
xor al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
