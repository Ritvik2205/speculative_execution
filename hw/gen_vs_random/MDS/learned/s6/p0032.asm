.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
xor al, dil
xor al, 9
jmp .bb_0.1
.bb_0.1:
or bl, dl
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
xor cl, dl
test eax, 1729060510
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
xor dil, 124
xor bl, -102
xor cx, -18
or al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
