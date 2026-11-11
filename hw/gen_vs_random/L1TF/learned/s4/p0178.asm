.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 125
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 35
and rsi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rsi]
sub al, sil
jmp .bb_0.1
.bb_0.1:
test ebx, 26
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
jnp .bb_0.3
jmp .bb_0.4
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
lea cx, qword ptr [rax + rsi + 39]
setb bl
xor dil, -42
sbb al, sil
and rcx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
