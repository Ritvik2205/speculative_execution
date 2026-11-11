.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdi
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb esi, 18
lea dx, qword ptr [rdx]
xchg edx, edi
and cl, -57
lea rcx, qword ptr [rax + rdx + 80]
sbb al, -14
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
xor dil, dil
and rdi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
