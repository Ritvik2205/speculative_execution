.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], -113
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub bl, dl
sbb al, 49
sub ax, -16648
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], cl
add al, dl
jmp .bb_0.2
.bb_0.2:
sub al, 63
sbb sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
