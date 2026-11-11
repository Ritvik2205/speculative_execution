.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 86
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], -113
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
add dil, -75
sbb al, 118
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
xor eax, -105
and rdi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdi]
xor al, bl
add cl, -123 # instrumentation
cmovnp rsi, rcx
lea rbx, qword ptr [rdi + rsi + 97]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
