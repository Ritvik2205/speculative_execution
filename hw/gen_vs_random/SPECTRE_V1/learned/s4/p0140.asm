.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 95
mov dl, al
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
cmp bl, sil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
jp .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
