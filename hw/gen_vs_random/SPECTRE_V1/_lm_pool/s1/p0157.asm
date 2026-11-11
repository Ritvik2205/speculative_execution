.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], -83
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 100
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
sub cl, al
lea rax, qword ptr [rcx + rbx + 4]
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
sbb sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
