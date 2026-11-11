.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dil
add rax, -704585563
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
lea rsi, qword ptr [rbx + rdx + 6]
cmovnp cx, ax
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 29
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
sbb bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
