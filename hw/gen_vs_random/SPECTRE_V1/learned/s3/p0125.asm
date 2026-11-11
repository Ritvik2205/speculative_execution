.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
and bl, cl
sbb al, 66
loopne .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
cmp ax, -11439
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
and al, 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
