.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
and rcx, -29
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovb ebx, edi
xor eax, -105
sbb al, -107
add al, -109
adc al, -92
sub al, -66
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
