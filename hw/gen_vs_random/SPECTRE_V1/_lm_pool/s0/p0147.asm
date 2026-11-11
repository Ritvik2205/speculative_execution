.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 70
cmp dil, cl
sub al, 63
and rdi, rbx
and dl, -109
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
mov cl, bl
and cl, dl
cmovle rbx, rsi
lea dx, qword ptr [rdi + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
