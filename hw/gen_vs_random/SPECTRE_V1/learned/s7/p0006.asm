.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
sbb cl, 105
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rax]
cmovnle rax, rsi
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
sbb al, sil
and dl, -111
setb al
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], bl
lea cx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
