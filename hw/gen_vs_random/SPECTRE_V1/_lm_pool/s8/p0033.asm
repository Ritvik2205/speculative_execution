.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], bx
xor bl, al
lea ecx, qword ptr [rsi + rsi + 79]
sub cl, dl
xor dil, dl
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor cx, 87
jmp .bb_0.2
.bb_0.2:
cmp ax, 7046
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
