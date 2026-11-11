.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -89
sub sil, -18
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 55
inc eax
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov bl, dl
lea rdx, qword ptr [rcx]
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
jp .bb_0.3
jmp .exit_0
.bb_0.3:
sbb edx, 105
adc bl, 102
lea bx, qword ptr [rcx]
sbb al, 118
sbb al, 33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
