.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -98 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], si
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
sub dil, -111
and rsi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rsi]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rcx]
and cl, cl
sbb dil, -106
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
mov bl, al
js .bb_0.3
jmp .exit_0
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
