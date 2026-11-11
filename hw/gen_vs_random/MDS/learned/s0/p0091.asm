.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -103 # instrumentation
cmovbe di, di
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
and ax, 19224
jmp .bb_0.2
.bb_0.2:
test dil, al
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
test cl, 0
and bl, 68
btr di, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
