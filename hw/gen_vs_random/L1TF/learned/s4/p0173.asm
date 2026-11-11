.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 27
and rdx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
adc ax, 87
xor dl, bl
or dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
