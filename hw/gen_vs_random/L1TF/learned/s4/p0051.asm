.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
inc dil
xor al, cl
sbb dl, al
sbb al, sil
cmp cl, -89
lea cx, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
sub cl, 86
jmp .bb_0.1
.bb_0.1:
and cx, 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
