.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 113
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb bl, dl
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
add sil, bl
sbb dl, sil
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
sub al, dil
js .bb_0.3
jmp .exit_0
.bb_0.3:
lea dx, qword ptr [rbx + rsi]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
