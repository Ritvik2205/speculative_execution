.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -68
btc ecx, 78
cmp rax, -1365488374
test cl, -33
and cl, 86
and cl, -57
jl .bb_0.1
jmp .exit_0
.bb_0.1:
sbb bl, dl
adc ax, 24404
and rdi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
