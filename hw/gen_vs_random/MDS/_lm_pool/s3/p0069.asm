.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rsi, rsi
or dl, cl
or rcx, -17
and si, -121
and cl, 79
not bl
test dl, 48
and cl, al
and eax, 454700988
or si, -12
test edx, -372470678
test ecx, -1843375753
sbb al, 6
xor cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
