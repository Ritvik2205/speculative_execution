.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 21 # instrumentation
adc dx, 62
sbb al, 66
add dil, bl
and cl, -57
add cl, bl
or rax, -3
and bl, cl
cmovl rax, rax
adc sil, -77
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
sbb al, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
