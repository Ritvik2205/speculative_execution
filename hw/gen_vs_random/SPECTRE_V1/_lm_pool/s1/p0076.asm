.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 86 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
or bl, 6
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
inc dl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 78
test bl, -8
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -39
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
jl .bb_0.2
jmp .exit_0
.bb_0.2:
lea si, qword ptr [rdi + rcx + 83]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
