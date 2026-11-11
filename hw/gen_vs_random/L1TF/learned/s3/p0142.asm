.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, al
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 53
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
xor al, 16
jmp .bb_0.1
.bb_0.1:
xor sil, dil
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 38
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
mov al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
