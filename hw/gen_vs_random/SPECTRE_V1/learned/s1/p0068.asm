.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and ax, 32540
sbb cl, 105
sbb dil, -93
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
adc ecx, 90
mov bl, dl
add dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
