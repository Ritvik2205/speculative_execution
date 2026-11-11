.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
sbb dil, cl
and rax, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rax]
sub rax, -2089384489
not eax
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnp .bb_0.2
jmp .bb_0.3
.bb_0.2:
sub rax, 1806572419
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 4
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
