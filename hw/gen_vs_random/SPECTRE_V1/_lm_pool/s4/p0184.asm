.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 29
cmp rdi, 51
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], 80
jl .bb_0.1
jmp .exit_0
.bb_0.1:
or bx, bx
sub cl, dil
adc sil, -77
sub dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
