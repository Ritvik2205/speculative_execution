.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, dl
test bl, -29
or dl, dil
cmp dl, dil
test edx, 1479885278
neg cl
test rdx, -1074289902
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 20
bt di, bx
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
sbb al, cl
cmp bl, -16
sbb sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
