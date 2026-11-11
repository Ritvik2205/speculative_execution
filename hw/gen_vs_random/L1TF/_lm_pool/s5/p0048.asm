.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
test dil, -126
sbb ax, -5921
sub cl, -49
and cl, 63
and rcx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
xchg edx, esi
inc esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
