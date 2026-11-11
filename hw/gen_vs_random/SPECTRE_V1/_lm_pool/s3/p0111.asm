.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdi]
or bl, bl
xor cl, bl
and rdx, -98
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rbx]
xchg ebx, ecx
and cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
