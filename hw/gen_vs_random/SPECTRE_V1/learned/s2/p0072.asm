.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
imul dl
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and sil, 111
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
sbb eax, 125
jp .bb_0.3
jmp .exit_0
.bb_0.3:
sbb ebx, 73
and rsi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rsi]
sbb edi, 36
and ax, 25351
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
