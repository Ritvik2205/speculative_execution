.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -98 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], ax
sub dil, -111
test al, 59
lea edi, qword ptr [rdx]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, al
adc al, cl
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
js .bb_0.3
jmp .exit_0
.bb_0.3:
test dl, -105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
