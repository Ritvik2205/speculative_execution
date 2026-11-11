.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 26813
test dl, 84
test cl, 74
xor al, bl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
test al, -32
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 15
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 1266701637
and rbx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
