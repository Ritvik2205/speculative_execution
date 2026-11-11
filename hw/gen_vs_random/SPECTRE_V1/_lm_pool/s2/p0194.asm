.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 86 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb edi, 29
xor al, dl
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jl .bb_0.3
jmp .exit_0
.bb_0.3:
inc rax
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -112
xor ax, 913
sbb dl, bl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
sub dil, -111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
