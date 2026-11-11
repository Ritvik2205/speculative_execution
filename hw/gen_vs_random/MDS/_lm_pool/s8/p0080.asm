.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, dil
test dl, 48
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 89
jmp .bb_0.2
.bb_0.2:
test dil, -80
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
xor dil, 81
xor ax, -6793
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
and bl, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
