.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
sub al, 63
and rsi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rsi]
and ax, 21910
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add dl, 47
and rax, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rax]
sub rax, -1628299544
jns .bb_0.2
jmp .exit_0
.bb_0.2:
sub rax, -1628299544
lea bx, qword ptr [rdi + rdx]
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
