.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
or dl, al
adc bl, 127
or sil, cl
cmp cl, dil
test dl, -125
add al, -4
adc dl, sil
cmp rax, -2096157586
xor al, 30
or bl, -80
or si, 85
or cl, dil
adc dl, bl
movsx si, dil
sbb dil, 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
