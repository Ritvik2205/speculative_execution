.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
or cl, sil
or sil, bl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
and bl, 68
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], bx
or dil, -41
xor dl, dil
jmp .bb_0.2
.bb_0.2:
and ax, -16061
test cl, 54
test dil, -51
btc ax, 30
test al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
