.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 1
xor al, 9
jmp .bb_0.1
.bb_0.1:
and eax, 461212071
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
btr bx, 100
xor bl, -102
xor dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
