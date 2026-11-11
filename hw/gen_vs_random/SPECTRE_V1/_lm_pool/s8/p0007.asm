.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 86 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rsi]
sub al, cl
xor ecx, 77
cmp dil, al
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
and rbx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rbx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb edi, 97
test cl, -120
add dil, -75
sbb al, dl
add al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
