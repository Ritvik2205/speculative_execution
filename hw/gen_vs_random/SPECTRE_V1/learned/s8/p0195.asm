.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
sub cl, al
lea dx, qword ptr [rdx]
add rax, 6
and rax, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
jl .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
