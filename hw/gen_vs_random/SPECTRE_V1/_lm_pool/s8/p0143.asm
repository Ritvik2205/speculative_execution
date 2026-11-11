.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov sil, dil
sub al, bl
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
sbb al, 118
and rbx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 45
sbb cl, dl
jnbe .bb_0.3
jmp .exit_0
.bb_0.3:
sub al, dil
sub al, 63
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 9
sbb sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
