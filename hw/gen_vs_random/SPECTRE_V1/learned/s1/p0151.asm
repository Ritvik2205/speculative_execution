.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rdx
cmp edi, 89
lea rax, qword ptr [rbx + rax + 29]
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
mov sil, cl
and al, -23
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
xchg esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
