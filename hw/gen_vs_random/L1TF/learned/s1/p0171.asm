.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg edi, edx
xchg ecx, edi
and rsi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
sub al, bl
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
