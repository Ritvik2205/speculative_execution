.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 123 # instrumentation
cmovo ax, cx
and rax, 452940266
or al, 74
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
or sil, -49
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
jmp .bb_0.1
.bb_0.1:
btr bx, 74
or di, 63
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -2053267874
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
