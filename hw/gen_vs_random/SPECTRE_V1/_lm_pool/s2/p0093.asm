.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
sbb edx, -8
sbb al, -107
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rdx + rbx]
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
lea rax, qword ptr [rdi + rsi + 66]
and dl, -92
or al, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
