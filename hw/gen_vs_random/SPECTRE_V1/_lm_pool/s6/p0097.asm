.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, 63
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
setb al
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
loopne .bb_0.2
jmp .bb_0.3
.bb_0.2:
add al, 3
js .bb_0.3
jmp .exit_0
.bb_0.3:
sub dil, sil
xchg cl, cl
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ebx
sub cl, bl
xor cl, 78
or edx, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
