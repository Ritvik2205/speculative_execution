.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
test bl, 45
or cl, 105
and ax, 7954
xor cl, dil
xor cl, bl
test al, 15
sbb dl, -26
and bl, cl
xor edi, 62
mov al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
