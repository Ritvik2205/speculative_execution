.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
add bl, cl
xor al, 78
sbb sil, dl
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub dl, -12
xor al, dl
add dl, dl
adc al, dl
jp .bb_0.2
jmp .exit_0
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
mov cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
