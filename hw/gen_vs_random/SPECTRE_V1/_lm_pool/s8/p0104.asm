.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 82
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
sbb sil, dl
sbb cl, bl
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
sbb al, -112
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
test bl, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
