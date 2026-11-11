.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dl
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
adc cx, -30
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], 100
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub sil, -18
add bl, bl
sub sil, dil
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
test al, 48
sub al, -1
sub dl, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
