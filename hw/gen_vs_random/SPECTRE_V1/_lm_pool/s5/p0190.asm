.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 21 # instrumentation
adc bx, 93
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
xor dil, bl
jnp .bb_0.3
jmp .bb_0.4
.bb_0.3:
add ecx, 93
jnle .bb_0.4
jmp .bb_0.5
.bb_0.4:
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], cl
jl .bb_0.5
jmp .exit_0
.bb_0.5:
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
test dl, -36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
