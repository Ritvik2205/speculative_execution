.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 51
adc bl, al
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -29
and rsi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rcx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and bl, -56 # instrumentation
cmovnle ebx, eax
test eax, 645518295
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
