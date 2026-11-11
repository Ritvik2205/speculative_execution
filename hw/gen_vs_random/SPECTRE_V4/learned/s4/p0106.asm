.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
cmp rax, -2096157586
adc al, 43
add al, -3
test dl, -102
inc ecx
adc dil, 124
adc bl, dl
mov al, bl
sbb cl, 35
add bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
