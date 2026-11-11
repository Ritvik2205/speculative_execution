.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc al
inc dl
sub cl, sil
add cl, cl
and rax, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rax]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and ax, 32540
sub al, -66
and cl, 86
cmp ax, 7046
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
sbb al, cl
test al, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
