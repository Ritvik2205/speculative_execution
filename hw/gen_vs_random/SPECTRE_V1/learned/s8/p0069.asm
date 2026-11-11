.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
mov cl, bl
sbb cl, 105
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
test sil, 13
not edx
lea di, qword ptr [rax + rbx + 29]
jmp .bb_0.2
.bb_0.2:
setle cl
or rax, -3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
