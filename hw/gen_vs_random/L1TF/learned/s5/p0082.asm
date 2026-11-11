.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -44
cmp eax, -234754587
or rsi, 26
btc ax, bx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 1
btc dx, bx
jmp .bb_0.2
.bb_0.2:
xor cl, sil
cmovle rbx, rcx
jmp .bb_0.3
.bb_0.3:
test dil, -126
or rsi, 51
test di, 52
cmp sil, bl
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
