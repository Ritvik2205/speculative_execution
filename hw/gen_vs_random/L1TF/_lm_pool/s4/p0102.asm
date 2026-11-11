.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 29
sub al, -97
or al, -2
jmp .bb_0.1
.bb_0.1:
xor cl, dl
setns bl
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], -107
add al, cl
xor di, 64
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dl
btc edi, 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
