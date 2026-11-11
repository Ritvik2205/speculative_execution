.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, dil
add bl, 70
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
sbb bl, -41
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
lea ax, qword ptr [rsi]
and rdi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdi]
lea ecx, qword ptr [rdi + rcx + 31]
sub dil, cl
and dl, -111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
