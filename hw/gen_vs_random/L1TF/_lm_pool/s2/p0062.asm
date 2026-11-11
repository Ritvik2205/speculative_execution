.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 15
sbb eax, -1165635662
and rdi, rbx
cmovz rcx, rdi
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
or al, cl
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
jmp .bb_0.3
.bb_0.3:
test sil, al
lea rdx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
