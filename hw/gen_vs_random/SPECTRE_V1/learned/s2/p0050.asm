.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rcx
adc eax, 34
or ax, 18658
js .bb_0.1
jmp .exit_0
.bb_0.1:
sbb sil, -78
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
mov bl, dl
sbb edi, 25
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
jp .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
