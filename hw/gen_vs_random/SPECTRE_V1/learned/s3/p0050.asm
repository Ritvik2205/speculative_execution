.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
test dl, -105
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
add cl, -127
add bl, -95
cmp al, bl
jnle .bb_0.3
jmp .bb_0.4
.bb_0.3:
lea rbx, qword ptr [rdx + rax + 5]
jmp .bb_0.4
.bb_0.4:
and rdi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
and dil, 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
