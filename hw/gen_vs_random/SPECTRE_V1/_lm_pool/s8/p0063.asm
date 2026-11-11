.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -127
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
sub al, dl
test cl, -24
lea cx, qword ptr [rsi]
mov dil, bl
and cl, 86
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
adc sil, -77
test bl, -8
lea rdx, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
