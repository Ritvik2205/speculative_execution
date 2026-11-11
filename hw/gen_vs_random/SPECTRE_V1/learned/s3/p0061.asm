.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
add cl, -127
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rbx]
setnle cl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp rcx, 17
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
sbb dil, -93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
