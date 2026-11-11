.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -126
and rcx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
neg rdx
and bl, 124
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
jnle .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
