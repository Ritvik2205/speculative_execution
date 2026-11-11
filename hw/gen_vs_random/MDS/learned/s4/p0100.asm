.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, dil
jmp .bb_0.1
.bb_0.1:
xor al, cl
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 82
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -113
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
