.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz edi, ebx
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 60
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
lea edx, qword ptr [rdx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdx]
mul al
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
and rdi, rdi
cmp rdx, rdi
sub bx, 28
lea rdi, qword ptr [rdx + rcx]
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
sub cl, -47
sbb cl, 105
add dl, -89 # instrumentation
sbb edx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
