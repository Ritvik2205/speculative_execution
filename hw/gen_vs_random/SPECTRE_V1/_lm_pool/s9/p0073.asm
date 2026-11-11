.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
sbb al, 118
sub al, -82
or esi, -74
adc dl, 48
test cl, -33
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
xor dl, al
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
sub dil, -111
or cx, 0b1000000000000000 # instrumentation
bsf di, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
