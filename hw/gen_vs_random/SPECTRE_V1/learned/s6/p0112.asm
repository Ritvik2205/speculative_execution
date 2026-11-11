.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
test cl, bl
test al, 59
sbb al, bl
test cl, -62
lea rdx, qword ptr [rsi + rdi]
adc cl, -19
test dil, dl
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
