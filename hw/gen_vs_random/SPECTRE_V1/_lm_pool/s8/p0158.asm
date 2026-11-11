.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], ax
sbb cl, 105
sub al, dl
not eax
lea bx, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rbx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
lea rax, qword ptr [rbx + rdx + 34714]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
