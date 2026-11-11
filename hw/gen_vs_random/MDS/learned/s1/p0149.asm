.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dil
test bl, -14
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
and bl, bl
btc di, 233
jmp .bb_0.2
.bb_0.2:
test al, 127
jmp .bb_0.3
.bb_0.3:
test sil, 17
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], di
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
xor dl, al
or bl, al
or sil, -49
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
test dl, -85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
