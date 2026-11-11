.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
xor eax, -885407671
and ax, 26813
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
or bl, -5
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], 109
and rdi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
