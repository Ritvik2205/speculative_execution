.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 57
and dl, -73
or sil, al
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 5
and sil, -9
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
test cl, -18
xor rax, -345061362
xor dil, 81
and bx, 61
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
xor cl, -13
xor cl, dl
xor dil, -3
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
