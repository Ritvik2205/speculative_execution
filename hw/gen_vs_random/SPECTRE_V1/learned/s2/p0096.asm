.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, cl
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
xchg cl, bl
lea cx, qword ptr [rbx]
xchg rdi, rax
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
test dil, -116
jmp .bb_0.4
.bb_0.4:
sbb dl, 127
or sil, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
