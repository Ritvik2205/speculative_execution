.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
sub bl, -6
and cl, -57
add dil, cl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
xchg edi, ebx
sbb dil, dil
and ax, 25351
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
