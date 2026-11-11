.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], cx
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 77
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
xor ax, -1005
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
jmp .bb_0.1
.bb_0.1:
test cl, 73
and dil, dil
test dil, 46
or al, 54
and cl, -19
jmp .bb_0.2
.bb_0.2:
test al, cl
xor ax, -23364
bt bx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
