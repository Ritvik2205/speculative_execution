.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -103 # instrumentation
cmovbe di, di
jmp .bb_0.1
.bb_0.1:
nop
and rsi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rsi]
bts esi, 31
and cl, 94
jmp .bb_0.2
.bb_0.2:
dec al
lea eax, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
