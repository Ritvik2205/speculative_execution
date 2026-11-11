.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -98 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], ax
add dl, 47
and rsi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], -54
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
add cl, -127
sub al, dl
inc eax
and cl, bl
jmp .bb_0.3
.bb_0.3:
add cl, -119 # instrumentation
adc cl, dil
lea ax, qword ptr [rsi]
and rdi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdi]
sub bx, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
