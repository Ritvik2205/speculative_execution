.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
cmovnb rdi, rsi
sub al, cl
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
adc al, -61
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], dil
cmp dl, -93
sub ebx, 3
adc cl, -34
lea ax, qword ptr [rsi + rbx + 39]
cmp dl, -56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
