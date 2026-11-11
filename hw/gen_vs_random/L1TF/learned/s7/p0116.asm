.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 86 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
or bl, cl
xor bl, -5
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
add al, -102
jmp .bb_0.1
.bb_0.1:
add cl, 89 # instrumentation
adc cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
