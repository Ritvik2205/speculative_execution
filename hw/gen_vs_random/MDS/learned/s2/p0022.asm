.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, -46
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
or cx, -42
or bl, al
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 62
xor bl, -88
and dl, -73
btr bx, cx
xor sil, bl
test ax, -31596
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
xor al, 122
jmp .bb_0.2
.bb_0.2:
and rcx, 107
test ax, 6113
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
