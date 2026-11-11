.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 72
test dil, -116
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
sub bl, sil
xchg rsi, rax
xchg bl, cl
add bl, al
xor dil, al
adc bl, dil
test dl, -36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
