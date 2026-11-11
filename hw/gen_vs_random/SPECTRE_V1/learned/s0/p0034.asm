.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -57 # instrumentation
cmovo rcx, rax
sub dil, cl
or ax, 19104
lea rdx, qword ptr [rcx + rax]
and rdi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdi]
adc eax, 1725322202
sub dil, -32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
