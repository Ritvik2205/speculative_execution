.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 23
bswap rsi
test eax, 645518295
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
and dil, -82
xor cl, sil
js .bb_0.1
jmp .exit_0
.bb_0.1:
and dil, -22
lea ax, qword ptr [rdx + rsi + 40]
sbb sil, cl
or rsi, 65
sub al, dl
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
