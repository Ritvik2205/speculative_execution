.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
xor sil, dil
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
inc rdx
sbb dil, sil
lea di, qword ptr [rdx]
sbb sil, -78
sub al, bl
and rdi, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdi]
sbb al, bl
xor dil, sil
lea cx, qword ptr [rax + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
