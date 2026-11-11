.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
xor ebx, 100
sbb dil, -93
lea ebx, qword ptr [rdx]
lea ax, qword ptr [rdx + rdi]
add cl, -127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
