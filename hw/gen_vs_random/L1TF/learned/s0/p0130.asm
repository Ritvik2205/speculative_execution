.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 105
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dl
lea ax, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
test dl, 84
jmp .bb_0.2
.bb_0.2:
and ax, 37
inc dl
test rcx, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
