.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
lea rsi, qword ptr [rdi]
and bl, -43
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
lea rax, qword ptr [rdx + rdi + 16]
jmp .bb_0.1
.bb_0.1:
adc bl, dl
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rdx]
add dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
