.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 86 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
xchg rbx, rsi
xchg rax, rbx
and rdx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rdx]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jle .bb_0.2
jmp .exit_0
.bb_0.2:
and bl, bl
add sil, al
lea bx, qword ptr [rbx + rcx]
sub cl, -21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
