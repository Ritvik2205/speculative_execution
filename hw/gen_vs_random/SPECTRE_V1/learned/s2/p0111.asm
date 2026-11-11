.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -103 # instrumentation
cmovbe cx, cx
and dil, -93
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], 89
sub sil, -18
bt ecx, esi
jp .bb_0.2
jmp .exit_0
.bb_0.2:
sbb ecx, 61
lea rsi, qword ptr [rdi + rbx]
and rbx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rbx]
xchg rbx, rcx
mov sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
