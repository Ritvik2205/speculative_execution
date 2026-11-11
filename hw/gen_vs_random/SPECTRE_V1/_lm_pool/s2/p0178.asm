.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 21 # instrumentation
adc dx, 16
sbb eax, 99727957
adc al, bl
sbb dil, -93
lea rax, qword ptr [rdi + rcx]
and cl, bl
and cl, dl
xor bl, cl
test al, -75
js .bb_0.1
jmp .exit_0
.bb_0.1:
test cl, -33
bswap rsi
test bx, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
