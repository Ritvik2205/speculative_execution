.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edi, 248
btc dx, cx
bts rsi, 221
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
jmp .bb_0.1
.bb_0.1:
btc rsi, 105
and ax, 31082
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
test sil, dil
or bl, 13
test dil, -80
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
xor dl, -43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
