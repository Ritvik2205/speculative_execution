.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rcx, rbx
and rcx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rcx]
lea ax, qword ptr [rdi]
or bl, 4
and al, dil
xor al, bl
jmp .bb_0.1
.bb_0.1:
jnp .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
