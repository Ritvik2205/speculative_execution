.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 113
sub al, sil
and rax, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rax]
sub rdx, 76
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
lea rdi, qword ptr [rbx + rdx + 90]
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
