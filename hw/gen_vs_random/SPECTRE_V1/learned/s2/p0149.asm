.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, eax
add dil, -75
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
xchg dl, cl
add bl, -95
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, sil
and rax, -1128038253
and rax, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdi]
sbb al, 118
xor cl, -91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
