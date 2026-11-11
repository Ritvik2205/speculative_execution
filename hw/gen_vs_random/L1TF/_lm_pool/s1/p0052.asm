.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dl
and rsi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rsi]
test cl, 10
adc al, sil
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp bx, -21
jmp .bb_0.2
.bb_0.2:
test cl, 11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
