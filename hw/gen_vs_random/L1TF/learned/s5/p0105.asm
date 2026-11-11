.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs dx, di
and rsi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rsi]
cmp rsi, 21
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 8
jmp .bb_0.1
.bb_0.1:
test cl, sil
lea ax, qword ptr [rdi + rsi + 3]
jmp .bb_0.2
.bb_0.2:
test al, -32
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rcx
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
