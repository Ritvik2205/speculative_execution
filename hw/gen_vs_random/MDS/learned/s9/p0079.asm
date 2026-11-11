.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, cx
not al
and rsi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rsi]
and sil, al
test cl, dl
and edi, 23
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
test cl, 0
xor bx, 68
xor dil, 124
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
or rax, -689609688
and cx, -8
or dil, bl
jmp .bb_0.3
.bb_0.3:
and ax, 31082
test dl, -85
and rcx, 107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
