.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], -55
and rdi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdi]
sub al, dil
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor cl, cl
sub dl, cl
jl .bb_0.2
jmp .exit_0
.bb_0.2:
adc bl, 102
test sil, 97
sub al, -1
bswap rcx
add sil, -68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
