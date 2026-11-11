.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 21 # instrumentation
adc ax, 32514
and rdi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdi]
sub dil, -111
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], rax
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
add dl, cl
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
adc sil, dil
js .bb_0.3
jmp .exit_0
.bb_0.3:
test dil, -116
sbb dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
