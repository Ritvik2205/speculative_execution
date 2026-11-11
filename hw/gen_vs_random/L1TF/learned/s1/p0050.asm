.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
add sil, -61
and rbx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rbx]
or al, -48
test al, -84
jmp .bb_0.1
.bb_0.1:
test dil, -126
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 57
sbb al, bl
sbb sil, dil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
adc al, -103
or al, -2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
