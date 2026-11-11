.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -103 # instrumentation
cmovbe bx, bx
and rsi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rsi]
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
jb .bb_0.2
jmp .bb_0.3
.bb_0.2:
lea di, qword ptr [rdx]
jnz .bb_0.3
jmp .exit_0
.bb_0.3:
sbb edi, 7
jle .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
