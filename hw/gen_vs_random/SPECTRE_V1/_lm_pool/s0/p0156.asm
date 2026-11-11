.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
add sil, 2
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
xchg cl, dl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], cx
cmp rbx, 61
sbb edi, 52
sub sil, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
