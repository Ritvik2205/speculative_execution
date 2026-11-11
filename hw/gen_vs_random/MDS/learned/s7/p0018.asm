.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 88
test dil, -51
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 35
bts bx, ax
xor rbx, 89
xor cl, 55
test cl, 73
test rax, -359674714
bts rdx, rsi
xor dil, -3
test al, 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
