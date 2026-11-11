.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
sub sil, bl
and dil, dl
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
or al, 19
not cx
add dil, dil
adc cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
