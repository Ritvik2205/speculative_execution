.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -103 # instrumentation
cmovbe dx, dx
and rsi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rsi]
sbb al, 104
and rax, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
and al, 33
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, -1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
