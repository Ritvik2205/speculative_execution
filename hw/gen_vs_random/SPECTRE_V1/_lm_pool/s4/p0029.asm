.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rsi]
adc cl, -19
cmp rbx, 29
add si, 77
and di, 87
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
adc sil, -77
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dil
sub cl, -21
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
