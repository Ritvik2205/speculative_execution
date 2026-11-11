.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi]
sub al, bl
sub al, bl
xor dil, -37
sub al, -89
sbb dil, sil
lea cx, qword ptr [rbx + rdi]
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
or cx, 0b1000000000000000 # instrumentation
bsf di, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
