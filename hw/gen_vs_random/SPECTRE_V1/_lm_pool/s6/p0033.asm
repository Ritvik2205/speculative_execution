.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
add rax, 977059290
inc rbx
test cl, -24
xchg rsi, rdi
xchg cl, bl
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
btc ebx, 218
xchg rbx, rdi
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
