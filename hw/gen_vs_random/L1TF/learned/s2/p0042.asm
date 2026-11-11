.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
or rax, 1362710293
jmp .bb_0.1
.bb_0.1:
lea rcx, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
sbb sil, -79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
