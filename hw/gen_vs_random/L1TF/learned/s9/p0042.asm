.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
test dil, -126
btc bx, cx
and rbx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rbx]
test dil, -126
and rdx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
test bl, 12
adc cl, dil
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
