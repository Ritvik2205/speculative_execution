.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, 127
and bl, cl
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rax]
btc di, dx
setb bl
and sil, 93
jmp .bb_0.2
.bb_0.2:
and ebx, 108
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
