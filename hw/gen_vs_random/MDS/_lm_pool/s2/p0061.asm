.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
or al, al
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
test al, -7
xor rax, -1657511731
or rdi, 21
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
and cx, -8
test al, -7
or cl, sil
xor cl, 15
and di, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
