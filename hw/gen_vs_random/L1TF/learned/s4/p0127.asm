.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 89
and di, 56
test sil, 29
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
jmp .bb_0.2
.bb_0.2:
test al, -56
and rcx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rcx]
adc al, 80
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 109
lea rdi, qword ptr [rsi + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
