.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
test dl, 84
sbb esi, 33
and rdi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdi]
xchg rcx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
