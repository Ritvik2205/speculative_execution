.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
sbb sil, -78
add dx, -103
and rcx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rcx]
adc cx, -30
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
test dil, -116
xor dil, al
mov al, -28
mov sil, cl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
