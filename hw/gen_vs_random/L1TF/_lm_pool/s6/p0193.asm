.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 23
test dl, 84
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 82
btc di, cx
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and bl, dl
jmp .bb_0.1
.bb_0.1:
cbw
xor al, sil
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], -22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
