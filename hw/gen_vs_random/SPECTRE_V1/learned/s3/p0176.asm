.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
or dil, 80
test cl, -33
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], dl
adc dil, al
add dl, bl
mov cl, dil
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb dl, 127
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
test al, 42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
