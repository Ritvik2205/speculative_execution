.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -98 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], bx
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], 57
cmp rsi, 53
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub dil, dl
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
lea bx, qword ptr [rsi + rax + 70]
and rax, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rax]
xor al, 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
