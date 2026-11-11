.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rax]
sub al, -1
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdi], 35
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
add dl, bl
test dil, -116
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
cmovno bx, dx
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
jl .bb_0.3
jmp .exit_0
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
sbb sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
