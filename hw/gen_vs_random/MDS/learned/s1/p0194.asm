.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -89
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
and si, -121
or al, -24
not dl
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
and cl, dl
xor al, 122
or dil, dl
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
jmp .bb_0.1
.bb_0.1:
test al, bl
or al, dil
xor al, sil
or al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
