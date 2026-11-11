.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 1495028166
sub al, 9
or dl, bl
dec dl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
or al, cl
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
adc cl, -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
