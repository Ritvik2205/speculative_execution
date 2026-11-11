.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
lea ax, qword ptr [rax]
and sil, 52
and rax, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rax]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
xchg rdx, rax
sbb al, dil
sub dl, dil
js .bb_0.3
jmp .exit_0
.bb_0.3:
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
test cl, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
