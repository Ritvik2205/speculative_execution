.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
sub al, dil
and dl, 32
inc dil
jmp .bb_0.1
.bb_0.1:
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
test dil, -126
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 45
bt di, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
