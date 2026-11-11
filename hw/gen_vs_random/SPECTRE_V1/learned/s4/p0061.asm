.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rsi]
or si, si
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], dx
sub cl, -47
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -109
lea di, qword ptr [rax + rsi]
and rsi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rsi]
adc sil, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
