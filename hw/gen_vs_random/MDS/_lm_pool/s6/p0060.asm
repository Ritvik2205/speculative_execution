.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, sil
and dl, -73
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], bx
xor dl, -43
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
and sil, -69
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
not dl
or dl, -31
xor rsi, -117
and cx, -2
and sil, -69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
