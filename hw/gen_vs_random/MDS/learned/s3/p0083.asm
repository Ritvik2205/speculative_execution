.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, -13
and bx, 20
bts rsi, 205
xor bl, dil
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
or bl, dil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], bx
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], bx
test dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
