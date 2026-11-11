.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], bx
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
lea cx, qword ptr [rsi + rax]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
cmp ax, 7046
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
adc al, -92
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
adc sil, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
