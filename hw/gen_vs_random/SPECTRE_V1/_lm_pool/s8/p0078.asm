.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 21 # instrumentation
adc cx, 84
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, -65
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
xor cl, al
jb .bb_0.2
jmp .bb_0.3
.bb_0.2:
js .bb_0.3
jmp .exit_0
.bb_0.3:
sbb cl, al
lea cx, qword ptr [rbx + rsi + 62]
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
add al, -65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
