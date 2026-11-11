.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 0
test dl, -119
test al, -7
test al, 22
or rax, 1461812833
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and bx, 63
test dil, -80
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
or rax, rdi
jmp .bb_0.1
.bb_0.1:
and bl, 68
and dil, -62
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
