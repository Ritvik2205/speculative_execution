.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 21 # instrumentation
adc dx, 78
sub al, -47
test sil, 29
lea ecx, qword ptr [rdx]
lea rsi, qword ptr [rax + rdi]
setb dl
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
test dl, -37
lea esi, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
