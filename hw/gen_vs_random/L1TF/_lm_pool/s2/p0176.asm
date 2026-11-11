.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, 127
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 64
and rax, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
