.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
sbb al, al
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and dil, 58
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
inc cl
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 8
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
adc al, dil
sbb cl, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
