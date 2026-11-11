.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc sil
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
mov dl, 100
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub cx, 84
jmp .bb_0.2
.bb_0.2:
xchg bl, cl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
lea ax, qword ptr [rbx + rsi]
sub al, dl
setz dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
