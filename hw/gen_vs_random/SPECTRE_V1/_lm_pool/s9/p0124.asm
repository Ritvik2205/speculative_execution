.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -98 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], bx
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
sbb cl, al
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
test dil, -116
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 21
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnp .bb_0.3
jmp .bb_0.4
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
jnp .bb_0.4
jmp .bb_0.5
.bb_0.4:
lea cx, qword ptr [rbx + rsi]
jmp .bb_0.5
.bb_0.5:
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
mov cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
