.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 31
and bl, 89
sbb al, dl
cmovb cx, di
jmp .bb_0.1
.bb_0.1:
adc eax, 457059541
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and di, 84
xor cl, 89
add bl, cl
add al, cl
test bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
