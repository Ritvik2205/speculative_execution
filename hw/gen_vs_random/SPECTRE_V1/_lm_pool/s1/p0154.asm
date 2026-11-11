.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, edi
xor rax, -1905683998
and rsi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rsi]
bt edx, esi
setp al
sub al, dil
sbb bl, sil
and rdx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
test dl, -36
add cl, cl
setns dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
