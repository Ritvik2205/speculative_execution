.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, -118
mov dl, bl
sbb al, -112
sbb al, -112
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
add rbx, 87
sbb al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
