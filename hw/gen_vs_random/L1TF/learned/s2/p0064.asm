.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ebx, ecx
and rdi, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
and cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
