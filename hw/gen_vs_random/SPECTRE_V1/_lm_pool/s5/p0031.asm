.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
add rsi, 109
add rax, -704585563
and rax, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rax]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
mov al, cl
and rax, -273199823
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], -9
sub rax, -1628299544
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
