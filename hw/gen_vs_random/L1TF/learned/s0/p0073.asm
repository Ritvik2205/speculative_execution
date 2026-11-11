.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 10
test rdx, rdi
jmp .bb_0.1
.bb_0.1:
or bl, al
xor dil, dl
and dil, dil
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rsi]
bts rcx, 10
xor bx, 91
test sil, 29
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
