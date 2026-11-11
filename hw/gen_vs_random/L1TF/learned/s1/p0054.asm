.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, bl
xor rdi, -80
test dil, -126
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
imul rbx
sub al, -75
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
sbb dil, bl
and rsi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rsi]
bswap rax
test edx, -541774418
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
