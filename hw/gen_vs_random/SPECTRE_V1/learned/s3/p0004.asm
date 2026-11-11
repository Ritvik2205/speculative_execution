.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -31
sbb al, -14
add al, dil
and bl, 87
test dil, -116
test bl, -8
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
xor esi, 106
and cl, cl
adc bl, 102
xor cx, 76
sbb ebx, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
