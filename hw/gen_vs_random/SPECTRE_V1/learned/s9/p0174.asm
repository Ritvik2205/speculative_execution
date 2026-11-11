.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 1
lea esi, qword ptr [rdx]
sbb sil, -78
add bl, 70
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
test dil, -116
and rbx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
