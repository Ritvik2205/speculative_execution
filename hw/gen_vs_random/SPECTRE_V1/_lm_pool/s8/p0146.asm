.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 67 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
cmp rcx, 13
test cl, -62
and rcx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rcx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and cl, 86
sbb al, 49
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
not ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
