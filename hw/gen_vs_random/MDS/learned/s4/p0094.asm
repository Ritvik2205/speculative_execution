.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -58
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
btc edx, 7
xor al, 8
or rax, 1020005579
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], si
jmp .bb_0.2
.bb_0.2:
test dl, -85
xor bl, -27
jmp .bb_0.3
.bb_0.3:
and ax, 339
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
