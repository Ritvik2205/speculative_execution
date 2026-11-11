.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 18
and cl, dl
and rbx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rbx]
adc sil, -77
sbb cl, 105
imul dl
sbb bl, dil
test bl, al
or dx, 0b1000000000000000 # instrumentation
bsf bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
