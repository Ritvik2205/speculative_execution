.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rsi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
sub bx, 27
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
setb al
btc di, bx
xor cx, 113
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
