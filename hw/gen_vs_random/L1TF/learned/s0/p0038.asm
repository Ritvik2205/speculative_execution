.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
add al, -46
sbb bl, dl
xor bl, 38
and cl, cl
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 96
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 80
lea si, qword ptr [rax + rdx + 23]
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
and di, 66
btc di, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
