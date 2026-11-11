.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
test dl, cl
xor dil, bl
or cl, 7
jmp .bb_0.1
.bb_0.1:
xor al, -4
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
not cl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
or cl, -36
or rax, 1020005579
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and dl, dil
and rax, -1931765367
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
