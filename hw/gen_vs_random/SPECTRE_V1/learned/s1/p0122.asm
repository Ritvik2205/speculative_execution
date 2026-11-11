.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dil, al
or al, 100
sub dl, -48
or ax, -114
lea rdx, qword ptr [rbx + rcx]
and dl, -111
sbb eax, -108
adc dl, al
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
sub cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
