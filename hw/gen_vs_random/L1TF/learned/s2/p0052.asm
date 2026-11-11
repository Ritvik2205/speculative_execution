.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -71 # instrumentation
adc eax, eax
adc dil, 120
xor ax, 22976
and sil, 93
jmp .bb_0.1
.bb_0.1:
test cl, 21
or ax, 11821
sbb sil, 19
xor cl, dil
inc sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
