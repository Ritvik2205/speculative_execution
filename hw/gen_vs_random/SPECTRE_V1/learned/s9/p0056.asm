.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 47
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
adc al, -82
and rcx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rcx]
cmovnbe ecx, edi
jns .bb_0.1
jmp .exit_0
.bb_0.1:
adc si, 6
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
lea rax, qword ptr [rsi + rdi + 67]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
