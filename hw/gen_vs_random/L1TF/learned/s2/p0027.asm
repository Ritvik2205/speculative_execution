.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
sbb ebx, 9
test sil, cl
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 67
and rbx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test dl, -37
jmp .bb_0.2
.bb_0.2:
test bl, 12
or sil, -44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
