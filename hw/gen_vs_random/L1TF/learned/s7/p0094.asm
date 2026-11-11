.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -103 # instrumentation
cmovbe bx, bx
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
test dil, bl
jmp .bb_0.1
.bb_0.1:
and di, cx
add cl, 88
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
not bl
xor cl, 89
btc esi, 44
add sil, sil
bt di, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
