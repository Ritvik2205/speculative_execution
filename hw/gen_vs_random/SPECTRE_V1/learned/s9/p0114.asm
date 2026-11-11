.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], cx
lea rcx, qword ptr [rax]
lea ax, qword ptr [rbx + rdx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb al, 33
cmp dx, 81
sbb eax, 1830317432
cmp rdx, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
