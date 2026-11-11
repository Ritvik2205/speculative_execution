.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 40
and dl, -111
and dil, al
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and cl, 86
and dl, al
sbb edi, 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
