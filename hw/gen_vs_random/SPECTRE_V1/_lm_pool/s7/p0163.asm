.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub sil, -18
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], -113
sub al, cl
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], bl
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax], 5
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
add dl, 47
or sil, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
