.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dl
xor rax, -404206377
test bl, -114
test dl, -95
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
test rcx, -613256812
test eax, 158941032
xor dil, -5
test al, dil
xor ax, -1005
and dil, 125
xor rsi, -117
test ecx, -1843375753
and edx, -44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
