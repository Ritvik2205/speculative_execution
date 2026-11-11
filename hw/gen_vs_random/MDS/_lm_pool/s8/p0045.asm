.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 50
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
test bl, dil
or sil, al
and cx, -2
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
xor ax, 23633
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
or al, dil
and rcx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rcx]
and cx, -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
