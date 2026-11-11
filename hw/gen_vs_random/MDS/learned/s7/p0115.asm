.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
or dil, -78
and dil, dil
btr ax, 193
xor rsi, -117
and sil, 89
test cl, bl
test ecx, -1843375753
and rax, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rax]
and dil, sil
xor sil, -46
test dl, 9
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
btc bx, 58
test bl, -14
and rdi, 28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
