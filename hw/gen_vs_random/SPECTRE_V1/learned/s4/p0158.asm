.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], 45
lea bx, qword ptr [rbx]
sbb si, 3
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
