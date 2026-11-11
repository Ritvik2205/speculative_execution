.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx esi, bx
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
sbb edi, 63
jnp .bb_0.3
jmp .exit_0
.bb_0.3:
add cl, al
sbb sil, -78
and cl, dl
and ax, 2806
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
