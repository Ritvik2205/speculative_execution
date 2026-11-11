.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
test al, 22
xor dil, -124
jmp .bb_0.1
.bb_0.1:
test dl, -85
test bl, dl
xor cl, dl
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
test cl, bl
or sil, -49
test dl, dil
xor al, 55
and al, -54
xor cl, -13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
