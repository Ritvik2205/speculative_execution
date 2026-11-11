.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dil
or eax, -863161215
cmp al, cl
add dil, cl
and dl, 126
adc bl, 79
dec sil
add bl, sil
cmp al, -122
or al, -90
xor cl, -15
add al, -112
or ax, -26182
not cx
test dl, 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
