.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, sil
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
sub rax, 1715032616
test sil, 29
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
add dl, 125
test dil, -126
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 1266701637
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
