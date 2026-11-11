.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
test cl, -120
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
js .bb_0.2
jmp .exit_0
.bb_0.2:
lea dx, qword ptr [rbx + rax]
adc bl, -73
or ebx, -124
sbb al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
