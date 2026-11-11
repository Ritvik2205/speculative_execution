.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, cl
bts rbx, rdi
or ax, -20176
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 25
test dl, -95
or cl, bl
and bl, bl
jmp .bb_0.1
.bb_0.1:
not dil
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], si
test al, dil
and rax, -978188247
jmp .bb_0.3
.bb_0.3:
test dil, -51
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], di
or rbx, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
