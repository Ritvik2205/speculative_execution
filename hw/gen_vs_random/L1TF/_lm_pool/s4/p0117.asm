.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -103 # instrumentation
cmovbe cx, cx
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
and ax, 26813
xchg dl, al
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
cmovnp rdi, rsi
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 112
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 1266701637
test al, sil
btc ax, si
test ax, 22956
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
