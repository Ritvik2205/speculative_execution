.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc bl
or dil, -113
sbb sil, -79
test dil, -126
xor al, cl
sbb eax, -403815802
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
adc bl, dil
and rdx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdx]
cmp si, 95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
