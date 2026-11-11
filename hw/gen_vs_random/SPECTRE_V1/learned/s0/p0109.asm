.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec bx
lea cx, qword ptr [rax + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
or eax, -1161451853
or bl, 78
sub cl, dil
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], cl
and rdi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dil
jnle .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
