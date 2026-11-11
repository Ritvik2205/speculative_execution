.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 66
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
test cl, cl
bts rax, 77
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
xor di, -83
xor rdi, -9
or ax, -14271
not bl
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
jmp .bb_0.2
.bb_0.2:
or sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
