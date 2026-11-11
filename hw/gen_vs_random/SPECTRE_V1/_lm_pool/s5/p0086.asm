.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], cx
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub cl, dil
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 91
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
add dil, -75
jnz .bb_0.3
jmp .bb_0.4
.bb_0.3:
or eax, -1161451853
js .bb_0.4
jmp .exit_0
.bb_0.4:
add dl, dl
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rcx]
adc cl, -81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
