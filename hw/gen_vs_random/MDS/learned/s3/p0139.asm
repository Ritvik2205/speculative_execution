.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, ax
and cl, cl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
or rcx, -17
bts di, 73
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
jmp .bb_0.3
.bb_0.3:
test dl, 9
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
test cl, dil
btc di, 164
not bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
