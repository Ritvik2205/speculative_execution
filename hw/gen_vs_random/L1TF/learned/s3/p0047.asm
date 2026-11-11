.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
or bl, cl
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
sub cl, dil
and bl, al
test cl, 46
adc dl, bl
cmp al, 27
sbb dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
