.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
bt eax, 78
test al, -71
sub sil, -18
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jns .bb_0.3
jmp .exit_0
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
sub rax, -1628299544
and rsi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rsi]
cmovs ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
