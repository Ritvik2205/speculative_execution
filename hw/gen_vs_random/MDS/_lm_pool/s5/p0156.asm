.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdi, rdi
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
or rax, -1523798580
test cl, dil
test cl, sil
jmp .bb_0.1
.bb_0.1:
or dl, 51
test cl, 0
and eax, 561041355
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
xor di, 40
and ax, -4410
xor al, cl
test dil, al
xor al, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
