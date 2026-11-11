.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rbx
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 99
or rax, -443578116
test bl, 84
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 20
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
add bl, 89 # instrumentation
sbb al, bl
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
adc dil, 120
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
