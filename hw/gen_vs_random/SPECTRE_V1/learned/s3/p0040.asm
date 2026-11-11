.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -57 # instrumentation
cmovo rax, rsi
sbb dl, bl
cmp cl, dil
add al, bl
xor sil, -33
jl .bb_0.1
jmp .exit_0
.bb_0.1:
or dx, 0b1000000000000000 # instrumentation
bsf bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
