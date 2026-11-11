.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], si
mov dl, dil
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 31
sub dil, dl
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnbe .bb_0.3
jmp .bb_0.4
.bb_0.3:
add cl, -127
and cl, 86
jmp .bb_0.4
.bb_0.4:
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
sbb dl, cl
test dl, -36
lea bx, qword ptr [rdx + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
