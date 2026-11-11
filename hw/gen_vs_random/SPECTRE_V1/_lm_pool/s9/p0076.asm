.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 43
add dil, 72
test dil, -116
lea si, qword ptr [rax + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
test bl, -8
btc ax, bx
jp .bb_0.2
jmp .exit_0
.bb_0.2:
cmp si, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
