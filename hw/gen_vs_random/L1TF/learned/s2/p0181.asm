.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 35
mov bl, cl
jmp .bb_0.1
.bb_0.1:
lea rdi, qword ptr [rcx + rdx + 37]
jmp .bb_0.2
.bb_0.2:
add bl, dl
test rdx, rbx
mov bl, dil
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
and ax, 26813
adc cl, -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
