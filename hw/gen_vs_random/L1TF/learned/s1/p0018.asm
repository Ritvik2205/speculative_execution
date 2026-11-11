.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 44
sbb edi, 10
and sil, 93
adc bl, 86
and rcx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rcx]
adc cl, -34
and rdi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
bt rcx, 38
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 96
cmovno rbx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
