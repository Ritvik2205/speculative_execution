.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -22629
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dil
and cl, -57
add dil, -75
and rdx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
sub bl, cl
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
