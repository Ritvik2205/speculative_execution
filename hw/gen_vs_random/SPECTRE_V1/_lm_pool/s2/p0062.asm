.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
dec sil
sub al, cl
test al, dil
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
sbb eax, 125
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea rcx, qword ptr [rdx]
js .bb_0.2
jmp .exit_0
.bb_0.2:
and rbx, rdi
cmp al, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
