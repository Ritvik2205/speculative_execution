.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 86 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
lea dx, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
and ax, -22629
test esi, 2
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
and sil, 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
