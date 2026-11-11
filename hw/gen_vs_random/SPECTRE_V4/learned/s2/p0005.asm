.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 32
test al, -26
and cl, -118
sbb dl, 75
or dl, dil
add al, -6
sbb al, 70
test bl, 78
xor cl, -15
xor ax, -17712
or rax, 980130592
dec dl
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
and dl, al
and bl, 76
and dil, -23
sbb dl, al
xor dx, ax
adc cl, -86
test dl, -102
sbb dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
