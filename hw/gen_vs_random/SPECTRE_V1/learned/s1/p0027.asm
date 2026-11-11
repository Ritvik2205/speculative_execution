.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 6
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor di, 97
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
and dl, -92
cmovbe ax, dx
and rsi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rsi]
lea ax, qword ptr [rdx + rcx]
jp .bb_0.3
jmp .exit_0
.bb_0.3:
xor sil, sil
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
sbb al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
