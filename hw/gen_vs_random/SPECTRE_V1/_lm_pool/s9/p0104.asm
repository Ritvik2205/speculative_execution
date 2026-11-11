.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -22629
adc cl, -81
sbb bl, al
lea rcx, qword ptr [rdi + rbx + 3]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dil
lea ax, qword ptr [rsi]
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rcx
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
